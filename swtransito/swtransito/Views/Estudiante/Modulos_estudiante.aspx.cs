using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class Modulos : System.Web.UI.Page
    {
        ModuloController mod = new ModuloController();
        protected void Page_Load(object sender, EventArgs e)
        {
            list_modulos.DataSource = mod.Traer_modulos();
            list_modulos.DataBind();



        }

        



    }
}