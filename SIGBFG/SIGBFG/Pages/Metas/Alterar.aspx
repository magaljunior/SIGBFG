<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Paginas_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

</head>
<body>

     <div class="container-fluid">
        <br />
         <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
         <a class="btn btn-primary" href="Cadastrar.aspx">Cadastrar Metas</a>
         <a class="btn btn-primary" href="Listar.aspx">Lista de Metas</a>
         

        <div class="form-group">
            

    <form id="form1" runat="server">
        <div>

            <div style="height: 349px">
            <br />
                <h1>Alterar Meta</h1>
            <br />
            <asp:Label runat="server" Text="Mês:"></asp:Label>
            <asp:TextBox ID="txtMes" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="Ano:"></asp:Label>
            <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" Text="Meta:"></asp:Label>
            <asp:TextBox ID="txtMeta" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" Text="Produto:"></asp:Label>
            <asp:TextBox ID="txtProduto" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" Text="Descrição:"></asp:Label>
            <asp:TextBox ID="txtDescricao" runat="server" Height="68px" Width="322px"></asp:TextBox>
                <br />
            <br />
            <asp:Button class="btn btn-primary" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
    </div>
        </div>
    </form>
            </div>
         </div>
</body>
</html>
