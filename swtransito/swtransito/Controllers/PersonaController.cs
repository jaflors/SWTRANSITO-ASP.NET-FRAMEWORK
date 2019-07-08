using swtransito.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Controllers
{
    public class PersonaController
    {

        public Persona usu = new Persona();


        public PersonaController()
        {
            usu = new Persona();
        }

        public PersonaController(string a, string b, string c, string d, string e, string f)
        {
            usu.p_nombre = a;
            usu.p_apellidos = b;
            usu.p_cedula = c;
            usu.p_correo = d;
            usu.p_contrasena = e;
            usu.p_recontrasena = f;
        }

        //public DataTable ConsultarDatosPersonas()
        //{
        //    return usu.ConsultarDatosPersonas();
        //}

        public DataTable ConsultarUsuarios()
        {
            return usu.ConsultarUsuarios();
        }


        public bool update_participante(string a, string b, string c, string d, string e, string f)
        {
            return usu.RealizarUpdate_Participante(a, b, c, d, e,f);
        }

        public DataTable consular_participante(string pk)
        {
            return usu.ConsultarParticipante(pk);
        }


       
        public bool Insertar(Persona obj)
        {
            return usu.insertusu(obj);
        }

        public bool Insertar_usu_Admin(Persona obj, string pk_Rol, string ruta)
        {
            return usu.insertusu_Admin(obj, pk_Rol, ruta);
        }

       


        //public DataTable mis_eventos_inscrito(string pk_usuario)
        //{
        //    //return usu.Mis_eventos_iscrito(pk_usuario);
        //}


        public DataTable consultarImg(string pk_usuario)
        {
            return usu.ConsultarIMG(pk_usuario);
        }

        public DataTable consultarNombreRol(string pk_usuario)
        {
            return usu.ConsulNombreRol(pk_usuario);
        }

        public bool cambiar_estado_usu(string pk)
        {
            return usu.Cambiar_estado_usu(pk);
        }








    }
}