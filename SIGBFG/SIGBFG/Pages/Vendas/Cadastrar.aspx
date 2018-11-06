<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Paginas_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/Validacao/jquery.validate.min.js"></script>
    <script src="../../Scripts/Validacao/localization/messages_pt_PT.min.js"></script>
    <script src="../../Scripts/jquery.mask.min.js"></script>
    <title></title>
    <style type="text/css">
    #nav

{
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
        <!--VALIDAÇÃO-->
    <script type="text/javascript">
        $(document).ready(function () {

            $("#form1").validate({
                rules: {
                    
                    txtCliente: {
                        required: true
                    },
                     txtEndereco: {
                        required: true
                    },
                      txtBairro: {
                        required: true
                    },
                       txtNumero: {
                        required: true
                    },
                        txtCnpj: {
                        required: true
                    },
                         txtTel: {
                        required: true
                    },
                    txtQuantidade: {
                        required: true,
                        maxlength: 11
                    },
                     txtValor: {
                        required: true
                    },
                    txtData: {
                        required: true
                    }
                }
            })
        })
    </script>

</head>

 <!--VALIDAÇÃO-->
<script type="text/javascript">
    $(document).ready(function () {

        $("#form1").validate({
            rules: {
                txtCliente: {
                        required: true
                    },
                     txtEndereco: {
                        required: true
                    },
                      txtBairro: {
                        required: true
                    },
                       txtNumero: {
                        required: true
                    },
                        txtCnpj: {
                        required: true
                    },
                         txtTel: {
                        required: true
                    },
                    txtQuantidade: {
                        required: true,
                        maxlength: 11
                    },
                     txtValor: {
                        required: true
                    },
                    txtData: {
                        required: true
                    }
            }
        })


    })
</script>




<body style="height: 551px">
    <form id="form1" runat="server">
        <div class="container-fluid">
            
            <br />
      <div class="container-fluid">

        <div style="margin-top: 20px;" class="row">
             <div class="col-sm-11" style="position: relative; left: 50%; transform: translate(-50%); height: 70px;">
                  <div style="margin-top:20px; position: relative; left: 50%; transform: translate(-50%);" id="nav">
                         <ul>
                             <li><a class="btn btn-dak" href="Index.aspx">Página Inicial</a></li>

                             <li><a class="btn btn-dark" href="#">Usuário</a>
                                 <ul>
                                 <li> <a href="../Usuario/Cadastro_usuario.aspx">Cadastrar</a></li>
                                 <li><a href="../Usuario/Listar_usuario.aspx">Listar</a></li>
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
                                     <li><a class="btn btn-primary" href="../Metas/Cadastrar.aspx">Cadastrar</a></li>
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

            <br />
                <br />
                <h1>
                    <asp:Label ID="lblSaída" runat="server" Text="Venda de Produtos"></asp:Label>
                     </h1>
               
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblCliente" runat="server" Text="Cliente:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="txtCliente" runat="server" Width="350px" Height="20px"></asp:TextBox>
&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtEndereco" runat="server" Width="350px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Bairro: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBairro" runat="server" Width="200px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Nº."></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtNumero" runat="server" Width="50px" Height="20px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCnpj" runat="server" Text="CNPJ: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCnpj" runat="server" Width="155px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTel" runat="server" Text="Telefone:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="txtTel" runat="server" Width="128px" Height="20px"></asp:TextBox>
            <br />
                <br />

                     &nbsp;&nbsp;&nbsp;&nbsp;

                     <asp:Label ID="lblProd" runat="server" Text="Produto:"></asp:Label>
       &nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="txtProduto" runat="server" style="margin-left: 30px" Width="155px" Height="20px"></asp:TextBox>
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
                     <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade:"></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 9px" Height="20px" Width="155px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Valor:  "></asp:Label>
            <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
        <br />

        
        <br />

        
                     &nbsp;&nbsp;&nbsp;

        
                     <asp:Label ID="lblData" runat="server" Text="Data de Saída:"></asp:Label>

        
            &nbsp;&nbsp;

        
            <asp:TextBox ID="txtData" runat="server" Height="20px" Width="155px" style="margin-top: 0px"></asp:TextBox>
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button CssClass="btn btn-primary" ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Novo Registro"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
       
            <br />
            &nbsp;
            <br/>
            <br/>
        </div>
    </form>
</body>
</html>
