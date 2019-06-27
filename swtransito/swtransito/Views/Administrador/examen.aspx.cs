using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Administrador
{
    public partial class examen : System.Web.UI.Page
    {
        TematicaController tem = new TematicaController();
        ExamenController exa = new ExamenController();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                traer_tematica();
                list_examen.DataSource = exa.traer_examen();
                list_examen.DataBind();

            }





        }


        public void traer_tematica()
        {
            List_tipo.DataSource = tem.Traer_tematica_admin();
            List_tipo.DataTextField = "Nombre";
            List_tipo.DataValueField = "idTematica";
            List_tipo.DataBind();
        }

        public void Unnamed_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("eliminar"))
            {
                string idusu = (e.CommandArgument.ToString());

                if (exa.eliminar_examen(idusu) == true)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('seguro de eliminar ');", true);
                    Response.Redirect("~/Views/Administrador/examen.aspx");

                }

            }


        }

        public void traer_examen(object sender, CommandEventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('entro');", true);

            if (e.CommandName.Equals("traer"))
            {
                string idexam = (e.CommandArgument.ToString());
                Session["id_examen"] = idexam;

                Response.Redirect("~/Views/Administrador/Actualizar_examen.aspx");



            }

        }



        public void enviar_a_preguntas(object sender, CommandEventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('entro');", true);

            if (e.CommandName.Equals("traer"))
            {
                string idexam = (e.CommandArgument.ToString());
                Session["id_examen"] = idexam;

                Response.Redirect("~/Views/Administrador/add_preguntas.aspx");



            }

        }
        public void mostrar_preguntas(object sender, CommandEventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('entro');", true);

            if (e.CommandName.Equals("traer"))
            {
                string idexam = (e.CommandArgument.ToString());
                Session["id_examen"] = idexam;

                Response.Redirect("~/Views/Administrador/ver_preguntas.aspx");



            }

        }

        public void Registrar(object sender, EventArgs e)
        {
          try
            {

                int numero = Int32.Parse(exa.existe(List_tipo.Text.ToString()));
                if (numero==1)
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Esta tematica ya tiene examen');", true);


                }
                else
                {

                    if (exa.insert_exam(txt_examname.Text.ToString(), txt_examdis.Text.ToString(), txt_examdate.Text.ToString(), txt_examtotalpreguntas.Text.ToString(), List_tipo.Text.ToString(), txt_exammapasa.Text.ToString()) == true)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Registro Correcto');", true);
                        Response.Redirect("~/Views/Administrador/examen.aspx");
                    }



                }


               


            }
            catch
            {


            }




           


        }

    }
}