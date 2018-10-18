<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Pages_ADM_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">

        <center>
           <br />
                 <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
            <a class="btn btn-primary" href="../Usuario/Cadastro_usuario.aspx">Usuários</a>
            <a class="btn btn-primary" href="../Produtos/ListarPD.aspx">Produtos</a>
            <a class="btn btn-primary" href="../Metas/Listar.aspx">Metas</a>
            <a class="btn btn-primary" href="../Perda/Listar.aspx">Perdas</a>
            <a class="btn btn-primary" href="../Os/Cadastrar.aspx">Ordem de Serviço</a>
            <a class="btn btn-primary" href="../Giro/GiroEstoque.aspx">Calculadora</a>
              </div>
                
            <div>
                <asp:Label ID="lblBemVindo" runat="server" Font-Bold="True" Font-Size="Large" Text="Bem Vindo "></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="lblSig" runat="server" Font-Bold="True" Font-Size="X-Large" Text="SIG BFG"></asp:Label>
            </div>
    </div>
    </form>
</body>
</html>
