using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class Actualizar_datos : System.Web.UI.Page
    {
        DataTable aux;
        DataRow dato;
        PersonaController per = new PersonaController();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                aux = per.consular_participante(Session["login"].ToString());

                if (aux.Rows.Count > 0)
                {


                    dato = aux.Rows[0];
                    txt_nombre.Text = dato["NombreS"].ToString();
                    txt_apellidos.Text = dato["Apellidos"].ToString();
                    txt_ecedula.Text = dato["cedula"].ToString();
                    txt_correo.Text = dato["correol"].ToString();
                    txt_contra.Text = dato["contrasena"].ToString();



                }



            }
        }





        public void Actualizar(object sender, EventArgs e)
        {


            try
            {

                if (per.update_participante(txt_nombre.Text, txt_apellidos.Text,txt_ecedula.Text, txt_correo.Text, txt_contra.Text, Session["login"].ToString()) == true)
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
