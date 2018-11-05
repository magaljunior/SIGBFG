﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar_Usuario.aspx.cs" Inherits="Pages_Usuario_Alterar_Funcionario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div>
                <br />
                <a href="Cadastrar_Usuario.aspx">Cadastrar Usuários</a>
                <a href="Listar_Usuario.aspx">Listar Usuários</a>
                <br />
                <h1>Alteração de Usuários</h1>
                <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                <asp:TextBox ID="txtNome" runat="server" style="margin-left: 12px; margin-bottom: 0px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 15px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Senha:"></asp:Label>
                <asp:TextBox ID="txtSenha" runat="server" style="margin-left: 10px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Tipo:"></asp:Label>
                <asp:DropDownList ID="txtTipo" runat="server" style="margin-left: 7px">
                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                    <asp:ListItem Value="2">Funcionário</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
                <br />
                <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                <br />
                <br />

            </div>
        </div>
    </div>
    </form>
</body>
</html>
