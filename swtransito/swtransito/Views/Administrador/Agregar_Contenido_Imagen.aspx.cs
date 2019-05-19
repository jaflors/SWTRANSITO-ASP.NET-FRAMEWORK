using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Agregar_Contenido_Imagen : System.Web.UI.Page
    {
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void Guardar_imagen(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("guardar"))
            {


                try
            {
                    

                    if (file_contenido != null)
                    {
                        if (ModelState.IsValid)
                        {
                            string img = Path.GetFileName(file_contenido.FileName);
                            string ruta = "../../imagenes/" + img;

                            string carpeta = Path.Combine(Server.MapPath("~/imagenes"), img);

                            if (tem.Insertar_imagen( ruta, Session["id_tematica_admin"].ToString()) == true)
                            {
                                file_contenido.SaveAs(carpeta);

                                Response.Write("<script> alert('imagen guardada' ); </script>");
                                //Response.Redirect("~/Views/Administrador/Registrar_barberia.aspx");

                            }
                            else
                            {

                                Response.Redirect("~/Views/Administrador/Registrar_barberia.aspx");
                            }

                        }
                        else
                        {

                            Response.Redirect("~/Views/Administrador/Registrar_barberia.aspx");
                        }


                    }
                    else
                    {

                        Response.Redirect("~/Views/Administrador/Registrar_barberia.aspx");
                    }


                }
            catch (Exception)
                {
                    Response.Write("<script> alert('ERROR INESPERADO' ); </script>");
                }



                //string idtematia = (e.CommandArgument.ToString());



                //Session["id_tematica_admin"] = idtematia;

                //string nombre = tem.Traer_nombre_tematica(idtematia);
                //Session["nombre_tematica"] = nombre;

                Response.Redirect("~/Views/Administrador/Agregar_Contenido_Imagen.aspx");
            }

        }




    }
}