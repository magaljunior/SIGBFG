<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Relatorio.aspx.cs" Inherits="Pages_Vendas_Relatorio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   
<head runat="server">

    <link href="../../Scripts/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>

    <title>Relatório de Vendas</title>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <style type="text/css">
        #body {
            width: 100%;
            height: 100%;
            font-weight: bold;
            /*background-image: url(http://localhost:50742/Images/blocos.png)*/
        }

    </style>

          <!--VALIDAÇÃO-->
    <script type="text/javascript">
        $(document).ready(function () {

            $("#form1").validate({
                rules: {
                    
                }
            })

        //MASCARA
            $('#dataInicio').mask('00/00/0000');
            $('#dataFinal').mask('00/00/0000');
        })
    </script>

</head>

<body id="body">
        <div class="container-fluid">
            <center><div style="margin-top: 20px;">
            
            <form id="form1" runat="server">
            <a class="btn btn-dark" href="../ADM/Administrador.aspx">Página Inicial</a>
            <a class="btn btn-dark" href="Cadastrar.aspx">Realizar Vendas</a>
            <a class="btn btn-dark" href="Listar.aspx">Listar Vendas</a>
                <br />
            <br />
                <br />
                <h1>Relatório de Vendas</h1>
          
                <br />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
          
                <br />
          
                <br />
                <br />
          
     <asp:GridView ID="GridView1" runat="server"  Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" >
         <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
              <asp:BoundField DataField="ven_cliente" HeaderText="Nome Cliente" />
             <asp:BoundField DataField="ven_endereco" HeaderText="Rua" />
             <asp:BoundField DataField="ven_Bairro" HeaderText="Bairro" />
             <asp:BoundField DataField="ven_numero" HeaderText="Número" /> 
              <asp:BoundField DataField="ven_cep" HeaderText="CEP" />
             <asp:BoundField DataField="ven_cnpj" HeaderText="CNPJ" /> 
              <asp:BoundField DataField="ven_cpf" HeaderText="CPF" />
             <asp:BoundField DataField="ven_telefone" HeaderText="Telefone" /> 
              <asp:BoundField DataField="ven_produto" HeaderText="Produto" />
              <asp:BoundField DataField="ven_quantidade" HeaderText="Quantidade" />
             <asp:BoundField DataField="ven_valor" HeaderText="Valor" /> 
             <asp:BoundField DataField="ven_data" HeaderText="Data" /> 
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                <br />
                <br />
                <asp:Label ID="lblMensagem0" runat="server"></asp:Label>
                <br />
                <br />

                <h2>Gerar Gráfico por Período</h2>
                <asp:Label ID="Label1" runat="server" Text="Data Inicial:"></asp:Label>
                <asp:TextBox ID="dataInicio" runat="server" Width="132px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Data Final:"></asp:Label>
                <asp:TextBox ID="dataFinal" runat="server" Width="132px"></asp:TextBox>
                <asp:Button CssClass="btn btn-dark" ID="btnGrafico" runat="server" Text="Gerar Gráfico" OnClick="btnGrafico_Click" />
                <br />
                <br />
                <h2>Gráfico de Vendas</h2>
                <br />
                <asp:Button CssClass="btn btn-dark" ID="btnGraficoTotal" runat="server" Text="Gerar Gráfico Total" OnClick="btnGraficoTotal_Click" />
                <br />

                 <div id="chart_div" style="width: 900px; height: 500px;"></div>
              </form>
           </div></center>
        </div>
    
           
        </body>
</html>

