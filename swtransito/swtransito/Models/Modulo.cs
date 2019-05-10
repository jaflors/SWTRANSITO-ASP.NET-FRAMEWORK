using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace swtransito.Models
{
    public class Modulo
    {

        BdComun conn = new BdComun();

        public string p_nombre { get; set; }
        public string p_numero { get; set; }


        public bool insertmodulo(Modulo obj)
        {
            Conexion.Parameter[] para = new Conexion.Parameter[2];

            para[0] = new Conexion.Parameter("p_nombre", obj.p_nombre);
            para[1] = new Conexion.Parameter("p_numero", obj.p_numero);
            


            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("insert_modulo", para);
            return conn.Transaction(trans);


        }


        public bool Cambiar_estado_modulo(string pk)
        {
            string[] sql = new string[1];
            sql[0] = "UPDATE modulo SET estado='I' WHERE idModulo='" + pk + "'; ";
            return conn.RealizarTransaccion(sql);
        }

        public DataTable consultar_modulos()
        {
            string sql = @" select Nombre,Numero,idModulo from modulo where modulo.estado='A' ; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }


        public DataTable consultar_modulos_admin()
        {
            string sql = @" select Nombre,Numero,idModulo from modulo where modulo.estado='A' ; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }


       


        public string traer_nombre_modulo(string idmodulo)
        {
            string sql = @" select Nombre from modulo where  idModulo='" + idmodulo + "' AND modulo.estado='A' ; ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["Nombre"].ToString();
        }









    }
}