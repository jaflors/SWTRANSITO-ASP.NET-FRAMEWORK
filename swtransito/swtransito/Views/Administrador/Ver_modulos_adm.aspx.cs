using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Agregar_Tematica : System.Web.UI.Page
    {
       

        ModuloController mod = new ModuloController();
        protected void Page_Load(object sender, EventArgs e)
        {
            list_modulos.DataSource = mod.Traer_modulos_admin();
            list_modulos.DataBind();



        }


        public void Unnamed_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("traer"))
            {
                string idmodulo = (e.CommandArgument.ToString());

                

                Session["id_modulo_admin"] = idmodulo;

                string nombre = mod.Traer_nombre_monulo(idmodulo);
                Session["nombre_modulo"] = nombre;

                Response.Redirect("~/Views/Administrador/Agregar_tematica.aspx");
            }

        }






    }
}