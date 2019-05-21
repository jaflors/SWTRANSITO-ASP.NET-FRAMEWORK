using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
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

                    //HtmlGenericControl div2 = new HtmlGenericControl("div");
                    //div2.InnerHtml = "<img src = '../../Imagenes/icono.png' class='img - responsive' style='width: 100px !important; height: 320px !important' alt='' />";
                    //div2.Attributes.Add("class", "item ");

                    Baner.Controls.Add(div);
                    //Baner.Controls.Add(div2);
                }

            }





        }
    }
}