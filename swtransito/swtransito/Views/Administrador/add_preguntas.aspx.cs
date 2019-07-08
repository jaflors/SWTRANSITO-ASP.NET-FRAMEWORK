using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class add_preguntas : System.Web.UI.Page
    {
        ExamenController exa = new ExamenController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Registrar(object sender, EventArgs e)
        {




            try
            {
                int contador;
                string num = exa.traer_numero(Session["id_examen"].ToString());
                if (num== "")
                {
                    contador = 1;
                }else
                {
                    contador = Int32.Parse(num);
                    contador = contador + 1;
                   

                }
                string num2 = exa.numero_preguntas_examen(Session["id_examen"].ToString());
                int numero_preguntas = Int32.Parse(num2);

                if (contador>numero_preguntas)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Numero maximo de preguntas');", true);
                    txt_optionone.Text = "";
                    txt_optiontwo.Text = "";
                    txt_optionthree.Text = "";
                    txt_optionfour.Text = "";
                    txt_questionname.Text = "";
                    rdo_correctanswer.Text = "";
                }
                else
                {
                    if (exa.insert_preguntas(txt_questionname.Text.ToString(), contador, txt_optionone.Text.ToString(), txt_optiontwo.Text.ToString(), txt_optionthree.Text.ToString(), txt_optionfour.Text.ToString(), rdo_correctanswer.Text.ToString(), Session["id_examen"].ToString()) == true)
                    {

                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registro Correcto');", true);
                        txt_optionone.Text = "";
                        txt_optiontwo.Text = "";
                        txt_optionthree.Text = "";
                        txt_optionfour.Text = "";
                        txt_questionname.Text = "";
                        rdo_correctanswer.Text = "";
                    }
                }


               


            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('"+ex.Message+"' ); </script>");

            }







        }


    }
}