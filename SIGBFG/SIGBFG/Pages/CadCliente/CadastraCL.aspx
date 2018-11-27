<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastraCL.aspx.cs" Inherits="Pages_Cliente_CadastraCL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <title>Cadastro de Clientes</title>

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
                        required: true
                    },
                     txtEnd: {
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
                    }
                }
            })

        //MASCARA

            $('#txtTel').mask('(00) 00000-0000');
            $('#txtCnpj').mask('00.000.000/0000-00', { reverse: true });
        })
    </script>

</head>
<body id="body">
        <div class="container-fluid">
            <center><div style="margin-top: 20px;">

                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <a class="btn btn-dark" href="ListarCL.aspx">Listar Cliente</a>
                    
            <br />
            <br />
        <form id="form1" runat="server">
        <h1>Cadastro de Clientes</h1>
            <br />
                    <p>
            <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNome" runat="server" Width="350px"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEnd" runat="server" Text="Endereço: "></asp:Label>
            <asp:TextBox ID="txtEnd" runat="server" Width="350px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
                    <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Bairro: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBairro" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Nº. : "></asp:Label>
            <asp:TextBox ID="txtNumero" runat="server" Width="87px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblCnpj" runat="server" Text="CNPJ: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCnpj" runat="server" Width="155px"></asp:TextBox>
      </p>
                    <p>
            <asp:Label ID="Label3" runat="server" Text="Telefone: "></asp:Label>
            <asp:TextBox ID="txtTel" runat="server" Width="155px"></asp:TextBox>
      </p>
            <br />
        <asp:Button class="btn btn-dark" ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar" />
        <br />
            <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
    </form>
       </div></center>
  </div>
</body>
</html>
