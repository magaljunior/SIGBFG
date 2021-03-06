﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/additional-methods.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>


    <title>Cadastro de Perdas</title>

    <!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {

                txtQuantidade: {
                    required: true,
                    number: true
                },
                txtData: {
                    required: true
                }
            }
        })

        $('#txtData').mask('00/00/0000');
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

<body id="body">
        <div class="container-fluid">
            
            <center><div style="margin-top: 20px;">
            
            <form id="form1" runat="server">

            <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
            <a class="btn btn-dark" href="Listar.aspx">Lista de Perdas</a>
            <a class="btn btn-dark" href="TotalPerdas.aspx">Relatório de Perdas</a>

            <br />
                <br />
                <h1>Perda de Produto</h1>

              <br />
            <asp:Label ID="Label2" runat="server" Text="Produto:"></asp:Label>
                <asp:DropDownList ID="ddlProdutos" runat="server" Height="31px" style="margin-left: 13px" Width="244px">
                </asp:DropDownList>
           
            <br />
            <br />
        
        <asp:Label ID="Label3" runat="server" Text="Quantidade:"></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 9px" Height="27px" Width="155px"></asp:TextBox>
        <br />

        
        <br />
            <asp:Label ID="Label4" runat="server" Text="Motivo:"></asp:Label>

        
                <br />

        
        <br />

        
                <asp:DropDownList ID="ddlMotivos" runat="server" Height="31px" style="margin-left: 83px" Width="416px">
                </asp:DropDownList>
        
                <br />
                <br />
                <asp:Label runat="server" Text="Data:"></asp:Label>
                <asp:TextBox ID="txtData" runat="server" Width="132px"></asp:TextBox>
        
            <br />
            <br/>
           <asp:Button CssClass="btn btn-dark" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar"  />
                <br />
            <br/>
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                <br />
                    </form>
                </div></center>
        </div>
</body>
</html>
