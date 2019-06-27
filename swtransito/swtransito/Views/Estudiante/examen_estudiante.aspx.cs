using swtransito.Controllers;
using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class examen_estudiante : System.Web.UI.Page
    {
        DataTable aux;
        ExamenController ex = new ExamenController();
        Resultado resul = new Resultado();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                aux = ex.preguntas_estudiante(Session["id_examen_estu"].ToString());

                if (aux.Rows.Count > 0)
                {
                    gridview_examquestion.DataSource = aux;
                    gridview_examquestion.DataBind();


                }
                else
                {
                    Response.Write("<script> alert('el examen no tiene ppreguntas' ); </script>");
                }
            }


        }



        //decalring some varibles to exam marking 
        string result = string.Empty;
        
        int select_number = 0;
        int correct_number = 0;
        int wrong_number = 0;
     
        protected void btn_submit_Click(object sender, EventArgs e)
        {


            foreach (GridViewRow row in gridview_examquestion.Rows)
            {
                Label li = row.FindControl("lblid") as Label;
                RadioButton r1 = row.FindControl("option_one") as RadioButton;
                RadioButton r2 = row.FindControl("option_two") as RadioButton;
                RadioButton r3 = row.FindControl("option_three") as RadioButton;
                RadioButton r4 = row.FindControl("option_four") as RadioButton;

                if (r1.Checked == true)
                {
                    select_number = 1;
                }
                else if (r2.Checked == true)
                {
                    select_number = 2;
                }
                else if (r3.Checked == true)
                {
                    select_number = 3;
                }
                else if (r4.Checked == true)
                {
                    select_number = 4;
                }

                checkanwer(li.Text);

            }
            saveinresult(passfail(), correct_number, wrong_number,gridview_examquestion.Rows.Count);

        }



        //method for checking answer wheter it is right or wrong 
        public void checkanwer(string qid)
        {
             try
                {

                      string dato = ex.traer_respuestacorrecta(qid);
                      int respuesta = Int32.Parse(dato);

                        if (select_number == respuesta)
                        {

                            correct_number = correct_number + 1;
                           
                        }
                        else
                        {
                            wrong_number = wrong_number + 1;
                           
                        }
                   

                }
                catch (Exception ex)
                {
                    Response.Write("<script> alert('"+ex.Message+"' ); </script>");
                   
                }
        
        }


        //method for cheking if examinee pass or fail from the exam pass mark in database
        public string passfail()
        {
            string eid =  Session["id_examen_estu"].ToString();

            string numero = ex.traer_numero_pasar(eid);
            int pasa = Int32.Parse(numero);
                

                    if (correct_number >= pasa)
                    {

                        result = result + "Pass";

                    }
                    else
                    {
                        result = result + "Fail";
                       
                    }
                
            
            return result;
        }


        // method for  saving the result info in databse
        public void saveinresult(string status, int score,int malas, int tquestion)
        {

                try
                {
                if (resul.insertar_resultado(status,score,malas,tquestion, DateTime.Now.ToString(), Session["id_examen_estu"].ToString(), Session["login"].ToString()))
                {
                    Response.Write("<script> alert(' Examen guardado' ); </script>");
                }
                  
                }
                catch (Exception ex)
                {
                Response.Write("<script> alert('" + ex.Message + "' ); </script>");
            }
            
        }









    }
}