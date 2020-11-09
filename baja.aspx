<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baja.aspx.cs" Inherits="WebApplication1.baja" %>

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
            <asp:Button ID="delete" runat="server" OnClick="Button1_Click" Text="Baja" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
