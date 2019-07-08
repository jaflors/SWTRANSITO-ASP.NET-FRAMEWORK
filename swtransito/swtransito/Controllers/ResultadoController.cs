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


        public DataTable traer_resultadoadmin(string id)
        {
            return res.traer_resultasadmin(id);
        }

        public string existe_result(string id_usu, string id_exam)
        {
            return res.preguntar_ifex_resultado(id_usu,id_exam);
        }



    }
}