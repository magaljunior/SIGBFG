<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastraCL.aspx.cs" Inherits="Pages_Cliente_CadastraCL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body id="body">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblTitulo" runat="server" Text="Cadastrar Cliente"></asp:Label>
        <p>
            <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNome" runat="server" Width="350px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblEnd" runat="server" Text="Endereço: "></asp:Label>
            <asp:TextBox ID="txtEnd" runat="server" Width="350px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Bairro: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBairro" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Nº. : "></asp:Label>
            <asp:TextBox ID="txtNumero" runat="server" Width="87px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblCnpj" runat="server" Text="CNPJ: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCnpj" runat="server" Width="155px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Telefone: "></asp:Label>
            <asp:TextBox ID="txtTel" runat="server" Width="155px"></asp:TextBox>
        </p>
        <center>
            <br />
        <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar" />
        <br />
            <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        </center>
    </form>
</body>
</html>
