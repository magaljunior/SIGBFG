<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar_usuario.aspx.cs" Inherits="Paginas_Alterar_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/Themes/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 401px">
    <form id="form1" runat="server">
        <div style="height: 393px; width: 832px">
            <asp:Label ID="Label1" runat="server" Text="Alterar Usuário" Font-Size="X-Large" Height="44px" Width="295px"></asp:Label>
            <br />
            <br />
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            <br />
            &nbsp;<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Label ID="Label3" runat="server" Text="Sobrenome"></asp:Label>
            <br />
            &nbsp;<asp:TextBox ID="txtSobrenome" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
