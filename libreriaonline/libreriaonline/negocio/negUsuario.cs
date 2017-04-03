using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negUsuario
    {
        public static entUsuario Login(String usuario, String password)
        {
            return daoUsuario.Login(usuario, password);
        
        }
    }
}
