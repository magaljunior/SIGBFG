<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar_Alterar_EstoquePD.aspx.cs" Inherits="Pages_Alterar_Estoque_Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            background-image: url(http://localhost:50742/Images/blocos.png)
        }
    </style>
</head>
<body id="body" style="height: 569px">
    <div class="container-fluid">
        <div class="row">
            <div style="position: relative; left: 50%; transform: translate(-50%); height: 70px;">>
                    <div class="form-group">
            <form id="form1" runat="server">
                <div>
                    <br />
                    <div id="logo" style="width: 100%;  height:70px" >
                     <br />
                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Inicio</a>
                    <asp:Button class="btn btn-dark" ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar Produtos" />
                    <asp:Button class="btn btn-dark" ID="btnListar" runat="server" OnClick="btnListar_Click" Text="Listar Produtos" />
                    <asp:Button class="btn btn-dark" ID="btnEstoqueAtual" runat="server" OnClick="btnEstoqueAtual_Click" Text="Estoque Atual de Produtos" />
                   </div>
                        <br />
                    <br />
                    <h1>Cadastrar ou Alterar de Estoque</h1>
                    <p>&nbsp;</p>
                    <p>
                        <asp:Label ID="txtNome" runat="server"></asp:Label>
                    </p>
                    <p>
                        <asp:Label runat="server" Text="Quantidade:"></asp:Label>
                        <asp:TextBox ID="txtQuantidade" runat="server" Style="margin-left: 21px"></asp:TextBox>
                    </p>
                    <p>
                        &nbsp;</p>
                    <p>
                        <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
                    </p>
                    <p>
                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                    </p>
                </div>
            </form>
        </div>
        </div>
            </div>
    </div>
</body>
</html>
