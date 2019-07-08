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
        public string buenas, erroneas, estado, tipo;
        int existe;
        DataTable aux;
        public DataRow dr;
        ExamenController ex = new ExamenController();
        Resultado resul = new Resultado();
        protected void Page_Load(object sender, EventArgs e)
        {
            tipo = Request.QueryString["tipo"];
            if (!IsPostBack) {

                if (tipo != null)
                {
                    string aux2 = ex.traer_descripcion(Session["id_examen_estu"].ToString());
                    if (aux2 != null)
                    {

                        lb_instru.Text = aux2.ToString();

                    }
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

                }else
                {

                    existe = Int32.Parse(resul.preguntar_ifex_resultado(Session["login"].ToString(), Session["id_examen_estu"].ToString()));

                    if (existe == 1)
                    {
                        ScriptManager.RegisterStartupScript(this.Page, GetType(), "script", "pregunta();", true);
                    }else
                    {


                        string aux2 = ex.traer_descripcion(Session["id_examen_estu"].ToString());
                        if (aux2 != null)
                        {
                            lb_instru.Text = aux2.ToString();

                        }


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

             


            }


        }
        protected void Repetir (object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Estudiante/examen_estudiante.aspx");
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


            if (tipo != null)
            {
                updateresult(passfail(), correct_number, wrong_number, gridview_examquestion.Rows.Count);
            }
            else
            {
                saveinresult(passfail(), correct_number, wrong_number, gridview_examquestion.Rows.Count);
            }
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

                        result = result + "APROBADO";

                    }
                    else
                    {
                        result = result + "REPROBADO";
                       
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



                    buenas = score.ToString();
                    erroneas = malas.ToString();
                    estado = status.ToString();

                    ScriptManager.RegisterStartupScript(this.Page, GetType(), "script", "resultado();", true);
                }
             
                }
                catch (Exception ex)
                {
                Response.Write("<script> alert('" + ex.Message + "' ); </script>");
            }
            
        }

        // method for update register of base of date the resultd
        public void updateresult(string status, int score, int malas, int tquestion)
        {

            try
            {
                if (resul.actualizar_resultado(status, score, malas, tquestion, DateTime.Now.ToString(), Session["id_examen_estu"].ToString(), Session["login"].ToString()))
                {



                    buenas = score.ToString();
                    erroneas = malas.ToString();
                    estado = status.ToString();

                    ScriptManager.RegisterStartupScript(this.Page, GetType(), "script", "resultado();", true);
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "' ); </script>");
            }

        }









    }
}