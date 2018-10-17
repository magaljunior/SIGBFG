﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar.aspx.cs" Inherits="Paginas_Listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

</head>
<body>

    <div class="container-fluid">
        <center>
        <br />
             <div id="logo" style="width: 100%; background-color: #000066; height:70px" >
                     <br />
        <a class="btn btn-primary" href="../ADM/Administrador.aspx">Inicio</a>
        <a class="btn btn-primary" href="Cadastrar.aspx">Cadastrar Metas</a>
                 </div>
        <br />

        <div class="form-group">

            <form id="form1" runat="server">
                <div style="height: 199px">
                    <br />
                    <h1>Lista de Metas</h1>
                        <p>
                            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                        </p>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="50px" Width="100%">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="met_mes" HeaderText="Mês" />
                            <asp:BoundField DataField="met_ano" HeaderText="Ano" />
                            <asp:BoundField DataField="met_meta" HeaderText="Meta" />
                            <asp:BoundField DataField="met_produto" HeaderText="Produto" />
                            <asp:BoundField DataField="met_descricao" HeaderText="Descrição" />

                        <asp:TemplateField HeaderText="Alterar">
                            <ItemTemplate>
                                <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" 
                                    ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("met_codigo")%>'></asp:ImageButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Excluir">
                             <ItemTemplate>     
                                    <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                        ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("met_codigo")%>'></asp:ImageButton>
                             </ItemTemplate>
                       </asp:TemplateField>

                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>


                </div>
            </form>
        </div>
                </center>
    </div>
</body>
</html>
