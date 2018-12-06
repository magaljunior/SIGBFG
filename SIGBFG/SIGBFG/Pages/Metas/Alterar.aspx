<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Paginas_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Alteração de Metas</title>

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }

    </style>

    <!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {
                txtMes: {
                    required: true,
                },
                txtMeta: {
                    required: true,
                    number: true
                },
                txtProduto: {
                    required: true
                }
            }
        })


    })
</script>

</head>
<body id="body">

     <div class="container-fluid">
              <center><div style="margin-top: 20px;">
                 <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                 <a class="btn btn-dark" href="Cadastrar.aspx">Cadastrar Metas</a>
                 <a class="btn btn-dark" href="Listar.aspx">Lista de Metas</a>        
            
            <form id="form1" runat="server">
            <br />
                <h1>Alterar Meta</h1>
            <br />
            <asp:Label runat="server" Text="Mês:"></asp:Label>
            &nbsp;
                <asp:DropDownList ID="ddlMes" runat="server" Height="30px" Width="142px">
                    <asp:ListItem>Janeiro</asp:ListItem>
                    <asp:ListItem>Fevereiro</asp:ListItem>
                    <asp:ListItem>Março</asp:ListItem>
                    <asp:ListItem>Abril</asp:ListItem>
                    <asp:ListItem>Maio</asp:ListItem>
                    <asp:ListItem>Junho</asp:ListItem>
                    <asp:ListItem>Julho</asp:ListItem>
                    <asp:ListItem>Agosto</asp:ListItem>
                    <asp:ListItem>Setembro</asp:ListItem>
                    <asp:ListItem>Outubro</asp:ListItem>
                    <asp:ListItem>Novembro</asp:ListItem>
                    <asp:ListItem>Dezembro</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                &nbsp
            <asp:Label runat="server" Text="Ano:"></asp:Label>
            <asp:TextBox ID="txtAno" runat="server" Width="95px"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" Text="Quantidade:"></asp:Label>
            <asp:TextBox ID="txtMeta" runat="server" ></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" Text="Produto:"></asp:Label>
                <asp:DropDownList ID="ddlProdutos" runat="server" Height="24px" Width="191px">
                </asp:DropDownList>
            <br />
            <br />
            <asp:Label runat="server" Text="Descrição:"></asp:Label><br />
            <asp:TextBox ID="txtDescricao" runat="server" Height="68px" Width="322px"></asp:TextBox>
                <br />
            <br />
            <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </form>
            </div></center>
         </div>
    </body>
</html>
