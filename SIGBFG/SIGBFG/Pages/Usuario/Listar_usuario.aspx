<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar_Usuario.aspx.cs" Inherits="Pages_Usuario_Listar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Lista de Usuários</title>

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
    <form id="form1" runat="server">
        <div class="container-fluid">
            <center><div style="margin-top: 20px;">
                        <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
                        <a class="btn btn-dark" href="Cadastrar_Usuario.aspx">Cadastrar Usuários</a>
                    <br />
                    <br />
                    <h1>Lista de Usuários</h1>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="110px" Width="100%" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="pes_nome" HeaderText="Nome" />
                            <asp:BoundField DataField="pes_email" HeaderText="Email" />
                            <asp:BoundField DataField="pes_senha" HeaderText="Senha" />
                            <asp:BoundField DataField="pes_tipo" HeaderText="Tipo" />
                        
                            <asp:TemplateField HeaderText="Alterar">
                            <ItemTemplate>
                                <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" 
                                    ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("pes_codigo")%>'></asp:ImageButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Excluir">
                             <ItemTemplate>     
                                    <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                        ImageUrl="../../Images/del.jpg" CommandArgument='<%# Bind("pes_codigo")%>'></asp:ImageButton>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
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
                </div></center>
        </div>
    </form>
</body>
</html>
