<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarPD.aspx.cs" Inherits="Pages_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Alteração de Produtos</title>

    <!--LINKS DE ACESSO-->
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_BR.min.js"></script>
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
                        number: true
                    }
                }
            })

        //MASCARA

            $('#txtPreco').mask("000.000.000,00", { reverse: true })

        })

    </script>

</head>
<body id="body">
    <div class="container-fluid">
            <center><div style="margin-top: 20px;">
            <form id="form1" runat="server">
                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <a class="btn btn-dark" href="CadastrarPD.aspx">Cadastrar Produtos</a>
                    <a class="btn btn-dark" href="ListarPD.aspx">Listar Produtos</a>&nbsp;&nbsp;
                    <br />
                    <br />
                    <h1>Alteração de Produtos</h1>
                    <br />
                    <br />
                <p>
                    <asp:Label runat="server" Text="Nome:" ID="lblNome"></asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" Style="margin-left: 23px" Width="255px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                </p>
                <asp:Label ID="Label2" runat="server" Text="Preço:"></asp:Label>
                <asp:TextBox ID="txtPreco" runat="server" Style="margin-left: 22px" Width="157px"></asp:TextBox>
                <br />
                <br />
                <p>
                    <asp:Label ID="Label3" runat="server" Text="Quantidade Mínima:"></asp:Label>
                    <asp:TextBox ID="txtQuantidadeMinima" runat="server" Style="margin-left: 25px" Width="57px"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label5" runat="server" Text="Descrição:"></asp:Label>
                </p>
                <div style="margin-left: 80px">
                    <asp:TextBox ID="txtDescricao" runat="server" Height="93px" Width="290px"></asp:TextBox>
                    <br />
                </div>
                    <br />
                <asp:Button class="btn btn-dark"  ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
                <br />
                <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </form>
        </div></center>
        </div>
</body>
</html>
