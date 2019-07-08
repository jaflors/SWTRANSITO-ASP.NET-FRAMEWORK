using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class Ejercicio_mod
    {
        BdComun conn = new BdComun();
        public string acerto { get; set; }
        public string error { get; set; }
        public string nota { get; set; }

        public bool insert_ejercicio(Ejercicio_mod obj, string user)
        {
            Conexion.Parameter[] para = new Conexion.Parameter[4];

            para[0] = new Conexion.Parameter("erro", obj.error);
            para[1] = new Conexion.Parameter("acert", obj.acerto);
            para[2] = new Conexion.Parameter("nota", obj.nota);
            para[3] = new Conexion.Parameter("usuario", user);



            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("insert_test", para);
            return conn.Transaction(trans);


        }
        public DataTable Consultar_all()
        {

            string sql = "select persona.Nombres, ejercicio.Erro, ejercicio.Acierto, ejercicio.Nota, ejercicio.Fecha from ejercicio";
            sql += "inner join persona on ejercicio.Persona=persona.IdPersona;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
    }

}