<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Estoque_ProdutosPD.aspx.cs" Inherits="Pages_Estoque_Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>

</head>
<body style="height: 568px">
    <div class="container-fluid">
    <center>
                <div class="form-group">
            <form id="form1" runat="server" aria-atomic="False">
                <div>
                    <br />
                    <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
                    <a class="btn btn-primary" href="CadastrarPD.aspx">Cadastrar Produtos</a>
                    <a class="btn btn-primary" href="ListarPD.aspx">Listar Produtos</a>
                    <br />
                    <br />
                    <h1>Estoque Atual de Produtos</h1>
                   
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                    <br />
                    <br />
                </div>
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
                <h2>Total de Produtos em Estoque</h2>
                <asp:Label ID="txtTotal" runat="server"></asp:Label>
            </form>
        </div>  
    </center>
    </div>
</body>
</html>
