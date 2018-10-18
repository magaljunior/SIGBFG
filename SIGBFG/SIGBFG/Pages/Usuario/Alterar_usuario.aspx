<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar_usuario.aspx.cs" Inherits="Paginas_Alterar_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 401px">

    <div class=" container-fluid">
    <form id="form1" runat="server">
        <center>
             <br />
                <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
                <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
                <a class="btn btn-primary" href="Cadastro_usuario.aspx">Cadastrar Usuário</a>
                
                    </div>
            <br />
        
            <asp:Label ID="Label1" runat="server" Text="Alterar Usuário" Font-Size="X-Large" Height="44px" Width="295px"></asp:Label>
            <br />
            <br />
           <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            <br />
           <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Sobrenome"></asp:Label>
            <br />
            <asp:TextBox ID="txtSobrenome" runat="server" Width="179px"></asp:TextBox>
            
            <br />
            <br />
            <br />
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
       
    </form>
        </center>
        </div>
</body>
</html>
