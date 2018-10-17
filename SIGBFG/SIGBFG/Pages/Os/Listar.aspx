<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar.aspx.cs" Inherits="Paginas_Listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <br />
            <a class="btn btn-primary" href="Cadastrar.aspx">Cadastrar</a>
            <br />
            <br />   
          
            <h1>Lista de Ordem de Serviço</h1>
                <br />
                <asp:Label ID="lblMensagem" runat="server" Text="" ></asp:Label>
          <br />
                
                <br />
                
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand"  Width="100%" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="1" CellSpacing="2" ForeColor="Black">
         <Columns>
              <asp:BoundField DataField="os_funcionario" HeaderText="Funcionário" />
             <asp:BoundField DataField="os_produto" HeaderText="Produto" />
             <asp:BoundField DataField="os_quantidade" HeaderText="Quantidade" />
             <asp:BoundField DataField="os_descricao" HeaderText="Descrição" /> 
              <asp:BoundField DataField="os_dataInicio" HeaderText="Data de Inicio" />
              <asp:BoundField DataField="os_dataExpiracao" HeaderText="Data de Expiração" />
             <asp:TemplateField HeaderText="Alterar">
                 <ItemTemplate>
             
                         <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("os_codigo")%>'></asp:ImageButton>

            
                 </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Excluir">
                 <ItemTemplate>
     
                         <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar" ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("os_codigo")%>'></asp:ImageButton>

    
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
            </center>
        </div>
    </form>
</body>
</html>
