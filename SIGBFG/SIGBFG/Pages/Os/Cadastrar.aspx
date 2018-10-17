<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <title></title>
</head>
<body style="height: 575px">
    <div class="container" style="height: 580px">
    <form id="form1" runat="server">
        
        <div id="iblMensagem" style="margin-left: 40px">
            <center style="height: 578px">
                   <br />
            <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
            <a class="btn btn-primary" href="Listar.aspx">Lista de O.S</a><br />
&nbsp;<h1>Cadastro Ordem de Serviço</h1>
                     <br />
            
            <asp:Label ID="Label2" runat="server" Text="Funcionario: "></asp:Label>
            <asp:TextBox ID="txtFuncionario" runat="server" Width="153px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Produto: "></asp:Label>
            <asp:TextBox ID="txtProduto" runat="server" Width="177px" ></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Quantidade: "></asp:Label>
            <asp:TextBox ID="txtQuantidade" runat="server" Width="150px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Descrição: "></asp:Label>
            <asp:TextBox ID="txtDescricao" runat="server" Width="163px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Data de Início: "></asp:Label>
            <asp:TextBox ID="txtDatainicio" runat="server" Width="133px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Data de Expiração: "></asp:Label>
            <asp:TextBox ID="txtDataexpiracao" runat="server" Width="103px"></asp:TextBox>
                <br />
            <br />
            <asp:Button CssClass="btn btn-primary" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
                   <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
                </center>
            </div>
    </form>
        </div>
</body>
</html>
