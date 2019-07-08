using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace Construccion2.Models.Clase
{
    public class Objeto_Consumir
    {
        public object name { get; set; }
        public string NOMBRE { get; set; }
        public string APELLIDO { get; set; }
        public DateTime FECHA_NACIMIENTO { get; set; }
        public string SEXO { get; set; }
        public int ESTRATO_SOCIAL { get; set; }
        public string DIRECCION_RESIDENCIA { get; set; }
        public string BARRIO { get; set; }
        public string VEREDA { get; set; }
        public string TELEFONO { get; set; }
        public string CELULAR { get; set; }
        public string EMAIL { get; set; }
        public string FOTOGRAFIA { get; set; }
        public string RH { get; set; }
        public string NUMERO_DOCUMENTO { get; set; }
        public string Tipo_documento { get; set; }
        public string estado_civil { get; set; }
        public string PAIS { get; set; }
        public string municipio_residencia { get; set; }
        public string departamento_res { get; set; }
        public string pais_resi { get; set; }
        public string ciudad_exp { get; set; }
        public string departamento_nac { get; set; }
        public string pais_nac { get; set; }
        public DateTime fecha_afiliacion_salud { get; set; }
        public string Nombre_entidad_salud { get; set; }
        public string Medicina_prepagada { get; set; }



        public string convertirJsontoString(DataTable dt)
        {
            DataSet ds = new DataSet();
            try
            {
                ds.Merge(dt);
                StringBuilder JsonString = new StringBuilder();
                if (ds != null && ds.Tables[0].Rows.Count > 0)
                {
                    JsonString.Append("[");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        JsonString.Append("{");
                        for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                        {
                            if (j < ds.Tables[0].Columns.Count - 1)
                            {
                                JsonString.Append("\"" + ds.Tables[0].Columns[j].ColumnName.ToString() + "\":" + "\"" + ds.Tables[0].Rows[i][j].ToString() + "\",");
                            }
                            else if (j == ds.Tables[0].Columns.Count - 1)
                            {
                                JsonString.Append("\"" + ds.Tables[0].Columns[j].ColumnName.ToString() + "\":" + "\"" + ds.Tables[0].Rows[i][j].ToString() + "\"");
                            }
                        }
                        if (i == ds.Tables[0].Rows.Count - 1)
                        {
                            JsonString.Append("}");
                        }
                        else
                        {
                            JsonString.Append("},");
                        }
                    }
                    JsonString.Append("]");
                    return JsonString.ToString();
                }
                else
                {
                    return null;
                }

            }
            catch
            {
                return null;
            }
        }

    }
}