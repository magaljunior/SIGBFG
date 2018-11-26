<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Relatorio.aspx.cs" Inherits="Paginas_Relatorio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.js"></script>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <title>Relatório de Produção</title>
    
    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }
    </style>
</head>
<body id="body">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <center>
                    <div style="margin-top: 20px;">

                      <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>

                      <a style="width:225px;" class="btn btn-dark" href="../Os/Cadastrar.aspx">Cadastrar Ordem de Serviço</a>

                      <a style="width:225px;" class="btn btn-dark" href="../Os/Listar.aspx">Listar Ordem de Serviço</a>


                    </div>
            <br />
            <br />   
          
            <h1>Relatório de Produção</h1>
                
                <br />
                
            <asp:GridView ID="GridView1" runat="server"  Width="60%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
              <asp:BoundField DataField="os_funcionario" HeaderText="Funcionário" />
             <asp:BoundField DataField="os_produto" HeaderText="Produto" />
             <asp:BoundField DataField="os_quantidade" HeaderText="Quantidade" />
              <asp:BoundField DataField="os_dataInicio" HeaderText="Data de Inicio" />
              <asp:BoundField DataField="os_dataExpiracao" HeaderText="Data de Expiração" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                <br />
                <br />
                <h1>Gráfico de Produtividade</h1>
                <div id="chart_div" style="margin-top: 20px; width: 900px; height: 500px;"></div>
                    <br />
                <br />
            </center>
        </div>
    </form>

</body>
</html>
