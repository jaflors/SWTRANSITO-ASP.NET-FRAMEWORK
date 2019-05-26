using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Controllers
{
    public class TematicaController
    {
        public Tematicas tem = new Tematicas();


        public TematicaController()
        {
            tem = new Tematicas();
        }

        public TematicaController(string a, string b)
        {
            tem.p_nombre = a;
            tem.p_numero = b;
        }


        public bool Insertar_tematicas(Tematicas obj,string tipo)
        {
            return tem.insert_tematica(obj,tipo);
        }

        public DataTable traer_tipo()
        {
            return tem.traer_tipo();
            

        }


        public string traer_tipo_idtem(string id_tema)
        {
            return tem.traer_tipo_idtem(id_tema);


        }





        public DataTable Traer_tematicas()
        {
            return tem.consultar_tematicas();
        }


        public DataTable Traer_imagen_admin(string id)
        {
            return tem.traer_imagen_contenido(id);
        }

        public bool cambiar_estado_tem(string pk)
        {
            return tem.Cambiar_estado_tematica(pk);

        }
        //eliminar imagen 
        public bool eliminar_imagen_admin(string pk)
        {
            return tem.eliminar_imagen_admin(pk);

        }
        //eliminar video  admin 
        public bool inster_video(string url,string fk_tematica)
        {
            return tem.insert_video(url,fk_tematica);

        }




        public DataTable Traer_tematica_admin()
        {
            return tem.consultar_tematica_admin();
        }

        public bool Insertar_imagen( string imagen,string id_tematica)
        {
            return tem.insert_imagen(imagen,id_tematica);
        }


        public DataTable Traer_modulos_estudiante()
        {
            return tem.consultar_tematicas_estudiante();
        }


        public DataTable Traer_Imagen_Banner(string id)
        {
            return tem.ConsultarImagenBanner(id);
        }

        public string Traer_nombre_tematica(string id_tematica)
        {
            return tem.traer_nombre_tematica(id_tematica);
        }




    }
}