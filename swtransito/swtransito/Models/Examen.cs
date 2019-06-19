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

        public DataTable traer_examen()
        {
            string sql = @"select examen.idexamen, tematica.Nombre as tematica,examen.nombre, examen.fecha  from examen  
            inner join tematica on tematica.idTematica=examen.tematica;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public bool eliminar_examen(string pk)
        {
            string[] sql = new string[1];
            sql[0] = "Delete from examen where idexamen='" + pk + "'; ";
            return conn.RealizarTransaccion(sql);
        }






    }
}