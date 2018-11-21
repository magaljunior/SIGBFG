<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastrarPD.aspx.cs" Inherits="Pages_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Produtos</title>

    <!--LINKS DE ACESSO-->
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
            background-image: url(http://localhost:50742/Images/blocos.png)
        }

    </style>

    <!--VALIDAÇÃO-->
    <script type="text/javascript">
        $(document).ready(function () {

            $("#form1").validate({
                rules: {
                    txtNome: {
                        required: true,
                        minlength: 3,
                        maxlength: 100
                    },
                    txtPreco: {
                        required: true
                    },
                    txtQuantidadeMinima: {
                        required: true,
                        maxlength: 11
                    }
                }
            })

            //MASCARA

            $('#txtPreco').mask("000.000.000,00", { reverse: true })

        })
    </script>

</head>
<body  id="body">
    <div class="container-fluid">
                <center><div style="margin-top: 20px;">
                        <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                        <a class="btn btn-dark" href="ListarPD.aspx">Listar Produtos</a>
                        <a class="btn btn-dark" href="Estoque_ProdutosPD.aspx">Estoque Atual de Produtos</a>

            <form id="form1" runat="server">
                <br />

                    <h1>Cadastro de Produtos</h1>
                    <br />

                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" Style="margin-left: 18px" Width="291px"></asp:TextBox>

                     <br />
                     <br />

                    <asp:Label ID="Label2" runat="server" Text="Preço:"></asp:Label>

                    <asp:TextBox ID="txtPreco" runat="server" Style="margin-left: 107px" Width="212px" Height="27px"></asp:TextBox>

                    <br />

                    <br />

                    <asp:Label ID="Label3" runat="server" Text="Quantidade Mínima:"></asp:Label>
                    <asp:TextBox ID="txtQuantidadeMinima" runat="server" Style="margin-left: 16px" Width="200px"></asp:TextBox>

                     <br />

                     <br />

                     <asp:Label runat="server" Text="Foto:"></asp:Label>
                     <asp:FileUpload ID="FileUpload1" runat="server" Style="margin-left: 15px" Width="318px" />

                     <br />

                     <br />

                    <asp:Label ID="Label5" runat="server" Text="Descrição:"></asp:Label>
                    <p style="margin-left: 80px">
                        <asp:TextBox ID="txtDescricao" runat="server" Height="92px" Width="270px"></asp:TextBox>
                    </p>

                    <asp:Button ID="btnSalvar" class="btn btn-dark" runat="server" OnClick="btnSalvar_Click" Text="Salvar" Width="110px" />
                    <br />
                    <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </form>
        </div></center>
    </div>
</body>
</html>
