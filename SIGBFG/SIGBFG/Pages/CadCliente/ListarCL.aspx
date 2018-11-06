<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarCL.aspx.cs" Inherits="Pages_Cliente_ListarCL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            
              <br />
               
<br />
                <br />
                <h1>Lista de Cadastro de Clientes</h1>
              <br />
                <asp:Label ID="lblMensagem" runat="server" Text="" ></asp:Label>
          
                <br />
          
                <br />
          
     <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand"  Width="100%" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
         <Columns>
              <asp:BoundField DataField="cli_nome" HeaderText="Nome Cliente" />
             <asp:BoundField DataField="cli_endereco" HeaderText="Endereço" />
             <asp:BoundField DataField="cli_Bairro" HeaderText="Bairro" />
             <asp:BoundField DataField="cli_numero" HeaderText="Número" /> 
             <asp:BoundField DataField="cli_cnpj" HeaderText="CNPJ" /> 
             <asp:BoundField DataField="cli_telefone" HeaderText="Telefone" /> 
             
             <asp:TemplateField HeaderText="Alterar">
                 <ItemTemplate>
             
                         <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("cli_codigo")%>'></asp:ImageButton>

            
                 </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Excluir">
                 <ItemTemplate>
     
                         <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar" ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("cli_codigo")%>'></asp:ImageButton>

    
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
           
        </div>
    </form>
</body>
</html>

