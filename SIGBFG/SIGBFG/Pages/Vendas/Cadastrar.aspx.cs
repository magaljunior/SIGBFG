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

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Venda venda = new Venda();

        venda.Cliente = txtCliente.Text;
        venda.Endereco = txtEndereco.Text;
        venda.Bairro = txtBairro.Text;
        venda.Numero = Convert.ToInt32(txtNumero.Text);
        venda.Cnpj = txtCnpj.Text;
        venda.Telefone = txtTel.Text;
        venda.Produto = ddlProdutos.SelectedItem.Value;
        venda.Nome = txtCliente.Text;
        venda.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        venda.Valor = Convert.ToDouble(txtValor.Text);
        venda.Data = txtData.Text;

        VendaBD bd = new VendaBD();
        if (bd.Insert(venda))
        {
            lblMensagem.Text = "Venda cadastrada com sucesso";

            txtCliente.Text = "";
            txtEndereco.Text = "";
            txtBairro.Text = "";
            txtNumero.Text = "";
            txtCnpj.Text = "";
            txtTel.Text = "";
            ddlProdutos.SelectedItem.Value = "";
            txtQuantidade.Text = "";
            txtData.Text = "";
            txtValor.Text = "";
            txtCliente.Focus();
        }
        else
        {
            lblMensagem.Text = "Venda não Cadastrada.";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(
            "Listar.aspx"
            );
    }
}