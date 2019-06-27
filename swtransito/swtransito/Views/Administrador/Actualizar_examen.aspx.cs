using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class Actualizar_examen : System.Web.UI.Page
    {
        DataTable aux;
        DataRow dato;
        TematicaController tem = new TematicaController();
        ExamenController ex = new ExamenController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                traer_tematica();

                aux = ex.traer_examen_id(Session["id_examen"].ToString());

                if (aux.Rows.Count > 0)
                {


                    dato = aux.Rows[0];
                    txt_examname.Text = dato["nombre"].ToString();
                    txt_examdis.Text = dato["descripcion"].ToString();
                    string fecha = dato["fecha"].ToString();
                    //List li = new ListItem(fecha, "-1");
                    txt_examdate.Text.Insert(0, fecha);
                    txt_examtotalpreguntas.Text = dato["numero_preguntas"].ToString();
                    txt_exammapasa.Text = dato["aprueba_con"].ToString();


                }



            }
        }


        public void traer_tematica()
        {
           
            List_tipo.DataSource = tem.Traer_tematica_admin();
            List_tipo.DataTextField = "Nombre";
            List_tipo.DataValueField = "idTematica";
            List_tipo.DataBind();
            ListItem li = new ListItem("Select Tematica", "-1");
            List_tipo.Items.Insert(0, li);
        }



        public void Registrar(object sender, EventArgs e)
        {

          


            //try
            //{
            //    if (exa.insert_exam(txt_examname.Text.ToString(), txt_examdis.Text.ToString(), txt_examdate.Text.ToString(), txt_examtotalpreguntas.Text.ToString(), List_tipo.Text.ToString(), txt_exammapasa.Text.ToString()) ==true)
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registro Correcto');", true);
            //        Response.Redirect("~/Views/Administrador/examen.aspx");
            //    }


            //}
            //catch
            //{


            //}




           


        }


    }
}