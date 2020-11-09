<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacion.aspx.cs" Inherits="WebApplication1.modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Dni del Alumno:<asp:TextBox ID="dni" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="find" runat="server" OnClick="find_Click" Text="Buscar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            Nombre:<asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            Provincia:<asp:TextBox ID="state" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="modify" runat="server" OnClick="modify_Click" Text="Modificar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
