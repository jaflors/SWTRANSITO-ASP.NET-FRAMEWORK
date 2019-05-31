using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class contenido_video : System.Web.UI.Page
    {
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                list_pdf.DataSource = tem.Traer_nombrepdf(Session["id_tematica_estudiante"].ToString());
                list_pdf.DataBind();


            }



        }


        public void descargar_pdf(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("traer"))
            {

                string id = (e.CommandArgument.ToString());

                string filename = tem.Traer_nombrepdf_id(id);

                Response.Clear();

                Response.AddHeader("content-disposition", string.Format("attachment;filename={0}", filename));
                Response.ContentType = "application/pdf";

                Response.WriteFile(Server.MapPath(Path.Combine("~/pdf", filename)));

                Response.End();



            }

        }







    }
}