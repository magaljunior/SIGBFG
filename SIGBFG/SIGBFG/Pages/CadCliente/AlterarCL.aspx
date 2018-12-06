<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarCL.aspx.cs" Inherits="Paginas_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
        <script src="../../Scripts/Validacao/additional-methods.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <title>Alterar Clientes</title>

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
                           required: true,
                           number: true
                    },
                        txtCnpj: {
                            required: true,
                            cnpj: true
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
                <form id="form1" runat="server">

                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <a class="btn btn-dark" href="CadastraCL.aspx">Cadastrar Clientes</a>
                    <a class="btn btn-dark" href="ListarCL.aspx">Listar Cliente</a>
                    <br/>
                    <br />


                <h1>Alterar Clientes</h1>
                    <br />
                &nbsp;
                <asp:Label ID="lblCliente" runat="server" Text="Cliente:"></asp:Label>

            <asp:TextBox ID="txtCliente" runat="server" Height="27px" OnTextChanged="txtCliente_TextChanged" Width="350px"></asp:TextBox>
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço: "></asp:Label>

            <asp:TextBox ID="txtEndereco" runat="server" Width="350px" Height="27px"></asp:TextBox>

                    <br />
                    <br />

                <asp:Label ID="Label1" runat="server" Text="Bairro: "></asp:Label>

            <asp:TextBox ID="txtBairro" runat="server" Width="200px" Height="27px"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label2" runat="server" Text="Nº."></asp:Label>

            <asp:TextBox ID="txtNumero" runat="server" Width="50px" Height="27px"></asp:TextBox>
                <br />
                <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="lblCnpj" runat="server" Text="CNPJ: "></asp:Label>

            <asp:TextBox ID="txtCnpj" runat="server" Width="185px" Height="27px"></asp:TextBox>
              
            &nbsp;
                    <br />
                    <br />
              
            <asp:Label ID="lblTel" runat="server" Text="Telefone:"></asp:Label>
      
                <asp:TextBox ID="txtTel" runat="server" Width="128px" Height="27px"></asp:TextBox>

                    <br />
                    <br />
                    <br />

            <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" Text="Alterar" OnClick="btnSalvar_Click1" />

                    <br />
                    <br />

        <asp:Label ID="lblMensagem" runat="server" Height="20px"></asp:Label>
                    <br />
               </form>
            </div></center>
        </div>
</body>
</html>
