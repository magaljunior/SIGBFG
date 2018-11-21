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
            background-image: url(http://localhost:50742/Images/blocos.png)
            
        }
    </style>
</head>
<body id="body">
    <div class="container-fluid">
    <center><div style="margin-top: 20px;">
            <form id="form1" runat="server" aria-atomic="False">

                    <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                    <a class="btn btn-dark" href="CadastrarPD.aspx">Cadastrar Produtos</a>
                    <a class="btn btn-dark" href="ListarPD.aspx">Listar Produtos</a>
                    <br />
                    <br />
                    <h1>Estoque Atual de Produtos</h1>
                   
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                    <br />
                    <br />

                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" Height="100px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="100%" OnRowDataBound="fotoProduto_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="pro_foto" HeaderText="Foto" />
                        <asp:BoundField DataField="pro_nome" HeaderText="Nome" />
                        <asp:BoundField DataField="pro_quantidade" HeaderText="Quantidade" />
                        <asp:BoundField DataField="pro_quantidadeMinima" HeaderText="Quantidade Mínima" />

                        <asp:TemplateField HeaderText="Cadastrar ou Alterar">
                            <ItemTemplate>
                                <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                    ImageUrl="../../Images/cadastrar%20ou%20alterar.png" CommandArgument='<%# Bind("pro_codigo")%>'></asp:ImageButton>
                            </ItemTemplate>
                        </asp:TemplateField>

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
                <br />
                 <asp:Button class="btn btn-dark" ID="Button2" runat="server" Text="Capacidade Média 30000"/>
                 <asp:Button class="btn btn-dark" ID="Button3" runat="server" Text="Capacidade Máxima 60000"/>
                <br />
                <br />
                <h2>Total de Produtos em Estoque</h2>
                <br />
                <asp:Label ID="txtTotal" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Calcular Porcentagem em Estoque" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="txtPorcentagem" runat="server"></asp:Label>
                <br />
                <br />
            </form>
        </div></center>  
    </div>
    
</body>
</html>
