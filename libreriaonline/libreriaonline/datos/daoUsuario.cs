using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;
using libreriaonline.datos;

namespace CapaDatos
{
   public class daoUsuario
    {
       public static entUsuario Login(String usuario, String password)
       {

           entUsuario obj = null;
           SqlCommand cmd = null;
           SqlDataReader dr = null;

           try
           {
               Conexion cn = new Conexion();
               SqlConnection cnx = cn.conectar();
               cmd = new SqlCommand("VerificacioUsuario",cnx);
               cmd.Parameters.AddWithValue("@Usuario", usuario);
               cmd.Parameters.AddWithValue("@Password", password);
               cmd.CommandType = CommandType.StoredProcedure;
               cnx.Open();
               dr = cmd.ExecuteReader();
               obj = new entUsuario();
               dr.Read();
               obj.Apellido = dr["Apellido"].ToString();
               obj.idUsuario = Convert.ToInt32(dr ["idUsuario"].ToString());
               obj.Nombre = dr ["Nombre"].ToString();
               obj.Password = dr ["Password"].ToString();
               obj.Usuario = dr["Password"].ToString();






           }
           catch (Exception e)
           {
               obj = null;

           }
           finally
           {

               cmd.Connection.Close();

           }
           return obj;
       }
    }
}
