<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Paginas_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <title>Alteração de Vendas</title>

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
                    txtCliente: {
                        required: true
                    },
                    txtEndereco: {
                        required: true
                    },
                    txtBairro: {
                        required: true
                    },
                    txtNumero: {
                        required: true
                    },
                    txtCnpj: {
                        required: true
                    },
                    txtTel: {
                        required: true
                    },
                    txtQuantidade: {
                        required: true,
                        maxlength: 11
                    },
                    txtValor: {
                        required: true
                    },
                    txtData: {
                        required: true
                    }
                }
            })
        })
    </script>

</head>

<!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {
                txtCliente: {
                    required: true
                },
                txtEndereco: {
                    required: true
                },
                txtBairro: {
                    required: true
                },
                txtNumero: {
                    required: true
                },
                txtCnpj: {
                    required: true
                },
                txtTel: {
                    required: true
                },
                txtQuantidade: {
                    required: true,
                    maxlength: 11
                },
                txtValor: {
                    required: true
                },
                txtData: {
                    required: true
                }
            }
        })
    })
</script>

<body id="body">     
            <div class="container-fluid">
                <div>
                        <form id="form1" runat="server">
                        <br />
                            <center><div style="margin-top: 20px;">
                        <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                        <a class="btn btn-dark" href="Cadastrar.aspx">Realizar Venda</a>
                        <a class="btn btn-dark" href="Listar.aspx">Listar Vendas</a>
                        <br />
                                <br />
                        <h1>
                            <asp:Label ID="Label4" runat="server" Text="Altera Venda"></asp:Label></h1>
                            </div></center>
                        <p>
                            &nbsp;</p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCliente" runat="server" Text="Cliente:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="txtCliente" runat="server" Height="27px" OnTextChanged="txtCliente_TextChanged" Width="350px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEndereco" runat="server" Width="350px" Height="27px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Bairro: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBairro" runat="server" Width="200px" Height="27px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Nº."></asp:Label>
                &nbsp;&nbsp;
            <asp:TextBox ID="txtNumero" runat="server" Width="50px" Height="27px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCnpj" runat="server" Text="CNPJ: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCnpj" runat="server" Width="155px" Height="27px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTel" runat="server" Text="Telefone:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtTel" runat="server" Width="128px" Height="27px"></asp:TextBox>

                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:Label runat="server" Text="Produto:" ID="lblProduto"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlProdutos" runat="server" Height="28px" style="margin-left: 0px" Width="193px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="Quantidade:" ID="lblQuantidae"></asp:Label>
                &nbsp;
            <asp:TextBox ID="txtQuantidade" runat="server" Style="margin-left: 13px" Width="155px" Height="27px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label3" runat="server" Text="Valor:  "></asp:Label>
                <asp:TextBox ID="txtValor" runat="server" Height="27px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="Data de Saída: " ID="lblData"></asp:Label>
                &nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txtData" runat="server" Height="27px" Width="155px" Style="margin-left: 0px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" Text="Alterar" OnClick="btnSalvar_Click1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMensagem" runat="server" Height="20px"></asp:Label>
                <br />
                <br />
               </form>
            </div>
        </div>
</body>
</html>
