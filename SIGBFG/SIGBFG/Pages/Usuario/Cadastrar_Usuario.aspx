<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar_Usuario.aspx.cs" Inherits="Pages_Usuario_Cadastrar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

     <style type="text/css">
        #nav {
            width: 1023px;
            margin: auto;
            height: 237px;
        }

            #nav ul {
                padding: 0;
                list-style: none;
            }

                #nav ul li {
                    float: left;
                    text-align: center;
                    width: 120px;
                    margin: 1px;
                }

                    #nav ul li a {
                        color: #ffffff;
                        text-decoration: none;
                        font-family: arial;
                        background: #343a40;
                        display: block;
                        padding: 10px;
                    }

                        #nav ul li a:hover {
                            background: #868686;
                            color: #000000;
                        }

                    #nav ul li ul {
                        display: none;
                    }

                    #nav ul li:hover ul {
                        display: block;
                    }

                    #title {
                        display: inline-block;
                    }
        #body {
            width: 100%;
            height: 100%;
            background-image: url(http://localhost:50742/Images/blocos.png)
        }
    </style>
</head>
<body id="body">
    <form id="form1" runat="server">
    <div class="container-fluid">
                <div style="margin-top: 10px;" class="row">
             <div class="col-sm-11" style="position: relative; left: 50%; transform: translate(-50%); height: 70px;">
                  <div style="margin-top:20px; position: relative; left: 50%; transform: translate(-50%);" id="nav">
                         <ul>
                             <li><a class="btn btn-dak" href="../ADM/Index.aspx">Página Inicial</a></li>

                             <li><a class="btn btn-dark" href="#">Usuário</a>
                                 <ul>
                                     <li><a href="Cadastrar_Usuario.aspx">Cadastrar Usuarios</a></li>
                                     <li><a href="Listar_Usuario.aspx">Listar Usuarios</a></li>
                                 </ul>
                             </li>
                             
                             <li><a class="btn btn-dark" href="#">Produtos</a>
                                  <ul>
                                  <li><a href="../Produtos/CadastrarPD.aspx">Cadastrar</a></li>
                                  <li><a href="../Produtos/ListarPD.aspx">Listar</a></li>
                                  <li><a href="../Produtos/Estoque_ProdutosPD.aspx">Estoque de Produtos</a></li>
                                  </ul>   
                             </li>

                             <li><a class="btn btn-dark" href="#">Metas</a>
                                     <ul>
                                     <li><a class="btn btn-dark" href="../Metas/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Metas/Listar.aspx">Listar</a></li>                                                                    
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="#">Perdas</a>
                                     <ul>
                                     <li><a href="../Perda/Cadastrar.aspx">Cadastrar</a></li>
                                         <li><a href="../Perda/Listar.aspx">Listar</a></li>
                                     <li><a href="../Perda/TotalPerdas.aspx">Total de Perdas</a></li>  
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="#">Ordem Serviço</a>
                                     <ul>
                                     <li><a href="../Os/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Os/Listar.aspx">Listar</a></li>
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="../Giro/GiroEstoque.aspx">Calculadora</a></li>

                             </ul>
                        </div>
             </div>
                    </div>

        <div class="row">
            <div class="text-center" style="margin-top:100px; position: relative; left: 50%; transform: translate(-50%);">
            <br />
            <br />
            <h1>Cadastro de Funcionarios</h1>
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
                <asp:ListItem Value="1">Administrador</asp:ListItem>
                <asp:ListItem Value="2">Funcionário</asp:ListItem>
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
            </div>
        </div>
    </div>
    </form>
</body>
</html>
