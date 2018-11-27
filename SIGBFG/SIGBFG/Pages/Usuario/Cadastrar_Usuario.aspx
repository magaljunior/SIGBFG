﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar_Usuario.aspx.cs" Inherits="Pages_Usuario_Cadastrar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Cadastro de Usuários</title>

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
                    txtEmail: {
                        required: true
                    },
                    txtSenha: {
                        required: true
                    },
                    txtTipo: {
                        required: true
                    }
                }
            })
        })
    </script>
</head>
<body id="body">
    <form id="form1" runat="server">
    <div class="container-fluid">
                <center><div style="margin-top: 20px;">
                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <a class="btn btn-dark" href="Listar_Usuario.aspx">Listar Usuários</a>
            <br />
            <br />
            <h1>Cadastro de Usuários</h1>
            <br />
            <asp:Label runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" style="margin-left: 17px; margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 21px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha:"></asp:Label>
            <asp:TextBox ID="txtSenha" runat="server" style="margin-left: 15px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tipo:"></asp:Label>
            <asp:DropDownList ID="txtTipo" runat="server" style="margin-left: 7px">
                <asp:ListItem Value="Administrador">Administrador</asp:ListItem>
                <asp:ListItem Value="Funcionário">Funcionário</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
            <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            </div></center>
        </div>
    </form>
</body>
</html>
