using swtransito.Controllers;
using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Principal
{
    public partial class Login : System.Web.UI.Page
    {
        Persona usu = new Persona();
        PersonaController per = new PersonaController();
        DataRow dato;
        DataTable aux;
        public String mjs = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session["ENTRADA"] = "F";

            if (Session["login"] != null)
            {

                Response.Redirect("~/Views/Administrador/inicio.aspx");


            }
            else
            {
                if (Request.Params["wsp"] != null)
                {
                    String mensaje = Request.Params["wsp"];
                    if (mensaje == "1")
                    {

                        princesa.Text = " Por favor inicia sesión";

                    }
                }


            }
        }
        protected void Iniciar(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(Correo.Value.ToString()) && !String.IsNullOrEmpty(Contrasena.Value.ToString()))
                {

                    usu.p_correo = Correo.Value.ToString();
                    usu.p_contrasena = Contrasena.Value.ToString();
                    aux = usu.ConsultarCuenta(usu);

                    if (aux.Rows.Count > 0)
                    {
                        dato = aux.Rows[0];

                        Session["nombre"] = dato["Nombres"].ToString() + "  " + dato["Apellidos"];
                        Session["login"] = dato["idPersona"].ToString();
                      
                        int rol = Int32.Parse(per.consultar_id_rol(Session["login"].ToString()));

                        if (rol == 1)
                        {
                            Response.Redirect("~/Views/Administrador/inicio.aspx");
                        }
                        else
                        {
                            Response.Redirect("~/Views/Estudiante/inicio.aspx");
                        }



                    }
                    else
                    {
                       
                        Response.Write("<script> alert('VERIFIQUE SUS DATOS')</script> ");
                    }
                }
                else
                {
                  
                    Response.Write("<script> alert('CAMPOS NO PUEDEN SER VACIOS')</script> ");
                
                }


            }
            catch (Exception x)
            {
            }


        }






    }
}