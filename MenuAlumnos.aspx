<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAlumnos.aspx.cs" Inherits="RegistroAlumnos.MenuAlumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Alumnos"></asp:Label>
        </div>
        
        <br />

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrarEstudiante.aspx">Registro Alumnos</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ConsultarAlumnos.aspx">Consultar Alumnos</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
