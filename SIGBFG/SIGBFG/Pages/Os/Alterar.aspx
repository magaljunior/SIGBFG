<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Pages_Os_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.js"></script>

    <title>Alteração de Ordem de Serviço</title>
    
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
                    
                    txtFuncionario: {
                        required: true
                    },
                     ddlProdutos: {
                        required: true
                    },
                      txtQuantidade: {
                          required: true,
                          number: true
                    },
                        txtDataInicio: {
                            required: true,
                            date: true

                    },
                         txtDataExpiracao: {
                             required: true,
                             date: true
                    }
                }
            })

        //MASCARA
            $('#txtDataInicio').mask('00/00/0000');
            $('#txtDataExpiracao').mask('00/00/0000');
        })
    </script>

</head>
<body id="body">
    <form id="form1" runat="server">
    <div class="container-fluid">
        <center>
                    <div style="margin-top: 20px;">

                      <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>

                      <a style="width:225px;" class="btn btn-dark" href="../Os/Cadastrar.aspx">Cadastrar Ordem de Serviço</a>

                      <a style="width:200px;" class="btn btn-dark" href="../Os/Listar.aspx">Listar Ordem de Serviço</a>

                      <a style="width:225px;" class="btn btn-dark" href="../Os/Relatorio.aspx">Relatório de Produção</a>

                   </div>
            <br />
        <br />
        <h1>
            Alteração de Ordem de Serviço
        </h1>
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Funcionário:"></asp:Label>
            <asp:TextBox ID="txtFuncionario" runat="server"   Width="189px"></asp:TextBox>
                    <br />
       <br />
                    &nbsp;&nbsp;

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label3" runat="server" Text="Data Inicial:"></asp:Label>
            <asp:TextBox ID="txtDataInicio" runat="server" style="margin-left: 15px" Width="185px"></asp:TextBox>
                    <br />
       <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="Label4" runat="server" Text="Data Expiração:"></asp:Label>
            <asp:TextBox ID="txtDataExpiracao" runat="server" style="margin-left: 19px" Width="156px"></asp:TextBox>
            <br />
                    <br />

        <asp:Label ID="Label5" runat="server" Text="Descrição:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server" Height="64px" style="margin-left: 70px" Width="192px"></asp:TextBox>
        <br />
        <br />
        <asp:Button CssClass="btn btn-dark" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
            <br />
        <br />
       
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                    <br />
       </center>

        </div>
    </form>
</body>
</html>
