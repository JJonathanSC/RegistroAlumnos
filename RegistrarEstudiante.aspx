<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarEstudiante.aspx.cs" Inherits="RegistroAlumnos.RegistrarEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 144px;
        }
        .auto-style3 {
            width: 144px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Registro de Alumno"></asp:Label>
        </div>

        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblNombre" runat="server" Font-Size="Large" Text="Nombres: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" Width="213px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[A-Za-z]+\s*([A-Za-z]+)*$">** SOLO SE PERMITE INGRESAR LETRAS **</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblApellido" runat="server" Font-Size="Large" Text="Apellidos: "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtApellido" runat="server" Width="213px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtApellido" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[A-Za-z]+\s*([A-Za-z]+)*$">** SOLO SE PERMITE INGRESAR LETRAS **</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblEmail" runat="server" Font-Size="Large" Text="Email: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="213px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">** FORMATO DE CORREO INCORRECTO **</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblMateria" runat="server" Font-Size="Large" Text="Materia: "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMateria" runat="server" Height="17px" Width="148px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="PROGRAMACION">PROGRAMACION</asp:ListItem>
                        <asp:ListItem Value="DESARROLLO WEB">DESARROLLO WEB</asp:ListItem>
                        <asp:ListItem Value="REDES">REDES</asp:ListItem>
                        <asp:ListItem Value="BASE DE DATOS">BASE DE DATOS</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="lblErrorMateria" runat="server" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MenuAlumnos.aspx">Volver</asp:HyperLink>
                </td>
                <td>
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
