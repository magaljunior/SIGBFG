<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarDespesa.aspx.cs" Inherits="Paginas_ListarDespesa" %>

<<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

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
            background-image: url(http://localhost:52332/Images/blocos.png)
        }

    </style>

</head>
<body id="body">

    <div class="container-fluid">
        <center>
        <br />
             <div id="logo" style="width: 100%; height:70px" >
                     <br />
        <a class="btn btn-dark" href="../ADM/Administrador.aspx">Inicio</a>
        <a class="btn btn-dark" href="CadastrarDespesa.aspx">Cadastro de Despesa</a>
                 </div>
        <br />

        <div class="form-group">

            <form id="form1" runat="server">
                <div style="height: 199px">
                    <br />
                    <h1>Lista de Despesas</h1>
                        <p>
                            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                        </p>
                    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="margin-right: 5px" Width="100%" Height="100px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowCommand="GridView1_RowCommand1">
                        
                        <Columns>
                            <asp:BoundField DataField="des_data" HeaderText="Data" />
                            <asp:BoundField DataField="des_quantidade" HeaderText="Quantidade" />
                            <asp:BoundField DataField="des_descricao" HeaderText="Descrição" />
                            <asp:BoundField DataField="des_valor" HeaderText="Valor" />

                        <asp:TemplateField HeaderText="Alterar">
                            <ItemTemplate>
                                <asp:ImageButton ID="lbAlterar" runat="server" CommandName="Alterar" 
                                    ImageUrl="../../Images/editar.jpg"  CommandArgument='<%# Bind("des_codigo")%>'></asp:ImageButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Excluir">
                             <ItemTemplate>     
                                    <asp:ImageButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                        ImageUrl="../Images/del.jpg" CommandArgument='<%# Bind("des_codigo")%>'></asp:ImageButton>

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
