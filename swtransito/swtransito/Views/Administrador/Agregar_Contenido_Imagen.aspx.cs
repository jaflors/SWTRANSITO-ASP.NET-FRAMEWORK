using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Agregar_Contenido_Imagen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void Guardar_imagen(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("guardar"))
            {
                //string idtematia = (e.CommandArgument.ToString());



                //Session["id_tematica_admin"] = idtematia;

                //string nombre = tem.Traer_nombre_tematica(idtematia);
                //Session["nombre_tematica"] = nombre;

                Response.Redirect("~/Views/Administrador/Agregar_Contenido_Imagen.aspx");
            }

        }




    }
}