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
    public partial class Actualizar_tematica : System.Web.UI.Page
    {

        TematicaController tem = new TematicaController();
        public DataTable aux;

        public DataRow dato;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                traer_tipo();
                aux = tem.traer_info_tematica(Session["id_tematica"].ToString());

                if (aux.Rows.Count > 0)
                {


                    dato = aux.Rows[0];

                    txt_Nombres.Text = dato["Nombre"].ToString();
                    txt_Numero.Text = dato["Numero"].ToString();
                   


                }

            }
        }

        public void traer_tipo()
        {
            List_tipo.DataSource = tem.traer_tipo();
            List_tipo.DataTextField = "Nombre";
            List_tipo.DataValueField = "idTipo";
            List_tipo.DataBind();
        }


        public void Selection_Change(Object sender, EventArgs e)
        {

            
                System.Drawing.Color.FromName(ColorList.SelectedItem.Value);

        }

        public void Modificar(object sender, EventArgs e)
        {




            try
            {
                if (tem.Actualizar_tematica(txt_Nombres.Text, txt_Numero.Text,ColorList.Text,List_tipo.Text, Session["id_tematica"].ToString()) == true)
                {
                    Response.Write("<script> alert('Actualización correcta')</script> ");
                 
                    
                }


            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "' ); </script>");
            }







        }





    }
}