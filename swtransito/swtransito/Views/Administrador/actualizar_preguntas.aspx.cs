using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class actualizar_preguntas : System.Web.UI.Page
    {
        DataTable aux;
        DataRow dato;
        ExamenController ex = new ExamenController();
        string cont;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                aux = ex.info_preguntas(Session["id_pregunta"].ToString());

                if (aux.Rows.Count > 0)
                {
                    dato = aux.Rows[0];
                    Session["conta"] = dato["cont"].ToString();
                    txt_optionone.Text = dato["enunciado"].ToString();
                    txt_optiontwo.Text = dato["opc1"].ToString();
                    TextBox1.Text = dato["opc2"].ToString();
                    txt_optionfourt.Text = dato["opc3"].ToString();
                    txt_questionname.Text = dato["opc4"].ToString();
                    rdo_correctanswer.Text = dato["respuesta"].ToString();


                }
                else
                {
                    Response.Write("<script> alert('algio salio mal' ); </script>");
                }


            }


        }





        public void Actualizar(object sender, EventArgs e)
        {


            try
            {


                if (ex.Actualizar_preguntas(Session["conta"].ToString(), txt_optionone.Text, txt_optiontwo.Text, TextBox1.Text, txt_optionfourt.Text, txt_questionname.Text, rdo_correctanswer.Text, Session["id_pregunta"].ToString()) == true)
                {
                    Response.Write("<script> alert('Actualización correcta')</script> ");


                }
                else
                {
                    Response.Write("<script> alert('No se pudo actualizar')</script> ");
                }


            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "' ); </script>");
            }



        }


    }
}