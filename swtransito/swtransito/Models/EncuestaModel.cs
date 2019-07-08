using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class EncuestaModel
    {
        BdComun conn = new BdComun();

        public string id { get; set; }
        public string valor { get; set; }
        public EncuestaModel()
        {
        }
        public bool insert_encuesta(EncuestaModel obj, string user)
        {
            Conexion.Parameter[] para = new Conexion.Parameter[3];

            para[0] = new Conexion.Parameter("id", obj.id);
            para[1] = new Conexion.Parameter("valor", obj.valor);
            para[2] = new Conexion.Parameter("id_perso", user);



            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("Insert_encuesta", para);
            return conn.Transaction(trans);


        }
    }


}