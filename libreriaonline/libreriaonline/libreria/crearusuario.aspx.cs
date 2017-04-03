using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using libreriaonline.entidades;
using libreriaonline.negocio;

namespace libreriaonline.libreria
{
    public partial class crearusuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text != "" && txtApellido.Text != "" && txtUsuario.Text != "" && txtPassword.Text != "")
            {
                entregistrousuario obj = new entregistrousuario();
                obj.Nombre = txtNombre.Text;
                obj.Apellido = txtApellido.Text;
                obj.Usuario = txtUsuario.Text;
                obj.Password = txtPassword.Text;

                if (negregistrousuario.ingresousuario(obj) != 0)
                {
                    Response.Redirect("/..../frmlogin.aspx");

                }
                else
                {
                    lblerror.Text = "No se pudo Ingresar Usuario";
                    lblerror.Visible = true;


                }
            }
            else
            {

                lblerror.Text = "Falta ingresar Campos";
                lblerror.Visible = true;

            }



        }
    }
}