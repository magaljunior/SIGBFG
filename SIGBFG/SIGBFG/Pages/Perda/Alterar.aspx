<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Paginas_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

     <title></title>

            <!--VALIDAÇÃO-->
    <script type="text/javascript">
        $(document).ready(function () {

            $("#form1").validate({
                rules: {
                    txtOrdem: {
                        required: true,
                    },
                    txtProduto: {
                        required: true
                    },
                    txtQuantidade: {
                        required: true,
                        maxlength: 11
                    },
                    txtMotivo: {
                        required: true
                    }
                }
            })
        })
    </script>

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


<body>
    <form id="form1" runat="server">
       <div class="container-fluid">
           <br />
           <center> 
        <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
           <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
            <a class="btn btn-primary" href="Cadastrar.aspx">Cadastrar Perdas</a>
            <a class="btn btn-primary" href="Listar.aspx">Lista de Perdas</a>
            <a class="btn btn-primary" href="TotalPerdas.aspx">Total de Perdas Cadastradas</a>
        </div>
               <br />
               <h1>Alterar perda de Produto</h1>
               <br />

                   <asp:Label ID="Label" runat="server" Text="Ordem de Serviço:"></asp:Label>
                   <asp:TextBox ID="txtOrdem" runat="server" Width="117px"></asp:TextBox>
               <br />
         <br />
       
         
            <asp:Label runat="server" Text="Produto:"></asp:Label>
               <asp:DropDownList ID="ddlProdutos" runat="server" Height="16px" style="margin-left: 14px" Width="177px">
               </asp:DropDownList>
            <br/><br/>
            <asp:Label runat="server" Text="Quantidade:"></asp:Label>
            <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 13px" Width="155px"></asp:TextBox>
            <br/><br/>
            <asp:Label runat="server" Text="Motivo:"></asp:Label>
            <br />
            <asp:TextBox ID="txtMotivo" runat="server" Height="71px" Width="232px" style="margin-left: 0px"></asp:TextBox>
            <br /> <br /> <br />
            <asp:Button class="btn btn-primary" ID="btnSalvar" runat="server" Text="Alterar" OnClick="btnSalvar_Click1" />
            <br />
                <br/>
        <asp:Label ID="lblMensagem" runat="server"></asp:Label></center>
        </div>
    </form>
</body>
</html>
