﻿using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class Tematicas
    {
        BdComun conn = new BdComun();


        public string p_nombre { get; set; }
        public string p_numero { get; set; }


        public bool insert_tematica(Tematicas obj,string tipo)
        {
            Conexion.Parameter[] para = new Conexion.Parameter[3];

            para[0] = new Conexion.Parameter("p_nombre", obj.p_nombre);
            para[1] = new Conexion.Parameter("p_numero", obj.p_numero);
            para[2] = new Conexion.Parameter("p_tipo", tipo);



            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("insert_tematica", para);
            return conn.Transaction(trans);


        }


        public DataTable consultar_tematica_admin()
        {
            string sql = @" select Nombre,Numero,idTematica from tematica where tematica.estado='A' ; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }


        public string traer_nombre_tematica(string idtematica)
        {
            string sql = @" select Nombre from tematica where  idTematica='" + idtematica + "' AND tematica.estado='A' ; ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["Nombre"].ToString();
        }

        public DataTable consultar_tematicas_estudiante()
        {
            string sql = @" select Nombre,Numero,idTematica from tematica where tematica.estado='A' ; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }





        public DataTable traer_tipo()
        {

            string sql = @"select idTipo, Nombre from  tipo ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);

        }


        public DataTable consultar_tematicas()
        {
            string sql = @" select Nombre,Numero,idTematica from tematica where tematica.estado='A' ; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }


        public bool Cambiar_estado_tematica(string pk)
        {
            string[] sql = new string[1];
            sql[0] = "UPDATE tematica SET estado='I' WHERE idTematica='" + pk + "'; ";
            return conn.RealizarTransaccion(sql);
        }



    }
}