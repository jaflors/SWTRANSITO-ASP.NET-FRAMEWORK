using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class ver_preguntas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ExamenController exa = new ExamenController();

            if (!IsPostBack)
            {


                list_preguntas.DataSource = exa.traer_preguntas_id(Session["id_examen"].ToString());
                list_preguntas.DataBind();

            }



        }
        public void ver_pregunta(object sender, CommandEventArgs e)
        {

            if (e.CommandName.Equals("traer"))
            {
                string idexam = (e.CommandArgument.ToString());
                Session["id_pregunta"] = idexam;

                Response.Redirect("~/Views/Administrador/info_pregunta.aspx");
            }


        }





        public void traer_examen(object sender, CommandEventArgs e)
        {


            if (e.CommandName.Equals("traer"))
            {
                string idexam = (e.CommandArgument.ToString());
                Session["id_pregunta"] = idexam;

                Response.Redirect("~/Views/Administrador/actualizar_preguntas.aspx");
            }




        }




    }
}