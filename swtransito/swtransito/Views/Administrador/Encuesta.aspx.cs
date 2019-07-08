using Construccion2.Models.Clase;
using Newtonsoft.Json;
using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Encuesta : System.Web.UI.Page
    {
        private static string usu="";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["login"] != null)
                {
                    usu = Session["login"].ToString();
                }
            }
            catch {
                Response.Redirect("~/Views/Administrador/inicio.aspx");
            }
          
        }

        [WebMethod]
        public static string insertar(object json)
        {
            EncuestaModel en = new EncuestaModel();
            //Objeto_Consumir obj = new Objeto_Consumir();
            
            var js = new JavaScriptSerializer().Serialize(json);
            //string a = obj.convertirJsontoString(js);
            List<string> lst = new List<string>();
            json.GetType().GetProperties();
            try
            {
                //for (int i = 0; i < lst.Count; i++)
                //{
                //    EncuestaModel en2 = new EncuestaModel();
                //    en2.id = lst[i].DEPORTISTA;
                //    en2.valor = lst[i].TISEDE_ID;
                    
                //    en.insert_encuesta(en2,usu);
                //}
                return "entra";
            }
            catch (Exception e)
            {
                return "no";
            }
        }
    }
}