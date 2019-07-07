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
            return ex.insertar_exam(a, b, c, d, e, f);
        }

        public DataTable traer_examen()
        {
            return ex.traer_examen();
        }

        //traer numero de preguntas de cada examen
        public string numero_preguntas_examen(string id)
        {
            return ex.traer_numero_examen(id);
        }
        public string existe(string id)
        {
            return ex.if_exist(id);
        }

        public string traer_descripcion(string id)
        {
            return ex.traer_descripcion_ex(id);
        }

        public bool eliminar_examen(string id)
        {
            return ex.eliminar_examen(id);
        }


        public DataTable traer_examen_id(string a)
        {
            return ex.traer_examen_id(a);
        }
        // traer exmen para mostrar resultado
        public DataTable traer_examen_show_result()
        {
            return ex.traer_examen_show_resul();
        }




        public bool insert_preguntas(string a, int b, string c, string d, string e, string f, string g, string h)
        {
            return ex.insertar_preguntas(a, b, c, d, e, f, g, h);
        }

        /// preguntas ///////////////////////////////////////777

        public DataTable traer_preguntas_id(string id)
        {
            return ex.traer_preguntas(id);
        }
        public DataTable info_preguntas(string id)
        {
            return ex.traer_info_pregunta(id);
        }



        public string traer_numero(string id)
        {
            return ex.traer_numero(id);
        }


        // examen estudiante //////////////////////////////////////////////////////////////////////////////

        public DataTable info_examen_estudiante()
        {
            return ex.info_examen_estudiante();
        }


        public DataTable preguntas_estudiante(string id)
        {
            return ex.preguntas_estudiante(id);
        }

        public string traer_respuestacorrecta(string id)
        {
            return ex.traer_respuesta_correcta(id);
        }
        public string traer_numero_pasar(string id)
        {
            return ex.traer_numero_para_pasar(id);
        }



    }
}