using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Controllers
{
    public class ResultadoController
    {
        Resultado res = new Resultado();



        public DataTable traer_resultado(string id)
        {
            return res.traer_resultadoid(id);
        }


    }
}