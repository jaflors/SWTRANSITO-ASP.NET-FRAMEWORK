using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Controllers
{
    public class ExamenController
    {

        Examen ex = new Examen();

   public bool insert_exam(string a, string b, string c, string d, string e, string f)
        {
            return ex.insertar_exam(a,b,c,d,e,f);
        }

        public DataTable traer_examen()
        {
            return ex.traer_examen();
        }

        public bool eliminar_examen( string id)
        {
            return ex.eliminar_examen(id);
        }






    }
}