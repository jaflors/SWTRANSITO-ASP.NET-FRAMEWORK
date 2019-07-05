using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class Examen
    {

        BdComun conn = new BdComun();


        //agregar examen 
        public bool insertar_exam(string a, string b, string c, string d, string e, string f)
        {
            string[] sql = new string[1];
            sql[0] = @"insert into examen (nombre,descripcion, fecha,numero_preguntas,tematica,aprueba_con)
                     values('" + a+ "','" + b + "','" + c + "','" + d + "','" + e + "','" + f + "');";
            return conn.RealizarTransaccion(sql);
        }





        //traer numero de preguntas totales de cada examen
        public string traer_numero_examen(string id_tematica)
        {

            string sql = @"select numero_preguntas as numero from examen where idexamen='"+id_tematica+"'; ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["numero"].ToString();

        }

        public string if_exist(string id_tematica)
        {

            string sql = @"SELECT IF( EXISTS(SELECT  * from  examen WHERE tematica = '"+id_tematica+"'), 1, 0) as numero";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["numero"].ToString();

        }

        public DataTable traer_examen()
        {
            string sql = @"select examen.idexamen, tematica.Nombre as tematica,examen.nombre, examen.fecha  from examen  
            inner join tematica on tematica.idTematica=examen.tematica;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        //traer examen para actualizar pide id examen 
        public DataTable traer_examen_id(string id)
        {
            string sql = @"select idexamen,nombre,descripcion,fecha,numero_preguntas,aprueba_con from examen where idexamen='"+id+"';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        /// traer examen descripcion
        public string traer_descripcion_ex(string id)
        {
            string sql = @"select examen.descripcion from examen where idexamen='"+id+"';";

            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["descripcion"].ToString();

        }

        public bool eliminar_examen(string pk)
        {
            string[] sql = new string[1];
            sql[0] = "Delete from examen where idexamen='" + pk + "'; ";
            return conn.RealizarTransaccion(sql);
        }


        // preguntas////////////////////////////////////////////////////////////////////////////////////////////

        public bool insertar_preguntas(string a, int b, string c, string d, string e, string f,string g,string h)
        {
            string[] sql = new string[1];
            sql[0] = @"insert into preguntas (enunciado,cont,opc1,opc2,opc3,opc4,respuesta,examen_idexamen)
                     values('" + a + "','" + b + "','" + c + "','" + d + "','" + e + "','" + f + "','"+g+"','"+h+"');";
            return conn.RealizarTransaccion(sql);
        }

        //traer preguntas  de cada examen 
        public DataTable traer_preguntas(string id)
        {
            string sql = @"select examen.nombre,cont,idpreguntas from preguntas
                         inner join examen on examen.idexamen=preguntas.examen_idexamen
                         where preguntas.examen_idexamen='" + id+"';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable traer_info_pregunta(string id)
        {
            string sql = @"select enunciado,opc1,opc2,opc3,opc4,respuesta from preguntas where idpreguntas ='"+id+"';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        /// traer numero de cada pregunta 
        public string traer_numero(string id_tematica)
        {

            string sql = @"select max(cont) as numero from preguntas where examen_idexamen='"+id_tematica+"'; ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["numero"].ToString();

        }
        // traer informacion  de  examen para estaudiante 
        public DataTable info_examen_estudiante()
        {
            string sql = @" select idexamen,nombre,descripcion,numero_preguntas,aprueba_con from examen ; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }


        /// traer las preguntas para cada examen estudiante
        public DataTable preguntas_estudiante(string id)
        {
            string sql = @" select idpreguntas,cont,enunciado,opc1,opc2,opc3,opc4,respuesta,examen_idexamen from preguntas where examen_idexamen='"+id+"'; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }

       




        //traer la pregunta correcta con ingreso de id de la pregunta 
        public string traer_respuesta_correcta(string id_pregunta)
        {

            string sql = @"select respuesta from preguntas where idpreguntas='"+id_pregunta+"'; ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["respuesta"].ToString();

        }
        //traer  numero para pasar  un examen
        public string traer_numero_para_pasar(string id_examen)
        {

            string sql = @"select aprueba_con from examen where idexamen='"+id_examen+"' ;";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["aprueba_con"].ToString();

        }






    }
}