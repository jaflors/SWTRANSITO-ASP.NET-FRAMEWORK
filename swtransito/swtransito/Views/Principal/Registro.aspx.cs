using swtransito.Controllers;
using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Principal
{
    public partial class Registro : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Persona p = new Models.Persona();
            var r = p.Consulta();


        }


        protected void Registrar(object sender, EventArgs e)
        {





            try
            {
                PersonaController usu = new PersonaController(Nombres.Value.ToString(), Apellidos.Value.ToString(),
                cedula.Value.ToString(), Correo.Value.ToString(), Contrasena.Value.ToString(), Recontrasena.Value.ToString());

               
                   

                        if (usu.Insertar(usu.usu) == true)
                        {

                          Response.Write("<script> alert('Usuario Registrado' ); </script>");

                           Nombres.Value = " ";
                           Apellidos.Value = "";
                           cedula.Value = "";
                           Correo.Value = "";

                           return;
                   

                        }
                        else
                        {
                                Response.Write("<script> alert('Algo salio mal' ); </script>");
                                Response.Redirect("~/Views/Principal/Registro.aspx");
                        }

                   


                

                //string aux = usu.Insertar(usu.usu);
                //Response.Write("<script> alert('" + aux + "'); </script>");
                //Response.Redirect("Login.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script> alert('ERROR INESPERADO' ); </script>");
            }






        }





    }
}