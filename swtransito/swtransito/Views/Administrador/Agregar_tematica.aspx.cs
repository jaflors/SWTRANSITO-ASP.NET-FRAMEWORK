using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Agregar_tematica : System.Web.UI.Page
    {
      
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                traer_tipo();
                list_tematicas.DataSource = tem.Traer_tematicas();
                list_tematicas.DataBind();

            }





        }


        public void traer_tipo()
        {
            List_tipo.DataSource = tem.traer_tipo();
            List_tipo.DataTextField = "Nombre";
            List_tipo.DataValueField = "idTipo";
            List_tipo.DataBind();
        }

        public void Unnamed_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("eliminar"))
            {
                string idusu = (e.CommandArgument.ToString());

                if (tem.cambiar_estado_tem(idusu) == true)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('seguro de eliminar ');", true);
                    Response.Redirect("~/Views/Administrador/Agregar_tematica.aspx");

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

            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registro Correcto');", true);

            TematicaController temati = new TematicaController(txt_Nombres.Text.ToString(), txt_Numero.Text.ToString());
            if (tem.Insertar_tematicas(temati.tem, List_tipo.Text.ToString()) == true)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registro Correcto');", true);
                Response.Redirect("~/Views/Administrador/Agregar_tematica.aspx");


            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Algo salio mal');", true);
                Response.Redirect("~/Views/Administrador/Agregar_tematica.aspx");
            }


        }

    }
}