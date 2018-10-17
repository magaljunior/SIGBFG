<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div id="iblMensagem" style="margin-left: 40px">
            <a class="btn btn-primary" href="Listar.aspx" role="button">Listar</a>
            <br />
            <br />
            <br />
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
            <asp:Button ID="btnSalvar" class="btn btn-primary" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
            </div>
    </form>
</body>
</html>
