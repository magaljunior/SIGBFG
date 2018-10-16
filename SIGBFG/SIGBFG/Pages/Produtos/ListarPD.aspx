<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarPD.aspx.cs" Inherits="Pages_Listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>

</head>
<body style="height: 528px">
    <div class="container-fluid">
       <center>
            <div class="form-group">
            <form id="form1" runat="server">
                <div>
                    <br />
                    <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>

                    <a class="btn btn-primary" href="CadastrarPD.aspx">Cadastrar Produtos</a>

                    <a class="btn btn-primary" href="Estoque_ProdutosPD.aspx">Estoque Atual de Produtos</a>
                    <br />
                    <br />
                    <h1>Lista de Produtos</h1>
                </div>

                &nbsp;<asp:Label ID="lblMensagem" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" Style="margin-right: 5px" Width="100%" Height="100px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowDataBound="imgProdutos_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="pro_foto" HeaderText="Foto" />
                        <asp:BoundField DataField="pro_nome" HeaderText="Nome" />
                        <asp:BoundField DataField="pro_preco" HeaderText="Preço" />
                        <asp:BoundField DataField="pro_quantidadeMinima" HeaderText="Quantidade Minima" />
                        <asp:BoundField DataField="pro_quantidade" HeaderText="Quantidade" />
                        <asp:BoundField DataField="pro_descricao" HeaderText="Descrição" />

                        <asp:TemplateField HeaderText="Desativar">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbDesativar" runat="server" CommandName="Desativar"
                                    CommandArgument='<%# Bind("pro_codigo")%>'>Desativar</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Alterar">
                            <ItemTemplate>
                                <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" 
                                    ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("pro_codigo")%>'></asp:ImageButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Excluir">
                             <ItemTemplate>     
                                    <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                        ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("pro_codigo")%>'></asp:ImageButton>
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

            </form>
        </div>
       </center>
    </div>
</body>
</html>
