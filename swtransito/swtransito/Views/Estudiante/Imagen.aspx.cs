using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class Imagen : System.Web.UI.Page
    {
        public DataTable dtimagen;
        public DataRow drimagen;
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {

                list_pdf.DataSource = tem.Traer_nombrepdf();
                list_pdf.DataBind();




                dtimagen = tem.Traer_Imagen_Banner(Session["id_tematica_estudiante"].ToString());
                for (int i = 0; i < dtimagen.Rows.Count; i++)
                {
                    drimagen = dtimagen.Rows[i];
                    HtmlGenericControl div = new HtmlGenericControl("div");

                    div.InnerHtml = "<img src = '" + drimagen["foto"] + "'/>";

                 if (i == 0)
                    {
                        div.Attributes.Add("class", "item active");

                    }
                    else
                    {
                        div.Attributes.Add("class", "item");

                    }
                      Baner.Controls.Add(div);
                   
                }

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