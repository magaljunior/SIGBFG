<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Relatorio.aspx.cs" Inherits="Pages_Produtos_Relatorio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Relatório de Produtos em Estoque</title>

    
    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_BR.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
            
        }
    </style>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

</head>
<body id="body">
    <div class="container-fluid">
    <center><div style="margin-top: 20px;">
            <form id="form1" runat="server" aria-atomic="False">

                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <a class="btn btn-dark" href="CadastrarPD.aspx">Cadastrar Produtos</a>
                    <a class="btn btn-dark" href="ListarPD.aspx">Listar Produtos</a>
                    <a class="btn btn-dark" href="Estoque_ProdutosPD.aspx">Estoque Atual de Produtos</a>
                    <br />
                    <br />
                <h1>Relatório de Produtos em Estoque</h1>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Capacidade Média: 30000."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Capacidade Máxima: 60000."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="txtPorcentagem" runat="server"></asp:Label>
                    <br />
                <br />

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100px" Width="60%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="pro_nome" HeaderText="Nome" />
                        <asp:BoundField DataField="pro_quantidade" HeaderText="Quantidade" />
                        <asp:BoundField DataField="pro_quantidadeMinima" HeaderText="Quantidade Mínima" />

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
                <h2>Total de Produtos em Estoque</h2>
                <br />
                <asp:Label ID="txtTotal" runat="server"></asp:Label>
                <br />
            </form>
        <br />
        <h3>Gráfico de Produtos em Estoque</h3>
            <div id="chart_div" style="width: 900px; height: 500px;"></div>
        </div></center>  
    </div>
    
</body>
</html>
