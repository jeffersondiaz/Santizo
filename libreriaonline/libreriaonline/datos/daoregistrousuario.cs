using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using libreriaonline.entidades;
using System.Data.SqlClient;
using System.Data;

namespace libreriaonline.datos
{
    public class daoregistrousuario
    {
        public static int usuarioregistro(entregistrousuario obj){

            int indicador = 1;
            SqlCommand cmd = null;

           
            
            try {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("ingresarusuario",cnx);
                cmd.Parameters.AddWithValue("@Nombre", obj.Nombre);
                cmd.Parameters.AddWithValue("@Apellido", obj.Apellido);
                cmd.Parameters.AddWithValue("@Usuario", obj.Usuario);
                cmd.Parameters.AddWithValue("@Password", obj.Password);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;
               
            }
            catch (Exception e)
            {
                indicador = 0;
            
            }
            finally
            {

                cmd.Connection.Close();

            }
            return indicador;
        
        }
    
    }


    
}