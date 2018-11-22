<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Produção.aspx.cs" Inherits="Pages_Relatorios_Produção" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <title>Gráfico de Produção</title>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

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
    <div class="container-fluid">

                <center><div style="margin-top: 20px;">
                <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <br />
                    <br />
                <h1>Gráfico de Produção</h1>
                <br />
                <div id="chart_div" style="width: 900px; height: 500px;"></div>
                <br />
                <br />
                </div></center>
        </div>
</body>
</html>
