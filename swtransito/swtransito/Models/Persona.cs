using swtransito.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace swtransito.Models
{
    public class Persona
    {
        BdComun conn = new BdComun();
        public string p_nombre { get; set; }
        public string p_apellidos { get; set; }
        public string p_cedula { get; set; }
        public string p_correo { get; set; }
        public string p_contrasena { get; set; }

        public string p_recontrasena { get; set; }
        public bool insertusu(Persona obj)
        {


            string[] sql = new string[1];
            sql[0] = String.Format("CALL `InsertarPersona`('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')", obj.p_nombre, obj.p_apellidos, obj.p_cedula, obj.p_correo, obj.p_contrasena, obj.p_recontrasena);
            return conn.RealizarTransaccion(sql);


        }



        public bool insertusu_Admin(Persona obj, string pk_rol, string rutaimg)
        {
            Parameter[] para = new Parameter[7];

            para[0] = new Parameter("p_nombre", obj.p_nombre);
            para[1] = new Parameter("p_apellidos", obj.p_apellidos);
            para[2] = new Parameter("p_cedula", obj.p_cedula);
            para[3] = new Parameter("p_correo", obj.p_correo);
            para[4] = new Parameter("p_contrasena", obj.p_contrasena);

            para[6] = new Parameter("p_rol", pk_rol);
            para[7] = new Parameter("p_imagen", rutaimg);

            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("insert_usu_Admin", para);
            return conn.Transaction(trans);


        }

        public bool update_usu(string nombre, string apellido, string correo, string contrasena, string pk_usu, string idrol)
        {
            Parameter[] para = new Parameter[6];
            para[0] = new Parameter("p_nombre", nombre);
            para[1] = new Parameter("p_apellido", apellido);
            para[2] = new Parameter("p_correo", correo);
            para[3] = new Parameter("p_contrasena", contrasena);
            para[4] = new Parameter("p_idusuario", pk_usu);
            para[5] = new Parameter("p_idrol", idrol);

            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("update_uauario", para);
            return conn.Transaction(trans);



        }



      


        public DataTable ConsultarUsuarios()
        {
            string sql = @"SELECT usu.idusuario as idusuario,concat(usu.nombres,' ',usu.apellidos) as nombres,usu.correo as Correo,R.Nombre_Rol as Rol FROM usuario usu 
            inner join usuario_rol as ur on usu.idusuario = ur.Usuario_idUsuario
            inner join rol as R on R.idRol = ur.Rol_idRol
			where usu.estado='A'order by usu.nombres;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        public DataTable Consultarnombre(string pk)
        {
            string sql = @"select concat(usu.Nombres,'',usu.Apellidos) as nombres from persona AS usu where usu.idPersona='" + pk +"';";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable Consulta()
        {
            string sql = @"SELECT * FROM Persona";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        public bool RealizarUpdate_Participante(string a, string b, string c, string d, string e, string f)
        {
            string[] sql = new string[1];
            sql[0] = "UPDATE persona SET Nombres='" + a + "',Apellidos='" + b + "',cedula='" + c + "',correol='" + d + "',contrasena=md5('" + e + "'),recontrasena=md5('" + e + "') where idPersona='" + f + "'; ";
            return conn.RealizarTransaccion(sql);
        }

       



        public DataTable ConsultarParticipante(string pk)
        {
            string sql = @"SELECT Nombres,Apellidos,cedula,correol,contrasena FROM persona where idPersona='" + pk + "';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }






        public bool Cambiar_estado_usu(string pk)
        {
            string[] sql = new string[1];
            sql[0] = "UPDATE usuario SET estado='I' WHERE idusuario= '" + pk + "'; ";
            return conn.RealizarTransaccion(sql);
        }




       
        public DataTable ConsultarCuenta(Persona obj)
        {

            string sql = "SELECT * FROM Persona WHERE correol='" + obj.p_correo + "'AND contrasena=md5('" + obj.p_contrasena + "') ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }




        public DataTable InsertarUsuario(Persona obj)
        {
            string sql = "INSERT INTO Persona (Nombres,Apellidos,correol,contrasena,recontrasena) VALUES('" + obj.p_nombre + "','" + obj.p_apellidos + "','" + obj.p_correo + "','" + obj.p_contrasena + "'))";
            return conn.EjecutarConsulta(sql, CommandType.Text);

        }



        public DataTable consultarMenu(string idCuenta)
        {
            string sql = @"select menu.`idMenu`,menu.Titulo,menu.Icono,vista.idVista,vista.nombre,vista.url,vista.icono,vista.menu_idmenu  from menu inner join vista on menu.`idMenu`=vista.menu_idmenu
                         inner join rol_vista on vista.idVista=rol_vista.Vista_idVista
                         inner join rol on rol.idRol=rol_vista.rol_idrol
                         inner join persona_rol on persona_rol.rol_idrol=rol.idRol
                         inner join persona on persona.idPersona=persona_rol.Persona_idpersona
                         where persona.idPersona='" + idCuenta + "';";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable ConsultarIMG(string pk_usuario)
        {
            string sql = @"select g.foto from galeria as g 
	        inner join usuario_galeria as ug  on g.idGaleria =FK_idGaleria
            where ug.FK_idusuario= '" + pk_usuario + "';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        public DataTable ConsulNombreRol(string pk_usuario)
        {
            string sql = @"select NombreRol from rol
	        inner join persona_rol as ur on ur.rol_idrol= rol.idRol
	        inner join persona on persona.idPersona= ur.Persona_idpersona
	        where  persona.idPersona= '" + pk_usuario + "';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        public string Consul_id_Rol(string pk_usuario)
        {
            string sql = @"select rol.idRol from rol
	        inner join persona_rol as ur on ur.rol_idrol= rol.idRol
	        inner join persona on persona.idPersona= ur.Persona_idpersona
	        where  persona.idPersona= '"+pk_usuario+"';";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["idRol"].ToString();
        }
       










    }
}