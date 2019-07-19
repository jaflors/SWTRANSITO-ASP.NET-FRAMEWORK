using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using swtransito.Models;
using System.Data;
using Construccion2.Models.Clase;
using System.Web.Http;

namespace swtransito.Views.Administrador
{
    public partial class MostrarRespuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string consult_all()
        {
            Ejercicio_mod ej = new Ejercicio_mod();
            Objeto_Consumir obj = new Objeto_Consumir();
            return obj.convertirJsontoString(ej.Consultar_all());
        }
        [WebMethod]
        public static string consult_id(Ejercicio_mod obj_eje)
        {
            Ejercicio_mod ej = new Ejercicio_mod();
            Objeto_Consumir obj = new Objeto_Consumir();
            return obj.convertirJsontoString(ej.Consultar_id(obj_eje.id_pe));
        }
    }
}