<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="iblMensagem">
            <asp:Label ID="Label1" runat="server" Text="Cadastro Ordem de Serviço"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Funcionario: "></asp:Label>
            <asp:TextBox ID="txtFuncionario" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Produto: "></asp:Label>
            <asp:TextBox ID="txtProduto" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Quantidade: "></asp:Label>
            <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Descrição: "></asp:Label>
            <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Data de Início: "></asp:Label>
            <asp:TextBox ID="txtDatainicio" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Data de Expiração: "></asp:Label>
            <asp:TextBox ID="txtDataexpiracao" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
            <br />
            <asp:Label ID="IblMensagem" runat="server"></asp:Label>
            <br />
            </div>
    </form>
</body>
</html>
