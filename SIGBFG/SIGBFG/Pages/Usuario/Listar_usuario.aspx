<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar_usuario.aspx.cs" Inherits="Paginas_Listar_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div class="container-fluid">
            <center>
              <br />
                <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
                <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
                <a class="btn btn-primary" href="Cadastro_usuario.aspx">Cadastrar Usuário</a>
               
                    </div>
<br />
                <br />
                <h1>Usuários Cadastrados</h1>
              <br />
                <asp:Label ID="lblMensagem" runat="server" Text="" ></asp:Label>
          
                <br />
          
                <br />
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand"  Width="100%" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowDataBound="GridView1_RowDataBound" >
         <Columns>
              <asp:BoundField DataField="usu_nome" HeaderText="Nome" />
             <asp:BoundField DataField="usu_sobreNome" HeaderText="Sobre nome" />
             <asp:BoundField DataField="usu_senha" HeaderText="Senha" />
             <asp:BoundField DataField="usu_ativo" HeaderText="Status" /> 

             <asp:TemplateField HeaderText="Desativar ou Ativar">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbDesativar" runat="server" CommandName="Desativar"
                            CommandArgument='<%# Bind("usu_codigo")%>'>Desativar</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>

             <asp:TemplateField HeaderText="Alterar">

                 <ItemTemplate>
             
                         <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("usu_codigo")%>'></asp:ImageButton>

            
                 </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Excluir">
                 <ItemTemplate>
     
                         <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar" ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("usu_codigo")%>'></asp:ImageButton>

    
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
                </center>
    </div>
                </form>
</body>
</html>
