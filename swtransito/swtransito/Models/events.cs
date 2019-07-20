using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class events
    {

        BdComun conn = new BdComun();

     
        public string Subject { get; set; }
       
        public DateTime Start { get; set; }
       
      
        public DataTable TraerEvento()
        {
            string sql = @" SELECT  nombre,fecha FROM examen;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }






    }
}