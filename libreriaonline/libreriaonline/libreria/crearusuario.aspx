<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="crearusuario.aspx.cs" Inherits="libreriaonline.libreria.crearusuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="abrigo_formulario1"> 
        <h2>NUEVO USUARIO</h2>
        <br />
        <div id="abrigo_usuario">
             
        <table border="5">
            <tr>
                <td>Nombre:  </td>
                <td class="style1"><asp:TextBox ID="txtNombre" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Apellido:  </td>
               <td class="style1"><asp:TextBox ID="txtApellido" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Usuario:  </td>
                <td class="style1"><asp:TextBox ID="txtUsuario" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password:  </td>
                <td class="style1"><asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="password"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Label ID="lblerror" runat="server" Text="" Visible="false" forecolor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
                        onclick="btnGuardar_Click" /></td>
            </tr>
        </table>
        </div>
 
   </div>
                    


    
</asp:Content>
