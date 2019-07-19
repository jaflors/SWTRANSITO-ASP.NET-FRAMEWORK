using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using swtransito.Models;


namespace swtransito.Views.Administrador
{
    public partial class Ejercicio : System.Web.UI.Page
    {
        public static string usu = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                usu = Session["login"].ToString();
            }
           
        }

        [WebMethod]
        public static string Ingreso(Ejercicio_mod obj_eje)
        {
            Ejercicio_mod ej = new Ejercicio_mod();
            return ej.insert_ejercicio(obj_eje, usu)==true ? "true" : "false";
        }
    }
}