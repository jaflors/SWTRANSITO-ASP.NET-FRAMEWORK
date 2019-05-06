using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

namespace swtransito.Controllers
{
    public class MenuController
    {
        public void CargarMenu(string Login, HtmlGenericControl MenuGeneral)
        {
             PersonaController usu = new PersonaController();
            DataTable aux,aux2;
            DataRow dato,dato2;
            Persona Usuari = new Persona();
            DataTable Data = Usuari.consultarMenu(Login);
            aux = Usuari.Consultarnombre(Login);
            aux2 = usu.consultarNombreRol(Login);
            dato = aux.Rows[0];
            dato2 = aux2.Rows[0];

            string Nombre1  = dato["nombres"].ToString();
            string NombreRol = dato2["NombreRol"].ToString();


            List<Menu> Nivel = new List<Menu>();
            //CREAR MENUS GENERALES
            DataTable First_Level = Data.AsEnumerable().Select(row =>
            {
                DataRow newRow = Data.NewRow();
                newRow["Titulo"] = row.Field<string>("Titulo");
                newRow["Icono"] = row.Field<string>("Icono");
                newRow["idMenu"] = row.Field<Int32>("idMenu");
                return newRow;
            }).Distinct(DataRowComparer.Default).CopyToDataTable();

            foreach (DataRow it in First_Level.Rows)
                Nivel.Add(new Menu(it));
            int index;
            //ASIGNAR VISTAS A MENUS
            foreach (DataRow it in Data.Rows)
            {

                index = IsMenu(it, Nivel, "menu_idmenu");
                Nivel[index].vistas.Add(new vista(it));

            }
            //CREAR MENU
            HtmlGenericControl ULMENU = new HtmlGenericControl("ul");
            ULMENU.Attributes.Add("class", "sidebar-menu");
            ULMENU.Attributes.Add("id", "nav-accordion");
            HtmlGenericControl p = new HtmlGenericControl("p");
            p.Attributes.Add("class", "centered");
            p.InnerHtml = "<a href='profile.html'><img src='../../lesser/images/sena.jpg' class='img-circle' width='60'></a>";
            HtmlGenericControl h5 = new HtmlGenericControl("h5");
            h5.Attributes.Add("class", "centered");
            HtmlGenericControl h6 = new HtmlGenericControl("h6");
            h6.Attributes.Add("class", "centered");

            h5.InnerHtml = Nombre1;
            h6.InnerHtml = NombreRol;
            HtmlGenericControl li1 = new HtmlGenericControl("li");
            HtmlGenericControl a1 = new HtmlGenericControl("a");
            li1.Attributes.Add("class", "mt");
            a1.Attributes.Add("class", "active");
            a1.InnerHtml = "<i class='fa fa-dashboard'></i><span> Dashboard </span> ";
            a1.Attributes.Add("href", "inicio.aspx");
            li1.Controls.Add(a1);

            ULMENU.Controls.Add(p);
            ULMENU.Controls.Add(h5);
            ULMENU.Controls.Add(h6);
            ULMENU.Controls.Add(li1);

            MenuGeneral.Controls.Add(ULMENU);
           

            foreach (Menu it in Nivel)
            {
                ULMENU.Controls.Add(it.CrearMenu());
            }
        }
        public bool IsCero(DataRow it, string Name)
        {
            if (it[Name].ToString().Equals("0"))
                return true;
            else return false;
        }


        public int IsMenu(DataRow row, List<Menu> menus, string Name)
        {
            int index = 0, ID = Convert.ToInt32(row[Name].ToString());
            foreach (Menu it in menus)
            {
                if (it.id == ID)
                    return index;
                index++;
            }
            return -1;
        }
    }

    public class Menu
    {
        public int id;
        public string Nombre;
        public string Icono;

        public List<vista> vistas = new List<vista>();

        public Menu(DataRow it)
        {
            this.id = Convert.ToInt32(it["idMenu"].ToString());
            this.Nombre = it["Titulo"].ToString();
            this.Icono = it["Icono"].ToString();
        }

        public HtmlGenericControl CrearMenu()
        {
            HtmlGenericControl li = new HtmlGenericControl("li");
            HtmlGenericControl a = new HtmlGenericControl("a");
            HtmlGenericControl ul = new HtmlGenericControl("ul");
            
            li.Attributes.Add("class", "sub-menu dcjq-parent-li");
            a.Attributes.Add("class", "dcjq-parent");
            a.InnerHtml = "<i class='" + Icono + "'></i>" + Nombre + "<span class='dcjq-icon'></span>";
            a.Attributes.Add("href", "#");

            ul.Attributes.Add("class", "sub");
            ul.Attributes.Add("style", "overflow: hidden; display: none;");


            foreach (vista it in vistas)
            {
                ul.Controls.Add(it.CrearVista());
            }

            li.Controls.Add(a);
            li.Controls.Add(ul);
            return li;
        }
    }



    public class vista
    {
        public int padre;
        public string nombre;
        public string icono;
        public string url;

        public vista(DataRow it)
        {
            this.padre = Convert.ToInt32(it["menu_idmenu"].ToString());
            this.nombre = it["nombre"].ToString();
            this.icono = it["icono1"].ToString();
            this.url = it["url"].ToString();
        }
        public HtmlGenericControl CrearVista()
        {
            HtmlGenericControl li = new HtmlGenericControl("li");
            HtmlGenericControl a = new HtmlGenericControl("a");

            a.InnerHtml = "<i class='" + icono + "'></i>" + nombre;
            a.Attributes.Add("href", Convert.ToString(url));

            li.Controls.Add(a);
            return li;
        }
    }
}