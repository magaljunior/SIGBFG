using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vendas.Classes;
using Vendas.Persistencia;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCliente.Focus();
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Venda venda = new Venda();

        venda.Cliente = Convert.ToString(txtCliente.Text);
        venda.Endereco = Convert.ToString(txtEndereco.Text);
        venda.Bairro = Convert.ToString(txtBairro.Text);
        venda.Numero = Convert.ToInt32(txtNumero.Text);
        venda.Cnpj = Convert.ToString(txtCnpj.Text);
        venda.Telefone = Convert.ToString(txtTel.Text);
        venda.Nome = txtProduto.Text;
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
            txtProduto.Text = "";
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