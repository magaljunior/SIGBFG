<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>
   
    <title>Realizar Vendas</title>
    
    <style type="text/css">

    #body {
        width: 100%;
        height: 100%;
        font-weight: bold;
        /*background-image: url(http://localhost:50742/Images/blocos.png)*/
    } 
        #form1 {
            height: 619px;
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
                     txtRua: {
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
                         txtTelefone: {
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
                    },
                    txtCep: {
                        required: true
                    }, 
                    txtCpf: {
                        required: true
                    },
                    txtProdutoQauntidade: {
                        required: true
                    },
                    txtQuantidadeTotal: {
                        required: true
                    }
                }
            })

        //MASCARA
            $('#txtValor').mask("000.000.000,00", { reverse: true })
            $('#txtTelefone').mask('(00) 00000-0000');
            $('#txtCnpj').mask('00.000.000/0000-00', { reverse: true });
            $('#txtData').mask('00/00/0000');
            $('#txtCep').mask('00000-000');
            $('#txtCpf').mask('000.000.000-00', {reverse: true});
        })
    </script>
</head>

<body id="body">

        <div class="container-fluid">
        <center><div style="margin-top: 20px;">
             <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
             <a class="btn btn-dark" href="Listar.aspx">Lista de Vendas</a>
             <a class="btn btn-dark" href="Relatorio.aspx">Relatório de Vendas</a>
            <br />
            <br />
            <h1><asp:Label ID="lblSaída" runat="server" Text="Venda de Produtos"></asp:Label></h1>
            <br />
            </div></center>
       <div>
            <form id="form1" runat="server">            

                <asp:Label ID="Label1" runat="server" Text="Cliente:"></asp:Label>
                <asp:TextBox ID="txtCliente" runat="server" Width="541px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Rua:"></asp:Label>
&nbsp;<asp:TextBox ID="txtRua" runat="server" Width="277px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Número:"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Bairro:"></asp:Label>
                <asp:TextBox ID="txtBairro" runat="server" Width="258px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="CEP:"></asp:Label>
                <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="CNPJ:"></asp:Label>
                <asp:TextBox ID="txtCnpj" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="CPF:"></asp:Label>
                <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Telefone:"></asp:Label>
                <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Valor R$:"></asp:Label>
                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Data:"></asp:Label>
                <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Produtos e Quantidade:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="Quantidade Total:"></asp:Label>
                <asp:TextBox ID="txtQuantidadeTotal" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtProdutoQauntidade" runat="server" Height="96px" Width="284px"></asp:TextBox>
                <br />
                <br />
                <asp:Button class="btn btn-dark" ID="btnRealizarVenda" runat="server" Text="Realizar Venda" OnClick="btnRealizarVenda_Click" />

                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                <br />
                <br />

          </form>
        </div>
    </div>
</body>
</html>
