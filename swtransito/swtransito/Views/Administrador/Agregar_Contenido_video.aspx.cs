﻿using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Agregar_Contenido_video : System.Web.UI.Page
    {

        TematicaController tem = new TematicaController();
        protected void Page_Load(object sender, EventArgs e)
        {

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

            }


        }



    }
}