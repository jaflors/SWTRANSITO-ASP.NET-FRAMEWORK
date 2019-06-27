using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class ver_examenes : System.Web.UI.Page
    {
        ExamenController exa = new ExamenController();
        protected void Page_Load(object sender, EventArgs e)
        {
            list_examenes.DataSource = exa.info_examen_estudiante();
            list_examenes.DataBind();


        }


        public void ver_contenido(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("ingresar"))
            {
                string idexam = (e.CommandArgument.ToString());

                Session["id_examen_estu"] = idexam;

                Response.Redirect("~/Views/Estudiante/examen_estudiante.aspx");
            }



            }

        }
    }
