<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmlogin.aspx.cs" Inherits="libreriaonline.frmlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<html>
<head>
    <title></title>
    <link href="../estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1">
    <div id="abrigo_general" align="center">
       
        <div id="content_Login">
            <table>

                <tr>
                    <td>
                    <asp:Image ID="imgLogin" runat="server" ImageUrl="~/imagenes/llave.png" Width="60px" Height="60px" />
                    
                    </td>
                    <td align="left">  
                        Inicio de Sesion   
                    </td>               
                </tr>
                <tr>
                    <td colspan="2" align="left">Nombre de Usuario:</td>
                </tr>
                <tr>
                    <td colspan="2" align="left"><asp:TextBox ID="txtUsuario" runat="server" 
                            Width="170px" ontextchanged="txtUsuario_TextChanged"></asp:TextBox></td>
                </tr>
                   <tr>
                    <td colspan="2" align="left">Password:</td>
                </tr>
                <tr>
                    <td colspan="2" align="left"><asp:TextBox ID="txtpass" runat="server" Width="170px" TextMode="Password"></asp:TextBox></td>
                </tr>
                 <tr>
                 <td colspan="2" align="center"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"  Visible="false"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" align="left"><asp:Button ID="btnAceptar" runat="server" 
                            Text="Aceptar" Width="150px" onclick="btnAceptar_Click" /></td>
                </tr>

            </table>

            <a href="crearusuario.aspx">crear usuario</a>

        </div>
    
    </div>
    </form>
</body>
</html>

</asp:Content>
