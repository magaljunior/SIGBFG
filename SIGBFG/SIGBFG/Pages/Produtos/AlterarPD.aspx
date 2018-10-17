﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarPD.aspx.cs" Inherits="Pages_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 617px;
        }

        #TextArea1 {
            height: 88px;
            width: 276px;
        }

        #txtDescricao {
            height: 92px;
            width: 316px;
        }
    </style>

    <!--LINKS DE ACESSO-->
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_BR.min.js"></script>
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
<body style="height: 620px">
    <div class="container-fluid">
        <div class="form-group">
            <center>
            <form id="form1" runat="server">
                <div style="height: 150px">
                    <br />
                    <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
                    <a class="btn btn-primary" href="CadastrarPD.aspx">Cadastrar Produtos</a>
                    <a class="btn btn-primary" href="ListarPD.aspx">Listar Produtos</a>
                    <a class="btn btn-primary" href="Estoque_ProdutosPD.aspx">Estoque Atual de Produtos</a>
                    <br />
                    <br />
                    <h1>Alteração de Produtos</h1>
                    <br />
                </div>
                    <br />
                <p>
                    <asp:Label runat="server" Text="Nome:"></asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" Style="margin-left: 23px" Width="255px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                </p>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Preço:"></asp:Label>
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
                <asp:Button class="btn btn-primary"  ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
                <br />
                <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </form>
        </div>
        </center>
    </div>
</body>
</html>
