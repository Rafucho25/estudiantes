<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta.aspx.cs" Inherits="WebApplication1.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Dni:<asp:TextBox ID="dni" runat="server"></asp:TextBox>
            <br />
            Nombre:<asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            Provincia:<asp:TextBox ID="state" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Alta" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Retornar</asp:HyperLink>
            <br />
            </div>
    </form>
</body>
</html>
