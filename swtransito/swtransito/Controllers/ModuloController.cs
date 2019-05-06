using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Controllers
{
    public class ModuloController
    {
        public Modulo mod = new Modulo();

        public ModuloController()
        {
            mod = new Modulo();
        }

        public ModuloController(string a,string b)
        {
            mod.p_nombre = a;
            mod.p_numero = b;
        }
        public bool Insertar_mdulo(Modulo obj)
        {
            return mod.insertmodulo(obj);
        }

        public bool cambiar_estado_mod(string pk)
        {
            return mod.Cambiar_estado_modulo(pk);

        }

        public DataTable Traer_modulos()
        {
            return mod.consultar_modulos();
        }



    }
}