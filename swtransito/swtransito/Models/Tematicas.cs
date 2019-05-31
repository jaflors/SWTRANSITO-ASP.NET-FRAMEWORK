using swtransito.Conexion;
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















        //tematicas
        public bool insert_tematica(Tematicas obj, string tipo)
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


        //imagen///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        public bool insert_imagen(string imagen, string id_tematica)
        {
            Parameter[] para = new Parameter[2];

            para[0] = new Parameter("p_imagen", imagen);
            para[1] = new Parameter("p_id_tematica", id_tematica);



            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("insert_imagen", para);
            return conn.Transaction(trans);

        }


        public DataTable ConsultarImagenBanner(string id__ima)
        {
            string sql = @"select idImagen,Foto,tematica_idTematica from imagen where tematica_idTematica='" + id__ima + "';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        public DataTable traer_imagen_contenido(string id_temmatica)
        {

            string sql = @"select Foto,idImagen from imagen where tematica_idTematica='" + id_temmatica + "'  ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);

        }

        //eliminar imagen 
        public bool eliminar_imagen_admin(string pk)
        {
            string[] sql = new string[1];
            sql[0] = "DELETE FROM `imagen` WHERE `idImagen`='" + pk + "'; ";
            return conn.RealizarTransaccion(sql);
        }


        //tipo/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        public DataTable traer_tipo()
        {

            string sql = @"select idTipo, Nombre from  tipo ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);

        }

        //traer tipo de tematica segun el id de la tematica 
        public string traer_tipo_idtem(string id_tematica)
        {

            string sql = @"select tipo_idTipo from tematica where tematica.idTematica='" + id_tematica + "'; ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["tipo_idTipo"].ToString();


            

        }






        // Guardar video 

       

        public bool insert_video(string url, string fk_tematicca)
        {
            Conexion.Parameter[] para = new Conexion.Parameter[2];

            para[0] = new Conexion.Parameter("p_ubicacion", url);
            para[1] = new Conexion.Parameter("P_id_temamtia", fk_tematicca);
            



            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("insert_video", para);
            return conn.Transaction(trans);


        }


        public string traer_url(string id_tematica)
        {

            string sql = @"select ubicacion from video where video.tematica_idTematica='"+ id_tematica + "'; ";
            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["ubicacion"].ToString();

        }


        public DataTable traer_video_admin(string id_tematica)
        {

            string sql = @"select idvideo,ubicacion from video where video.tematica_idTematica='" + id_tematica + "'; ";
            return conn.EjecutarConsulta(sql, CommandType.Text);

        }

        public bool eliminar_video_admin(string pk)
        {
            string[] sql = new string[1];
            sql[0] = "DELETE FROM `video` WHERE `idvideo`='" + pk + "'; ";
            return conn.RealizarTransaccion(sql);
        }


        // PDF///////////////////////////////////////////////////////////////////////////////////////////////////////




        public bool insert_pdf(string ruta, string id_tematica)
        {
            Parameter[] para = new Parameter[2];

            para[0] = new Parameter("p_pdf", ruta);
            para[1] = new Parameter("p_id_tematica", id_tematica);



            Transaction[] trans = new Transaction[1];
            trans[0] = new Transaction("insert_pdf", para);
            return conn.Transaction(trans);

        }


        public DataTable consultar_nombre_pdf(string id)
        {
            string sql = @"select idpdf,substring(ubicacion,11) as nombre  from pdf where tematica_idTematica='"+id+"' ;";

            return conn.EjecutarConsulta(sql, CommandType.Text);

        }


        public string consultar_nombre_pdf_con_id( string id)
        {
            string sql = @"select substring(ubicacion,11) as nombre  from pdf where idpdf='"+id+"' ;";

            DataTable data = conn.EjecutarConsulta(sql, CommandType.Text);
            return data.Rows[0]["nombre"].ToString();
        }









    }
}