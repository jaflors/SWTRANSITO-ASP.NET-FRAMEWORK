﻿using swtransito.Controllers;
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
    public partial class Agregar_Contenido_Imagen : System.Web.UI.Page
    {
        TematicaController tem = new TematicaController();

        DataTable  DatRol;
        protected void Page_Load(object sender, EventArgs e)
        {

            list_imagen.DataSource = tem.Traer_imagen_admin(Session["id_tematica_admin"].ToString());
            DatRol = tem.Traer_imagen_admin(Session["id_tematica_admin"].ToString());
            list_imagen.DataBind();
            if (DatRol.Rows.Count ==0)
            {
                string frase = "No  hay contenido ";

                HtmlGenericControl tr= new HtmlGenericControl("tr");
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

                if (tem.eliminar_imagen_admin(idusu) == true)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('seguro de eliminar ');", true);
                    Response.Redirect("~/Views/Administrador/Agregar_Contenido_Imagen.aspx");

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