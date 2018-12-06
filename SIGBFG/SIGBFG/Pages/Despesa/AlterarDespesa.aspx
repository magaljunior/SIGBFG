﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarDespesa.aspx.cs" Inherits="Paginas_AlterarDespesa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alteração de Despesas</title>

     <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/additional-methods.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }

    </style>

    
    <script type="text/javascript">
        $(document).ready(function () {

            $("#form1").validate({
                rules: {
                    txtData: {
                        required: true,
                        date: true
                    },
                    txtQuantidade: {
                        required: true,
                        number: true
                    },
                    txtDescricao: {
                        required: true
                        
                    },
                    txtValor: {
                        required: true
                    }
                }
            })

            //MASCARA

            $('#txtData').mask("00/00/0000", { reverse: true })
            $('#txtValor').mask("000.000.000,00", { reverse: true });

        })
    </script>

</head>
<body id="body">
<div class="container-fluid">

         <center><div style="margin-top: 20px;">
         <a class="btn btn-dark" href="../ADM/Administrador.aspx">Inicio</a>
         <a class="btn btn-dark" href="CadastrarDespesa.aspx">Cadastrar Despesa</a>
         <a class="btn btn-dark" href="ListarDespesa.aspx">Lista de Despesas</a>     

    <form id="form1" runat="server">
                    <br />
                    <h1>Alterar Despesa</h1>
                    <br />



                    <asp:Label runat="server" Text="Data:"></asp:Label>
                    <asp:TextBox ID="txtData" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="Quantidade:"></asp:Label>
                    <asp:TextBox ID="txtQuantidade" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Descrição:"></asp:Label>
                    <asp:TextBox ID="txtDescricao" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Valor R$:"></asp:Label>
                    <asp:TextBox ID="txtValor" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button class="btn btn-dark" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                    <br />
                    <br />

                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </form>
             </div></center>
        </div>
</body>
</html>