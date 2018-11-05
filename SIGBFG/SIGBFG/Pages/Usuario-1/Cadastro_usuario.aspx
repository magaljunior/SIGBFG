<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro_usuario.aspx.cs" Inherits="Paginas_Cadastro_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <title></title>
</head>
<body style="height: 577px">
    <br />
    <div class="container-fluid">
        <center>
            <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: normal; font-style: normal; height: 555px;">
        <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
                <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
                <a class="btn btn-primary" href="Listar_usuario.aspx">Listar Usuários</a>
            </div>
&nbsp;<div style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal" id="lbltitulo">
            &nbsp;
            Cadastro de usuários:</div>
        <br />
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtNome" runat="server" Width="219px" ></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Sobrenome:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtSobrenome" runat="server" Width="222px"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Senha:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtsenha" runat="server" Width="223px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label5" runat="server" Text="Confirmar Senha:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="txtconfirmaSenha" runat="server" Width="223px" TextMode="Password" ></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Button class="btn btn-primary" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
            </center>

        </div>
</body>
</html>
