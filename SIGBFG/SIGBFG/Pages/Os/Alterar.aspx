<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Pages_Os_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <center>
            <br />
             <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
        <a class="btn btn-primary" href="Cadastrar.aspx">Cadastrar</a>
        <a class="btn btn-primary" href="Listar.aspx">Listar</a>
<<<<<<< HEAD
                 </div>
=======
            <br />
>>>>>>> b19ec6c5db82a17dc900a0579ffcb0b98ad41461
        <br />
        <h1>
            Alteração de Ordem de Serviço
        </h1>
        <br />
            <asp:Label ID="Label1" runat="server" Text="Funcionário:"></asp:Label>
            <asp:TextBox ID="txtFuncionario" runat="server"   Width="189px"></asp:TextBox>
       <br />
        <asp:Label ID="Label2" runat="server" Text="Produto:"></asp:Label>
        <asp:TextBox ID="txtProduto" runat="server" style="margin-left: 18px" Width="202px"></asp:TextBox>
        <br />
       
        <asp:Label ID="Label6" runat="server" Text="Quantidade:"></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 23px" Width="172px"></asp:TextBox>
        <br />

            <asp:Label ID="Label3" runat="server" Text="Data Inicial:"></asp:Label>
            <asp:TextBox ID="txtDataInicio" runat="server" style="margin-left: 15px" Width="185px"></asp:TextBox>
       <br />

            <asp:Label ID="Label4" runat="server" Text="Data Expiração:"></asp:Label>
            <asp:TextBox ID="txtDataExpiracao" runat="server" style="margin-left: 19px" Width="156px"></asp:TextBox>
            <br />
        <br />

        <asp:Label ID="Label5" runat="server" Text="Descrição:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server" Height="64px" style="margin-left: 70px" Width="192px"></asp:TextBox>
        <br />
        <br />
        <asp:Button CssClass="btn btn-primary" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
            <br />
        <br />
       
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
       </center>

        </div>
    </form>
</body>
</html>
