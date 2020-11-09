<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="WebApplication1.consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ingrese el Dni del alumno:<asp:TextBox ID="dni" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="find" runat="server" OnClick="find_Click" Text="Buscar" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
