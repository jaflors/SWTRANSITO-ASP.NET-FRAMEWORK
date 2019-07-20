using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Result : System.Web.UI.Page
    {
        ResultadoController res = new ResultadoController();
        ExamenController ex = new ExamenController();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {



                traer_exam();
            }

        }

        public void traer_exam()
        {
            List_exa.DataSource = ex.traer_examen_show_result();
            List_exa.DataTextField = "nombre";
            List_exa.DataValueField = "idexamen";
            List_exa.DataBind();
        }




        public void Button_Click(Object sender, EventArgs e)
        {
            list_result.DataSource = res.traer_resultadoadmin(List_exa.Text);
            list_result.DataBind();


        }



    }
}