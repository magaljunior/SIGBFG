<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.js"></script>
    <title>Cadastrar</title>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.data').mask('00/00/0000');
                                    })
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#form1").validate({
                rules: {
                    funcionario: {
                        required: true
                    },
                    produto: {
                        required: true
                    },
                    quantidade: {
                        required: true
                    },
                    descricao: {
                        required: true
                    },
                    datainicio: {
                        required: true
                    },
                    dataexpiracao: {
                        required: true
                    }
                    
                }
            })
                                    })
    </script>
</head>
<body>
    <div class="container-fluid">

    <form id="form1" runat="server">
        
        
            <center style="height: 578px">
                   <br />
                 <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
            <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
            <a class="btn btn-primary" href="Listar.aspx">Lista de O.S</a>
            </div>
                <br />
            <h1>Cadastro Ordem de Serviço</h1>

                     <br />
            
            <asp:Label ID="Label2" runat="server" Text="Funcionario: "></asp:Label>
            <asp:TextBox ID="txtFuncionario" name="funcionario" runat ="server" Width="153px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Produto: "></asp:Label>
                   <asp:DropDownList ID="ddlProdutos" runat="server" Height="16px" style="margin-left: 0px" Width="186px">
                   </asp:DropDownList>
                <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Quantidade: "></asp:Label>
            <asp:TextBox ID="txtQuantidade"  name="quantidade" runat="server" Width="150px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Descrição: "></asp:Label>
            <asp:TextBox ID="txtDescricao"  name="descricao" runat="server" Width="163px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Data de Início: "></asp:Label>
            <asp:TextBox ID="txtDatainicio" class="data"  name="datainicio" runat="server" Width="133px"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Data de Expiração: "></asp:Label>
            <asp:TextBox ID="txtDataexpiracao" class="data"  name="dataexpiracao" runat ="server" Width="103px"></asp:TextBox>
                   <br />
                   <br />
            <asp:Button CssClass="btn btn-primary" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
                   <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
                </center>
            
    </form>
        </div>
</body>
</html>
