﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar.aspx.cs" Inherits="Paginas_Listar"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Lista de Perdas</title>

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
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }

    </style>
</head>
<body id="body">

        <div class="container-fluid">
           <center><div style="margin-top: 20px;">
                <form id="form1" runat="server">

                <a class="btn btn-dark" href="../ADM/Administrador.aspx">Inicio</a>
                <a class="btn btn-dark" href="Cadastrar.aspx">Cadastrar Perdas</a>
                <a class="btn btn-dark" href="TotalPerdas.aspx">Relatório de Perdas</a>
<br />
                <br />
                <h1>Lista de Perdas de Produto</h1>
              <br />
                <asp:Label ID="lblMensagem" runat="server" Text="" ></asp:Label>
          
                <br />
          
                <br />
          
     <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand"  Width="100%" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" >
         <Columns>
             <asp:BoundField DataField="per_produto" HeaderText="Produto" />
             <asp:BoundField DataField="per_quantidade" HeaderText="Quantidade" />
             <asp:BoundField DataField="per_motivo" HeaderText="Motivo" /> 
             <asp:BoundField DataField="per_data" HeaderText="Data" />
             <asp:TemplateField HeaderText="Alterar">
                 <ItemTemplate>
             
                         <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("per_codigo")%>'></asp:ImageButton>

            
                 </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Excluir">
                 <ItemTemplate>
     
                         <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar" ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("per_codigo")%>'></asp:ImageButton>

    
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
           </form>
               </div></center>
        </div>
</body>
</html>
