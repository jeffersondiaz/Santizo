using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace libreriaonline
{
    public partial class frmlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
                if (txtUsuario.Text != "" && txtpass.Text != "")
            {
                entUsuario obj = negUsuario.Login(txtUsuario.Text, txtpass.Text);

                if (obj != null)
                {

                    Session["usuario"] = obj;
                    Response.Redirect("productos.aspx");

                }
                else 
                {
                    lblerror.Text = "Usuario o contraseña invalido";
                    lblerror.Visible = true;

                
                }

            }
            else
            {
                lblerror.Text = "Falta ingresar campos";
                lblerror.Visible = true;
            }
        }

        protected void txtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        }
    
}