﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Pages_ADM_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Sistema Integrado de Gestão BFG</title>

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
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }

        #logoff {
            width: 40px;
            height: 40px;
            float: right;
        }
    </style>

</head>
<body id="body">


    <div class="col-sm-12 container-fluid">
        <center>
                    <div style="margin-top: 20px;">

                      <a class="btn btn-dark" href="../Usuario/Cadastrar_Usuario.aspx">Usuários</a>

                      <a class="btn btn-dark" href="../CadCliente/CadastraCL.aspx">Clientes</a>
                             
                      <a class="btn btn-dark" href="../Produtos/CadastrarPD.aspx">Produtos</a>

                      <a class="btn btn-dark" href="../Estoque/Estoque_ProdutosPD.aspx">Estoque</a>

                      <a class="btn btn-dark" href="../Metas/Cadastrar.aspx">Metas</a>

                      <a class="btn btn-dark" href="../Despesa/CadastrarDespesa.aspx">Despesas</a>

                      <a class="btn btn-dark" href="../Perda/Cadastrar.aspx">Perdas</a>

                      <a style="width:160px;" class="btn btn-dark" href="../Os/Cadastrar.aspx">Ordem de Serviço</a>

                      <a class="btn btn-dark" href="../Vendas/Cadastrar.aspx">Vendas</a>

                      <a class="btn btn-dark" href="../Motivos/Cadastrar_Motivo.aspx">Motivos</a>

                      <a class="btn btn-dark" href="../Giro/GiroEstoque.aspx">Calculadora</a>

                      <a style="float: right" class="btn btn-dark" href="../Login.aspx">Logoff</a>

                    </div>

                <div>                                   
                      <div>
                            <h1 style="margin-top: 40px;">Bem-Vindo</h1>
                            <br />
                            <h1>Sistema Integrado de Gestão BFG</h1>
                          <br />
                                <img title="Blocos Frei Galvão" src="../../Images/BFG.jpg" />
                      </div>       
               </div>
            </center>
    </div>

</body>
</html>
