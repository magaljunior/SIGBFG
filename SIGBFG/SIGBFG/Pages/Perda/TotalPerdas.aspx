<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalPerdas.aspx.cs" Inherits="Pages_Perda_TotalPerdas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Total de Perdas Cadastradas</title>

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
            background-image: url(http://localhost:50742/Images/blocos.png)
        }

    </style>
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
                <h1>Total de Perdas Cadastradas</h1>
            <br />
                <asp:Label ID="Label1" runat="server" Text="Total:"></asp:Label>
&nbsp;<asp:Label ID="txtTotal" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
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
           </form>
        </div></center>
    </div>
</body>
</html>
