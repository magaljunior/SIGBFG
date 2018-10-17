<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastrarPD.aspx.cs" Inherits="Pages_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!--ESTILO-->
    <style type="text/css">
        #TextArea1 {
            height: 102px;
            width: 304px;
            margin-left: 80px;
        }

        #txtDescricao {
            height: 82px;
            width: 246px;
            margin-top: 3px;
        }

        #form1 {
            height: 568px;
        }
    </style>

    <!--LINKS DE ACESSO-->
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

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
<body style="height: 631px">
    <div class="container-fluid">
        <center>
            <div class="form-group">
                <br />
                <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
                        <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
                        <a class="btn btn-primary" href="ListarPD.aspx">Listar Produtos</a>
                        <a class="btn btn-primary" href="Estoque_ProdutosPD.aspx">Estoque Atual de Produtos</a>
                    </div>
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

                    <asp:Button ID="btnSalvar" class="btn btn-primary" runat="server" OnClick="btnSalvar_Click" Text="Salvar" Width="110px" />
                    <br />
                    <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </form>
        </div>
            </center>
    </div>
</body>
</html>
