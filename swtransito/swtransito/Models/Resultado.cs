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

        /// actualizar resultadp
        public bool actualizar_resultado(string a, int b, int c, int d, string e, string f, string g)
        {
            string[] sql = new string[1];
            sql[0] = @"update resultado set estado='"+a+ "' ,pre_buenas='" +b+ "',pre_malas='" +c+ "' ,total_preguntas='" + d + "',fecha= '" + e + "' where examen_idexamen= '"+ f +"' and persona_idPersona= '"+g+"'; ";
            return conn.RealizarTransaccion(sql);
        }
        // traer resultado para cada id 

        public DataTable traer_resultadoid(string id)
        {
            string sql = @"select examen.nombre, resultado.fecha,resultado.total_preguntas,resultado.estado,pre_buenas,pre_malas from examen
            inner join resultado on examen.idexamen= resultado.examen_idexamen where persona_idPersona='"+id+"';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        // traer resultados admin

        public DataTable traer_resultasadmin(string id_exam)
        {
            string sql = @"select concat(usu.Nombres,' ',usu.Apellidos) as nombres,res.pre_buenas,res.pre_malas,res.fecha,res.estado, ( SELECT COUNT(1) FROM resultado T2
            WHERE T2.pre_buenas >= res.pre_buenas) rank from persona as usu 
            inner  join  resultado as res  on usu.idPersona= res.persona_idPersona
            inner join examen on res.examen_idexamen= examen.idexamen where res.examen_idexamen='"+ id_exam +"' ORDER BY res.pre_buenas DESC ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }



        public string preguntar_ifex_resultado(string usu, string exam )
        {
           
            string sql = @" SELECT IF( EXISTS(SELECT * from  resultado WHERE persona_idPersona='" + usu + "' and examen_idexamen='" + exam + "' ), 1, 0) as numero ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["numero"].ToString();
        }




    }
}