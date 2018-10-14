<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../Content/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../Scripts/jquery.mask.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>

</head>





<body style="height: 294px">
    <div class="container-fluid">
        <br />
         <a class="btn btn-dark" href="Listar.aspx">Lista de Metas</a>
         

        <div class="form-group">
            <br />
           

            <form id="form1" runat="server">
                <div style="height: 349px">
                   <h1>Cadastro de Metas</h1>
                    <br />
                   
                    <asp:Label runat="server" Text="Mês"></asp:Label>
                    <asp:TextBox ID="txtMes" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="Ano"></asp:Label>
                    <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Meta"></asp:Label>
                    <asp:TextBox ID="txtMeta" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Produto"></asp:Label>
                    <asp:TextBox ID="txtProduto" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Descrição"></asp:Label>
                    <asp:TextBox ID="txtDescricao" runat="server" Height="68px" Width="322px"></asp:TextBox>
                    <br />
    <br />
            <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                    <br />
                    
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </div>
            </form>

        </div>


    </div>

</body>
</html>
