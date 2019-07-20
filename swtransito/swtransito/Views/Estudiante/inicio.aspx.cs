using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class inicio : System.Web.UI.Page
    {
        InicioModel ini = new InicioModel();
        static events obj = new events();
        public string tematicas, examen, compas, ejer;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                tematicas = ini.numero_tematicas();
                examen = ini.numero_examen();
                compas = ini.numero_compañeros();
                ejer = ini.numero_ejercicio();


            }

        
        }
        [WebMethod(EnableSession = true)]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<events> GetEvents()
        {
           

            DataTable dt = obj.TraerEvento();
            List<events> eve = new List<events>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                events a = new events();
              
                a.Subject = Convert.ToString(dt.Rows[i]["nombre"].ToString());
                
                a.Start = Convert.ToDateTime(dt.Rows[i]["fecha"].ToString());
              




                eve.Add(a);
            }

            return eve;
        }




    }
}