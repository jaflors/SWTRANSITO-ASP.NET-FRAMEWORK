using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class Resultado
    {
        BdComun conn = new BdComun();




        ///INSERTAR RESULTADO 
        public bool insertar_resultado(string a, int b, int c, int d, string e, string f, string g)
        {
            string[] sql = new string[1];
            sql[0] = @"insert into resultado (estado,pre_buenas,pre_malas,total_preguntas,fecha,examen_idexamen,persona_idPersona)
                       values ('"+a+ "','" + b + "','" + c + "','" + d + "','" + e + "','" + f + "','" + g + "');";
            return conn.RealizarTransaccion(sql);
        }

        // traer resultado para cada id 

        public DataTable traer_resultadoid(string id)
        {
            string sql = @"select examen.nombre, resultado.fecha,resultado.total_preguntas,resultado.estado,pre_buenas,pre_malas from examen
            inner join resultado on examen.idexamen= resultado.examen_idexamen where persona_idPersona='"+id+"';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }




    }
}