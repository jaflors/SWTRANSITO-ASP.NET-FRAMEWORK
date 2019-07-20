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

namespace swtransito.Views.Administrador
{
    public partial class Agregar_Contenido_video : System.Web.UI.Page
    {
        DataTable DatRol;
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {


            list_imagen.DataSource = tem.traer_video_admin(Session["id_tematica_admin"].ToString());
            DatRol = tem.traer_video_admin(Session["id_tematica_admin"].ToString());
            list_imagen.DataBind();
            if (DatRol.Rows.Count == 0)
            {
                string frase = "No  hay contenido ";

                HtmlGenericControl tr = new HtmlGenericControl("tr");
                HtmlGenericControl td = new HtmlGenericControl("td");
                td.InnerHtml = frase;
                tr.Controls.Add(td);
                list_imagen.Controls.Add(tr);



            }


        }


        public void Unnamed_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("eliminar"))
            {
                string idusu = (e.CommandArgument.ToString());

                if (tem.eliminar_video_admin(idusu) == true)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('seguro de eliminar ');", true);
                    Response.Redirect("~/Views/Administrador/Agregar_Contenido_video.aspx");

                }

            }


        }

        public void traer_usuario(object sender, CommandEventArgs e)
        {
            //if (e.CommandName.Equals("traer"))
            //{
            //    string idusu = (e.CommandArgument.ToString());

            //    if (tem.cambiar_estado_tem(idusu) == true)
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('seguro de eliminar ');", true);
            //        Response.Redirect("~/Views/Administrador/Agregar_-tematica.aspx");

            //    }

            //}


        }





        public void Guardar_video(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("guardar"))
            {


                if (tem.inster_video(txt_url.Text.ToString(), Session["id_tematica_admin"].ToString()) == true)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('registrado');", true);
                    Response.Redirect("~/Views/Administrador/Agregar_Contenido_video.aspx");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('algo salio mal');", true);

                }

            }


        }



        public void Guardar_pdf(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("guardar"))
            {
                try
                {

                    if (file_PDF != null)
                    {
                        if (ModelState.IsValid)
                        {
                            string img = Path.GetFileName(file_PDF.FileName);
                            string ruta = "../../pdf/" + img;

                            string carpeta = Path.Combine(Server.MapPath("~/pdf"), img);


                            if (file_PDF.PostedFile.ContentType == "application/pdf")
                            {
                                if (tem.Insertar_pdf(ruta, Session["id_tematica_admin"].ToString()) == true)
                                {
                                    file_PDF.SaveAs(carpeta);

                                    Response.Write("<script> alert('pdf guardado' ); </script>");
                                    Response.Redirect("~/Views/Administrador/Agregar_Contenido_video.aspx");

                                }
                                else
                                {

                                    Response.Write("<script> alert('no funciona procedimiento' ); </script>");
                                }



                            }
                            else
                            {

                                Response.Write("<script> alert('El archivo no es compatible' ); </script>");

                            }



                        }
                        else
                        {
                            Response.Write("<script> alert('selecciona archivo PDF' ); </script>");

                        }


                    }
                    else
                    {

                        Response.Write("<script> alert('selecciona archivo PDF' ); </script>");
                    }
                   }
                catch (Exception)
                {
                    Response.Write("<script> alert('ERROR INESPERADO' ); </script>");
                }


            }

        }



    }
}