<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Pages_ADM_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
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
                        color: #ffff;
                        text-decoration: none;
                        font-family: arial;
                        background: #0094ff;
                        display: block;
                        padding: 10px;
                    }

                        #nav ul li a:hover {
                            background: #4cff00;
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
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">

            <center>
           <br />
                 <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
                     <div id="nav">
                         <ul>
                             <li><a class="btn btn-primary" href="Index.aspx">Página Inicial</a></li>
                             <li><a class="btn btn-primary" href="#">Usuário</a>
                             <ul>
           <li> <a href="../Usuario/Listar_usuario.aspx">Cadastro</a></li>
                                 <li><a href="../Usuario/Listar_usuario.aspx">Listar</a></li>
                                 <li><a href="../Usuario/Alterar_usuario.aspx">Alterar</a></li>
                                 </ul>
                             </li>
                             
                                 <li><a class="btn btn-primary" href="#">Produtos</a>
                                     <ul>
                                     <li><a href="../Produtos/CadastrarPD.aspx">Cadastrar</a></li>
                                         <ul>
                                     <li><a href="#">Alterar</a>
                                     <li><a href="../Produtos/AlterarPD.aspx">Produtos</a></li>
                                     <li><a href="../Produtos/Cadastrar_Alterar_EstoquePD.aspx">Estoque</a></li>
                                         </li>
                                     <li><a href="../Produtos/ListarPD.aspx">Listar Produtos</a></li>
                                     <li><a href="../Produtos/Estoque_ProdutosPD.aspx">Estoque Produtos</a></li>
                                     
                                 </ul>
                                 </ul>
                         </li>
                         <ul>
                          <li><a class="btn btn-primary" href="#">Metas</a>
                                     <ul>
                                     <li><a class="btn" btn-primary" href="../Metas/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Metas/Alterar.aspx">Alterar</a></li>
                                     <li><a href="../Metas/Listar.aspx">Listar</a></li>                                                                    
                                 </ul>
                                 </ul>
                         </li>
                          <ul>
                          <li><a class="btn btn-primary" href="#">Perdas</a>
                                     <ul>
                                     <li><a href="../Perda/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Perda/Listar.aspx">Listar</a></li>
                                     <li><a href="../Perda/Alterar.aspx">Alterar</a></li>
                                     <li><a href="../Perda/TotalPerdas.aspx">TotalPerdas</a></li>  
                                 </ul>
                                 </ul>
                         </li>
            <ul>
                          <li><a class="btn btn-primary" href="#">Ordem Serviço</a>
                                     <ul>
                                     <li><a href="../Os/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Os/Alterar.aspx">Alterar</a></li>
                                     <li><a href="../Os/Listar.aspx">Listar</a></li>
                                     </ul>
                                 </ul>
                         </li>
          <ul>
                             <li><a class="btn btn-primary" href="../Giro/GiroEstoque.aspx">Calculadora</a></li>
                             
                             <ul>
           
            
                             </ul>
              </div>
                </div>
            <div id="title">
                <br />
                <br />
                <h1>Bem-Vindo</h1>
                <br />
                <br />
                <br />
                <br />
                <br />
                <h2>Sistema Integrado de Gestão BFG</h2>
            </div>
        </div>
    </form>
</body>
</html>
