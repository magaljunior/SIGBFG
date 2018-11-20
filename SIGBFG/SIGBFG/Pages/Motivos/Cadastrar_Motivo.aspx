<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar_Motivo.aspx.cs" Inherits="Pages_Motivos_Cadastrar_Motivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Motivos de Perda</title>

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            background-image: url(http://localhost:50742/Images/blocos.png)
        }

    </style>

</head>
<body id="body">
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <br />
                <a class="btn btn-dark" href="Listar_Motivo.aspx">Listar Motivos de Perda</a>
                <br />
                <br />
                <h1>Cadastrar Motivos de Perda</h1>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Motivo:"></asp:Label>
                <asp:TextBox ID="txtMotivoPerda" runat="server" Width="704px"></asp:TextBox>
                <br />
                <br />
                <asp:Button CssClass="btn btn-dark" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
                <br />
                <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>

            </div>
        </div>
    </div>
    </form>
</body>
</html>
