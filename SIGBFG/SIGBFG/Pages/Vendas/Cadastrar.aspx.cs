using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vendas.Classes;
using Vendas.Persistencia;
using System.Data;
using Cadastro_Produto.Persistence;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCliente.Focus();

        if (!Page.IsPostBack)
        {
            CarregaDDL();
        }
    }

    private void CarregaDDL()
    {
        ProdutoBD bd = new ProdutoBD();
        DataSet ds = bd.SelectAll();

        ddlProdutos.Items.Clear();
        ddlProdutos.DataSource = ds.Tables[0].DefaultView;
        ddlProdutos.DataTextField = "pro_nome";
        ddlProdutos.DataValueField = "pro_nome";
        ddlProdutos.DataBind();

        ddlProdutos.Items.Insert(0, "Selecione");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(
            "Listar.aspx"
            );
    }

    protected void btnRealizarVenda_Click(object sender, EventArgs e)
    {
        Venda venda = new Venda();

        venda.Cliente = txtCliente.Text;
        venda.Endereco = txtRua.Text;
        venda.Bairro = txtBairro.Text;
        venda.Numero = txtNumero.Text;
        venda.Cep = txtCep.Text;
        venda.Cnpj = txtCnpj.Text;
        venda.Cpf = txtCpf.Text;
        venda.Telefone = txtTelefone.Text;
        venda.Produto = ddlProdutos.SelectedItem.Value;
        venda.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        venda.Data = txtData.Text;
        venda.Valor = Convert.ToDouble(txtValor.Text);

        VendaBD bd = new VendaBD();
        if (bd.Insert(venda))
        {
            lblMensagem.Text = "Venda Realizada com sucesso";

            txtCliente.Text = "";
            txtRua.Text = "";
            txtBairro.Text = "";
            txtNumero.Text = "";
            txtCep.Text = "";
            txtCnpj.Text = "";
            txtCpf.Text = "";
            txtTelefone.Text = "";
            ddlProdutos.SelectedItem.Value = "";
            txtQuantidade.Text = "";
            txtData.Text = "";
            txtValor.Text = "";

            txtCliente.Focus();
        }
        else
        {
            lblMensagem.Text = "Venda não Realizada";
        }
    }
}