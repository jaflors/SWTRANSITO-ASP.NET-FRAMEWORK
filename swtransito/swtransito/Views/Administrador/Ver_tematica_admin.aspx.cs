using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Ver_tematica_admin : System.Web.UI.Page
    {
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            list_tematicas.DataSource = tem.Traer_tematica_admin();
            list_tematicas.DataBind();



        }


        public void Unnamed_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("traer"))
            {
                string idtematia = (e.CommandArgument.ToString());



                Session["id_tematica_admin"] = idtematia;

                string nombre = tem.Traer_nombre_tematica(idtematia);
                Session["nombre_tematica"] = nombre;

                string tipo_tematica = tem.traer_tipo_idtem(idtematia);
                int tipo = Convert.ToInt32(tipo_tematica.ToString());

                if (tipo==1)
                {
                    Response.Redirect("~/Views/Administrador/Agregar_Contenido_Imagen.aspx");
                }else if (tipo ==2)
                {

                    Response.Redirect("~/Views/Administrador/Agregar_Contenido_video.aspx");

                }




               
            }

        }

















    }
}