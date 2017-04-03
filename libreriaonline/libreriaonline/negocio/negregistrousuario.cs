using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using libreriaonline.entidades;
using libreriaonline.datos;

namespace libreriaonline.negocio
{
    public class negregistrousuario
    {
        public static int ingresousuario(entregistrousuario obj) {

            return daoregistrousuario.usuarioregistro(obj);
        
        }

    }
}