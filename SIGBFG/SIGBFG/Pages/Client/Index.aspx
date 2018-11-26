<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Client_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

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
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }
        #logoff {
            width: 40px;
            height: 40px;
            float: right;
        }
    </style>

</head>
<body id="body">
    <div class="container-fluid">
        <center><div style="margin-top: 20px;">
            <a class="btn btn-dark" href="Listar.aspx">Visualizar Ordem de Serviço</a>
            <a href="../Login.aspx"><img title="Logoof" id="logoff" src="../../Images/Minio_Devices_and_Hardware_Bold-90-512.png" /></a>
            <br />
            <br />
             <h1>Bem-Vindo</h1>
             <br />
             <h2>Sistema Integrado de Gestão BFG</h2>    
             <br />
             <img src="../../Images/BFG.jpg" />
               </div></center>
        </div>

    </body>
</html>
