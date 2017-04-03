using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DataAccess.datos
{
    public class Conexion
    {
        public SqlConnection conectar()
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=173.209.236.173;Initial Catalog=kardex_1_1;User ID=sa;Password=umes123!";
            return cn;
        }

    }
}
