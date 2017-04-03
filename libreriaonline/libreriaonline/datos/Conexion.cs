using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace libreriaonline.datos
{
    public class Conexion
    {
        public SqlConnection conectar()
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=173.208.236.163;Initial Catalog=libreria;User ID=sa;Password=umes123!";
            return cn;
        }

    }
}