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



        public void Actualizar(object sender, EventArgs e)
        {
            int numero = int.Parse(List_tipo.Text);

            try
            {
                if (numero == -1)
                {
                    Response.Write("<script> alert('Selecione una Tematica')</script> ");
                }
                else
                {

                    if (ex.Actualizar_examen(txt_examname.Text, txt_examdis.Text, txt_examdate.Text, txt_examtotalpreguntas.Text, List_tipo.Text, txt_exammapasa.Text, Session["id_examen"].ToString()) == true)
                    {
                        Response.Write("<script> alert('Actualización correcta')</script> ");


                    }
                    else
                    {
                        Response.Write("<script> alert('No se pudo actualizar')</script> ");
                    }
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "' ); </script>");
            }



        }


    }
}