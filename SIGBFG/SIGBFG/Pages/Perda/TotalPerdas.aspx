<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalPerdas.aspx.cs" Inherits="Pages_Perda_TotalPerdas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Relatório de Perdas</title>

    <!--LINKS DE ACESSO-->
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

    </style>

            <!--VALIDAÇÃO-->
    <script type="text/javascript">
        $(document).ready(function () {

            $("#form1").validate({
                rules: {

                }
            })

        //MASCARA
            $('#dataInicio').mask('00/00/0000');
            $('#dataFinal').mask('00/00/0000');
        })
    </script>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

</head>
<body id="body">

        <div class="container-fluid">
         <center><div style="margin-top: 20px;">
            <form id="form1" runat="server">
            <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
            <a class="btn btn-dark" href="Cadastrar.aspx">Cadastrar Perdas</a>
            <a class="btn btn-dark" href="Listar.aspx">Lista de Perdas</a>
                <br />
                <br />
                <h1>Relatório de Perdas</h1>
            <br />
                <asp:Label ID="Label1" runat="server" Text="Total:"></asp:Label>
&nbsp;<asp:Label ID="txtTotal" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="60%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="per_produto" HeaderText="Produto" />
                    <asp:BoundField DataField="per_quantidade" HeaderText="Quantidade" />
                    <asp:BoundField DataField="per_data" HeaderText="Data" />
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

                <h2>Gerar Gráfico por Período</h2>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Data Inicial:"></asp:Label>
                <asp:TextBox ID="dataInicio" runat="server" Width="132px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label runat="server" Text="Data Final:"></asp:Label>
                <asp:TextBox ID="dataFinal" runat="server" Width="132px"></asp:TextBox>
                <asp:Button CssClass="btn btn-dark" ID="btnGrafico" runat="server" Text="Gerar Gráfico" OnClick="btnGrafico_Click" />
             <br />
             <br />
                <h1>Gráfico de Perdas</h1>
                <br />
                <asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Gerar Gráfico Total" OnClick="Button1_Click" />
           </form>
             <br />

           <div id="chart_div" style="margin-top: 20px; width: 900px; height: 500px;"></div>
        </div></center>
    </div>
</body>
</html>
