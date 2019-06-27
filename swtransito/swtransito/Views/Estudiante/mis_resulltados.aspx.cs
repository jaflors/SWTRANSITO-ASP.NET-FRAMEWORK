using swtransito.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swtransito.Views.Estudiante
{
    public partial class mis_resulltados : System.Web.UI.Page
    {
        ResultadoController res = new ResultadoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getmyresults(Session["login"].ToString());
            }
        }


        public void getmyresults(string id)
        {
           
                try
                {
                DataTable dt = new DataTable();
                dt = res.traer_resultado(id);
                            if (dt != null)
                            {
                                gridmyresult.DataSource =dt;
                                gridmyresult.DataBind();
                            }
                            else
                            {
                                 Response.Write("<script> alert('Sorry! There is no result of your in this application' ); </script>");
                    
                            }
                        
                    

                }
                catch (Exception ex)
                {
                Response.Write("<script> alert('"+ex.Message+"' ); </script>");

                
                }
            }
        

        protected void gridmyresult_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //gridmyresult.PageIndex = e.NewPageIndex;
            //getmyresults(getemail.Text);
        }
    }
}