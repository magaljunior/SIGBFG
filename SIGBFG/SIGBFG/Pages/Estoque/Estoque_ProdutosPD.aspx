<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Estoque_ProdutosPD.aspx.cs" Inherits="Pages_Estoque_Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Estoque de Produtos</title>

    
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
                    <a class="btn btn-dark" href="Relatorio.aspx">Relatório de Produtos</a>
                    <br />
                    <br />
                    <h1>Estoque Atual de Produtos</h1>
                   
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Capacidade Média: 30000"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Capacidade Máxima: 60000"></asp:Label>
                <br />
                <br />
                <h3>Total de Produtos</h3>
                <br />
                <asp:Label ID="txtTotal" runat="server"></asp:Label>
                <br />
                <br />
                <h3>Porcentagem</h3>
                <br />
                <asp:Label ID="txtPorcentagem" runat="server"></asp:Label>
                    <br />
                    <br />

                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" Height="100px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="100%" OnRowDataBound="fotoProduto_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="pro_foto" HeaderText="Foto" />
                        <asp:BoundField DataField="pro_nome" HeaderText="Nome" />
                        <asp:BoundField DataField="pro_quantidade" HeaderText="Quantidade" />

                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <br />
            </form>
        <br />
        </div>
        </center>
    </div>
    
</body>
</html>
