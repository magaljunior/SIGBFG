<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Client_Index" %>

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
    

    <div class="container-fluid">

        <div style="margin-top: 20px;" class="row">
             <div class="col-sm-11" style="position: relative; left: 50%; transform: translate(-50%); height: 70px;">
                  <div style="margin-top:20px; position: relative; left: 50%; transform: translate(-50%);" id="nav">
                         <ul>
                             <li><a class="btn btn-dark" href="../ADM/Index.aspx">Página Inicial</a></li>

                             <li><a class="btn btn-dark" href="#">Ordem Serviço</a>
                                     <ul>
                                     <a href="Listar.aspx">Listar Os</a>
                                     </ul>
                             </li>

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
