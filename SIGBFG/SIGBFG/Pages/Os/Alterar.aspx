<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Pages_Os_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <a href="Cadastrar.aspx">Cadastrar</a>
        <a href="Listar.aspx">Listar</a>
        <h1>
            Alteração de Ordem de Serviço
        </h1>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Funcionário:"></asp:Label>
            <asp:TextBox ID="txtFuncionario" runat="server" style="margin-left: 13px"></asp:TextBox>
        </p>
    </div>
        <asp:Label ID="Label2" runat="server" Text="Produto:"></asp:Label>
        <asp:TextBox ID="txtProduto" runat="server" style="margin-left: 18px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Quantidade:"></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 23px"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Data Inicial:"></asp:Label>
            <asp:TextBox ID="txtDataInicio" runat="server" style="margin-left: 15px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Data Expiração:"></asp:Label>
            <asp:TextBox ID="txtDataExpiracao" runat="server" style="margin-left: 19px"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Descrição:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server" Height="41px" style="margin-left: 70px" Width="165px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
        <br />
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
    </form>
</body>
</html>
