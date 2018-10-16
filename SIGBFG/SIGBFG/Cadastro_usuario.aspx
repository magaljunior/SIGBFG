<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro_usuario.aspx.cs" Inherits="Paginas_Cadastro_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/Themes/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: normal; font-style: normal">
        <div style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal" id="lbltitulo">
            &nbsp;
            Cadastro de usuários:</div>
        <br />
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtNome" runat="server" Width="219px" ></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Sobrenome:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtSobrenome" runat="server" Width="222px"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Senha:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtsenha" runat="server" Width="223px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label5" runat="server" Text="Confirmar Senha:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtconfirmaSenha" runat="server" Width="223px" TextMode="Password" ></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="Editar" />
        <br />
    </form>
</body>
</html>
