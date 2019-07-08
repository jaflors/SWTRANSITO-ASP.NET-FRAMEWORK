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
    public partial class info_pregunta : System.Web.UI.Page
    {
        DataTable aux;
        DataRow dato;
        ExamenController ex = new ExamenController();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                aux = ex.info_preguntas(Session["id_pregunta"].ToString());

                if (aux.Rows.Count > 0)
                {
                    dato = aux.Rows[0];

                    txt_optionone.Text = dato["enunciado"].ToString();
                    txt_optiontwo.Text = dato["opc1"].ToString();
                    TextBox1.Text= dato["opc2"].ToString();
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





    }
}