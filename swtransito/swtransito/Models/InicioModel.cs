using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class InicioModel

    {
        BdComun conn = new BdComun();
        public string numero_tematicas()
        {
            string sql = @"select count(*) as tematica from tematica;";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["tematica"].ToString();
        }

        public string numero_examen()
        {
            string sql = @"select count(*) as examen from examen";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["examen"].ToString();
        }

        public string numero_compañeros()
        {
            string sql = @"select count(*) as estudiantes from persona
            inner join persona_rol on persona.idPersona= persona_rol.Persona_idpersona
            where persona_rol.rol_idrol=2;";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["estudiantes"].ToString();



        }

        public string numero_ejercicio()
        {
            string sql = @" select count(*) as ejerc from ejercicio;";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["ejerc"].ToString();



        }
    }
}