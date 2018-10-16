<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Pages_ADM_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 480px;
        }
    </style>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

</head>
<body>
    <div class="container-fluid">
        <div>
           <br />
            <a class="btn btn-primary" href="../Produtos/ListarPD.aspx">Produtos</a>
            <a class="btn btn-primary" href="../Metas/Listar.aspx">Metas</a>
            <a class="btn btn-primary" href="../Perda/Listar.aspx">Perdas</a>


            <div>
                <ul class="nav nav-tabs">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu">
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <a class="dropdown-item" href="#">Something else here</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                  </li>
                </ul>
            </div>

        <form id="form1" runat="server">
            <div>
                <p class="auto-style1">
                    Bem Vindo ao Sistema</p>
            </div>
        </form>

        </div>
    </div>
</body>
</html>
