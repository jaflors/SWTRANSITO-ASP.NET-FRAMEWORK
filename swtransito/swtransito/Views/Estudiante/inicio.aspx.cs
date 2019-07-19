using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class inicio : System.Web.UI.Page
    {
        InicioModel ini = new InicioModel();
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
    }
}