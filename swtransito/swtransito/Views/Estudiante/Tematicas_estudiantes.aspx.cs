﻿using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class Tematicas_estudiantes : System.Web.UI.Page
    {
        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            list_tematicas.DataSource = tem.Traer_modulos_estudiante();
            list_tematicas.DataBind();


        }


        public void ver_contenido(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("ingresar"))
            {
                string idtematia = (e.CommandArgument.ToString());



                Session["id_tematica_estudiante"] = idtematia;

                //string nombre = tem.Traer_nombre_tematica(idtematia);
                //Session["nombre_tematica"] = nombre;

                Response.Redirect("~/Views/Estudiante/Imagen.aspx");







            }

        }

    }
}