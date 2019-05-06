using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Modulos : System.Web.UI.Page
    {
        ModuloController mod = new ModuloController();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                list_modulos.DataSource = mod.Traer_modulos();
                list_modulos.DataBind(); 

            }





        }

        public void Unnamed_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("eliminar"))
            {
                string idusu = (e.CommandArgument.ToString());

                if (mod.cambiar_estado_mod(idusu) == true)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('seguro de eliminar ');", true);
                    Response.Redirect("~/Views/Administrador/Modulos.aspx");

                }

            }


        }

        public void traer_usuario(object sender, CommandEventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('entro');", true);

            //if (e.CommandName.Equals("traer"))
            //{
            //    string idusu = (e.CommandArgument.ToString());
            //    Session["id_usu_act"] = idusu;

            //    Response.Redirect("~/Views/Administrador/Actualizar_usu_admin.aspx");



            //}

        }

        public void Registrar(object sender, EventArgs e)
        {

            ModuloController modito = new ModuloController(txt_Nombres.Text.ToString(),txt_Numero.Text.ToString());
            if ( mod.Insertar_mdulo(modito.mod)== true)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registro Correcto');", true);
                Response.Redirect("~/Views/Administrador/Modulos.aspx");


            }
            else
            {
                Response.Write("<script> alert('Algo salio mal' ); </script>");
                Response.Redirect("~/Views/Administrador/Modulos.aspx");
            }


        }



    }
}