<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Cadastro de Metas</title>

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

</head>

<!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {
                txtMes: {
                    required: true,
                },
                txtMeta: {
                    required: true
                },
                txtProduto: {
                    required: true
                }
            }
        })


    })
</script>

<body id="body">
    <div class="container-fluid">
             <center><div style="margin-top: 20px;">
                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <a class="btn btn-dark" href="Listar.aspx">Lista de Metas</a>

            <form id="form1" runat="server">
                    <br />
                    <h1>Cadastro de Metas</h1>
                    <br />
                    <asp:Label runat="server" Text="Mês:"></asp:Label>
                    <asp:TextBox ID="txtMes" runat="server" Width="109px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="Ano:"></asp:Label>
                    <asp:TextBox ID="txtAno" runat="server" Width="71px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Meta:"></asp:Label>
                    <asp:TextBox ID="txtMeta" runat="server" Width="127px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Produto:"></asp:Label>
                    <asp:DropDownList ID="ddlProdutos" runat="server" Height="30px" Width="141px">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Descrição:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDescricao" runat="server" Height="56px" Width="246px"></asp:TextBox>
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
