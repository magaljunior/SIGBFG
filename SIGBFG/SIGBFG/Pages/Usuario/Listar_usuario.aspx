<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar_Usuario.aspx.cs" Inherits="Pages_Usuario_Listar_Usuario" %>

<!DOCTYPE html>

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
        #nav {
            width: 1023px;
            margin: auto;
            height: 237px;
        }

            #nav ul {
                padding: 0;
                list-style: none;
            }

                #nav ul li {
                    float: left;
                    text-align: center;
                    width: 120px;
                    margin: 1px;
                }

                    #nav ul li a {
                        color: #ffffff;
                        text-decoration: none;
                        font-family: arial;
                        background: #343a40;
                        display: block;
                        padding: 10px;
                    }

                        #nav ul li a:hover {
                            background: #868686;
                            color: #000000;
                        }

                    #nav ul li ul {
                        display: none;
                    }

                    #nav ul li:hover ul {
                        display: block;
                    }

                    #title {
                        display: inline-block;
                    }
        #body {
            width: 100%;
            height: 100%;
            background-image: url(http://localhost:50742/Images/blocos.png)
        }
    </style>
</head>
<body id="body">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div style="margin-top: 10px;" class="row">
             <div class="col-sm-11" style="position: relative; left: 50%; transform: translate(-50%); height: 70px;">
                  <div style="margin-top:20px; position: relative; left: 50%; transform: translate(-50%);" id="nav">
                         <ul>
                             <li><a class="btn btn-dak" href="../ADM/Index.aspx">Página Inicial</a></li>

                             <li><a class="btn btn-dark" href="#">Usuário</a>
                                 <ul>
                                     <li><a href="Cadastrar_Usuario.aspx">Cadastrar Usuarios</a></li>
                                     <li><a href="Listar_Usuario.aspx">Listar Usuarios</a></li>
                                 </ul>
                             </li>
                             
                             <li><a class="btn btn-dark" href="#">Produtos</a>
                                  <ul>
                                  <li><a href="../Produtos/CadastrarPD.aspx">Cadastrar</a></li>
                                  <li><a href="../Produtos/ListarPD.aspx">Listar</a></li>
                                  <li><a href="../Produtos/Estoque_ProdutosPD.aspx">Estoque de Produtos</a></li>
                                  </ul>   
                             </li>

                             <li><a class="btn btn-dark" href="#">Metas</a>
                                     <ul>
                                     <li><a class="btn btn-dark" href="../Metas/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Metas/Listar.aspx">Listar</a></li>                                                                    
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="#">Perdas</a>
                                     <ul>
                                     <li><a href="../Perda/Cadastrar.aspx">Cadastrar</a></li>
                                         <li><a href="../Perda/Listar.aspx">Listar</a></li>
                                     <li><a href="../Perda/TotalPerdas.aspx">Total de Perdas</a></li>  
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="#">Ordem Serviço</a>
                                     <ul>
                                     <li><a href="../Os/Cadastrar.aspx">Cadastrar</a></li>
                                     <li><a href="../Os/Listar.aspx">Listar</a></li>
                                     </ul>
                             </li>

                             <li><a class="btn btn-dark" href="../Giro/GiroEstoque.aspx">Calculadora</a></li>

                             </ul>
                        </div>
             </div>
                    </div>

            <div class="row">
                <div style="margin-top:80px; position: relative; left: 50%; transform: translate(-50%);">
                <br />
                <br />
                    <br />
                <center><h1>Lista de Usuários</h1></center>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="110px" Width="100%" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="pes_nome" HeaderText="Nome" />
                            <asp:BoundField DataField="pes_email" HeaderText="Email" />
                            <asp:BoundField DataField="pes_senha" HeaderText="Senha" />
                            <asp:BoundField DataField="pes_tipo" HeaderText="Tipo" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                        CommandArgument='<%# Bind("pes_codigo")%>'>Alterar</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                        CommandArgument='<%# Bind("pes_codigo")%>'>Excluir</asp:LinkButton>
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
                </div>
            </div>
        </div>
    </form>
</body>
</html>
