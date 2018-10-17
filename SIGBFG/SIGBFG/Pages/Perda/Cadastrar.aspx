<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <title></title>
</head>
<body style="height: 473px">
    <form id="form1" runat="server">
        <div class="container" style="height: 397px">
            <br />
            <center> <h1>Perda de Produto</h1>
            <br />
            <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
            <a class="btn btn-primary" href="Listar.aspx">Lista de Perdas</a>
         
            
              <br />
              <br />
              <br />
              <asp:Label ID="Label5" runat="server" Text="Ordem de Serviço:"></asp:Label>
              <asp:TextBox ID="txtOrdem" runat="server" Height="27px" style="margin-left: 16px" Width="112px"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Produto:"></asp:Label>
            <asp:TextBox ID="txtProduto" runat="server" style="margin-left: 30px" Width="146px" Height="27px"></asp:TextBox>
           
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
