<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Pages_ADM_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                    #body {
                        width: 100%;
                        height: 100%;
                        background-image: url(depositphoto.jpg);
                    }
    </style>
</head>
<body>
    

    <div class="container-fluid">

        <div style="margin-top: 20px;" class="row">
             <div class="col-sm-12" style="height: 150px; background-color:blue;">
                  <div style="margin-top:50px;" id="nav">
                         <ul>
                             <li><a class="btn btn-primary" href="Index.aspx">Página Inicial</a></li>

                             <li><a class="btn btn-primary" href="#">Usuário</a>
                                 <ul>
                                 <li> <a href="../Usuario/Cadastro_usuario.aspx">Cadastrar</a></li>
                                 <li><a href="../Usuario/Listar_usuario.aspx">Listar</a></li>
                                 </ul>
                             </li>
                             
                             <li><a class="btn btn-primary" href="#">Produtos</a>
                                  <ul>
                                  <li><a href="../Produtos/CadastrarPD.aspx">Cadastrar</a></li>
                                  <li><a href="../Produtos/ListarPD.aspx">Listar</a></li>
                                  <li><a href="../Produtos/Estoque_ProdutosPD.aspx">Estoque de Produtos</a></li>
                                  </ul>   
                             </li>

                             <li><a class="btn btn-primary" href="#">Metas</a>
                                     <ul>
                                     <li><a class="btn btn-primary" href="../Metas/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Metas/Listar.aspx">Listar</a></li>                                                                    
                                     </ul>
                             </li>

                             <li><a class="btn btn-primary" href="#">Perdas</a>
                                     <ul>
                                     <li><a href="../Perda/Cadastrar.aspx">Cadastrar</a></li>
                                         <li><a href="../Perda/Listar.aspx">Listar</a></li>
                                     <li><a href="../Perda/TotalPerdas.aspx">Total de Perdas</a></li>  
                                     </ul>
                             </li>

                             <li><a class="btn btn-primary" href="#">Ordem Serviço</a>
                                     <ul>
                                     <li><a href="../Os/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Os/Listar.aspx">Listar</a></li>
                                     </ul>
                             </li>

                             <li><a class="btn btn-primary" href="../Giro/GiroEstoque.aspx">Calculadora</a></li>

                             </ul>
                        </div>
             </div>
                    </div>

                <div class="row">                                   
                      <div class="text-center" style="margin-top:150px; position: relative; left: 50%; transform: translate(-50%);"  id="title">
                            <h1>Bem-Vindo</h1>
                            <br />
                            <br />
                            <h2>Sistema Integrado de Gestão BFG</h2>
                      </div>       
               </div>
        </div>

    </body>
</html>
