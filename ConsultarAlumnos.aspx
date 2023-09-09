<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarAlumnos.aspx.cs" Inherits="RegistroAlumnos.ConsultarAlumnos" %>

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
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Alumnos Inscritos"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblMsgEmpty" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField HeaderText="carnet" />
                            <asp:BoundField HeaderText="nombre" />
                            <asp:BoundField HeaderText="apellido" />
                            <asp:BoundField HeaderText="email" />
                            <asp:BoundField HeaderText="materia" />                            
                        </Columns>

                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MenuAlumnos.aspx">Volver</asp:HyperLink>
    </form>
</body>
</html>
