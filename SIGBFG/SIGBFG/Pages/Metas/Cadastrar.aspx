<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

</head>

<!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {
                txtMes: {
                    required: true,
                },
                txtMeta: {
                    required: true
                },
                txtProduto: {
                    required: true,
                    maxlength: 11
                }
            }
        })


    })
</script>




<body style="height: 294px">
    <div class="container-fluid">
        <center>
        <br />
             <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
        <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
        <a class="btn btn-primary" href="Listar.aspx">Lista de Metas</a>
                 </div>

        <div class="form-group">
            <br />


            <form id="form1" runat="server">
                <div style="height: 349px">
                    <h1>Cadastro de Metas</h1>
                    <br />

                    <asp:Label runat="server" Text="Mês:"></asp:Label>
                    <asp:TextBox ID="txtMes" runat="server" Width="109px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" Text="Ano:"></asp:Label>
                    <asp:TextBox ID="txtAno" runat="server" Width="71px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Meta:"></asp:Label>
                    <asp:TextBox ID="txtMeta" runat="server" Width="127px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Produto:"></asp:Label>
                    <asp:TextBox ID="txtProduto" runat="server" Width="105px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Descrição:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDescricao" runat="server" Height="56px" Width="246px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button class="btn btn-primary" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                    <br />
                    <br />

                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </div>
            </form>

        </div>

            </center>
    </div>

</body>
</html>
