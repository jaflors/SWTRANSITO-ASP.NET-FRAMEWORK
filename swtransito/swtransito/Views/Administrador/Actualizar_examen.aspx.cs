using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Actualizar_examen : System.Web.UI.Page
    {
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            traer_tematica();
        }


        public void traer_tematica()
        {
           
            List_tipo.DataSource = tem.Traer_tematica_admin();
            List_tipo.DataTextField = "Nombre";
            List_tipo.DataValueField = "idTematica";
            List_tipo.DataBind();
            ListItem li = new ListItem("Select Tematica", "-1");
            List_tipo.Items.Insert(0, li);
        }



        public void Registrar(object sender, EventArgs e)
        {

          


            //try
            //{
            //    if (exa.insert_exam(txt_examname.Text.ToString(), txt_examdis.Text.ToString(), txt_examdate.Text.ToString(), txt_examtotalpreguntas.Text.ToString(), List_tipo.Text.ToString(), txt_exammapasa.Text.ToString()) ==true)
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registro Correcto');", true);
            //        Response.Redirect("~/Views/Administrador/examen.aspx");
            //    }


            //}
            //catch
            //{


            //}




           


        }


    }
}