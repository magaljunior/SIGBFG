<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Paginas_Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
     <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <br />
           <center> <h1>Alterar perda de Produto</h1>
        
        <p>
           <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
            <a class="btn btn-primary" href="Cadastrar.aspx">Cadastrar Perdas</a>
            <a class="btn btn-primary" href="Listar.aspx">Lista de Perdas</a>
        </p>

               <p>
                   <asp:Label ID="Label" runat="server" Text="Ordem de Serviço:"></asp:Label>
                   <asp:TextBox ID="txtOrdem" runat="server" Width="117px"></asp:TextBox>
         
        </p> 
        
            <asp:Label runat="server" Text="Produto:"></asp:Label>
            <asp:TextBox ID="txtProduto" runat="server" Width="151px" style="margin-left: 31px"></asp:TextBox>
            <br/><br/>
            <asp:Label runat="server" Text="Quantidade:"></asp:Label>
            <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 13px" Width="145px"></asp:TextBox>
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
