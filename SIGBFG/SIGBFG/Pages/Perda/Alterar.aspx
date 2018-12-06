﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Paginas_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

     <title>Alteração de Perdas</title>

    <!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {

                txtQuantidade: {
                    required: true,
                    number: true
                }
            }
        })


    })
</script>


    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }

    </style>

</head>


      <!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {
                txtOrdem: {
                    required: true,
                },
                txtQuantidade: {
                    required: true
                },
                txtProduto: {
                    required: true,
                    maxlength: 11
                },
                txtMotivo: {
                    required: true,
                    minlength: 10
                }
            }
        })


    })
</script>


<body id="body">

       <div class="container-fluid">
        <center><div style="margin-top: 20px;">
            <form id="form1" runat="server">

            <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
            <a class="btn btn-dark" href="Cadastrar.aspx">Cadastrar Perdas</a>
            <a class="btn btn-dark" href="Listar.aspx">Lista de Perdas</a>
            <a class="btn btn-dark" href="TotalPerdas.aspx">Relatório de Perdas</a>
                <br />
               <br />
               <h1>Alterar perda de Produto</h1>
            <asp:Label runat="server" Text="Motivo:"></asp:Label>
            <br />
            <br /> 
               <asp:DropDownList ID="ddlMotivos" runat="server" Height="27px" style="margin-left: 54px" Width="451px">
               </asp:DropDownList>
               <br /> <br />
            <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" Text="Alterar" OnClick="btnSalvar_Click1" />
            <br />
                <br/>
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
             </form>
        </div></center>
     </div>
</body>
</html>
