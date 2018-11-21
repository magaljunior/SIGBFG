<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Produção.aspx.cs" Inherits="Pages_Relatorios_Produção" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <title>Gráfico de Produção</title>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            background-image: url(http://localhost:50742/Images/blocos.png)
        }
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
    </style>

</head>
<body id="body">
    <div class="container-fluid">
        <center>
                <div>
             <div style="height: 70px;">
                  <div id="nav">
                         <ul>
                             <li><a class="btn btn-dak" href="Index.aspx">Página Inicial</a></li>

                             <li><a class="btn btn-dark" href="#">Usuário</a>
                                 <ul>
                                 <li><a class="btn btn-dark" href="../Usuario/Cadastrar_Usuario.aspx">Cadastrar</a></li>
                                 <li><a class="btn btn-dark" href="../Usuario/Listar_Usuario.aspx">Listar</a></li>
                                 </ul>
                             </li>
                             
                             <li><a class="btn btn-dark" href="#">Produtos</a>
                                  <ul>
                                  <li><a class="btn btn-dark" href="../Produtos/CadastrarPD.aspx">Cadastrar</a></li>
                                  <li><a class="btn btn-dark" href="../Produtos/ListarPD.aspx">Listar</a></li>
                                  <li><a class="btn btn-dark" href="../Produtos/Estoque_ProdutosPD.aspx">Estoque</a></li>
                                  </ul>   
                             </li>

                             <li><a class="btn btn-dark" href="#">Metas</a>
                                     <ul>
                                     <li><a class="btn btn-dark" href="../Metas/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a class="btn btn-dark" href="../Metas/Listar.aspx">Listar</a></li>                                                                    
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="#">Despesas</a>
                                     <ul>
                                     <li><a class="btn btn-dark" href="../Despesa/CadastrarDespesa.aspx">Cadastrar</a></li>
                                     <li><a class="btn btn-dark" href="../Despesa/ListarDespesa.aspx">Listar</a></li>                                                                    
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="#">Perdas</a>
                                     <ul>
                                     <li><a class="btn btn-dark" href="../Perda/Cadastrar.aspx">Cadastrar</a></li>
                                         <li><a class="btn btn-dark" href="../Perda/Listar.aspx">Listar</a></li>
                                     <li><a class="btn btn-dark" href="../Perda/TotalPerdas.aspx">Total</a></li>  
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="#">Ordem Serviço</a>
                                     <ul>
                                     <li><a class="btn btn-dark" href="../Os/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a class="btn btn-dark" href="../Os/Listar.aspx">Listar</a></li>
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="../Giro/GiroEstoque.aspx">Calculadora</a></li>

                             </ul>
                        </div>
             </div>
                    </div>

                <h1 style="margin-top: 130px;">Gráfico de Produção</h1>
            <br />
                <div id="chart_div" style="width: 900px; height: 500px; margin-bottom:20px;"></div>
                </div>
            </center>
</body>
</html>
