<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalPerdas.aspx.cs" Inherits="Pages_Perda_TotalPerdas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <center><a href="Cadastrar.aspx">Cadastrar</a>
            <a href="Listar.aspx">Listar</a>
            <br />
            <h1>Total de Perdas Cadastradas</h1>
            <br />
                <asp:Label ID="Label1" runat="server" Text="Total:"></asp:Label>
&nbsp;<asp:Label ID="txtTotal" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label></center>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="per_ordem" HeaderText="Ordem de Serviço" />
                    <asp:BoundField DataField="per_produto" HeaderText="Produto" />
                    <asp:BoundField DataField="per_quantidade" HeaderText="Quantidade" />
                    <asp:BoundField DataField="per_motivo" HeaderText="Motivo" />
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
        </div>
    </form>
</body>
</html>
