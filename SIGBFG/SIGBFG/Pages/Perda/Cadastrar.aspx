<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

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




<body style="height: 551px">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <center>
            <br />
        <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
            <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
            <a class="btn btn-primary" href="Listar.aspx">Lista de Perdas</a>
            <a class="btn btn-primary" href="TotalPerdas.aspx">Total de Perdas Cadastradas</a>
                    </div>

            <br />
                <br />
                <h1>Perda de Produto</h1>

              <br />
              <asp:Label ID="Label5" runat="server" Text="Ordem de Serviço:"></asp:Label>
              <asp:TextBox ID="txtOrdem" runat="server" Height="27px" style="margin-left: 16px" Width="112px"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Produto:"></asp:Label>
                <asp:DropDownList ID="ddlProdutos" runat="server" Height="16px" style="margin-left: 13px" Width="186px">
                </asp:DropDownList>
           
            <br />
            <br />
        
        <asp:Label ID="Label3" runat="server" Text="Quantidade:"></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 9px" Height="27px" Width="155px"></asp:TextBox>
        <br />

        
        <br />
            <asp:Label ID="Label4" runat="server" Text="Motivo:"></asp:Label>

        
        <br />

        
            <asp:TextBox ID="txtMotivo" runat="server" Height="50px" Width="231px" style="margin-top: 0px"></asp:TextBox>
        
            <br />
            <br/>
           <asp:Button CssClass="btn btn-primary" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar"  />
            <br/>
        <asp:Label ID="lblMensagem" runat="server"></asp:Label></center>
        </div>
    </form>
</body>
</html>
