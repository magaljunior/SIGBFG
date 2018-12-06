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

public partial class Paginas_Alterar : System.Web.UI.Page
{
    //private void CarregaDDL()
    //{
    //    ProdutoBD bd = new ProdutoBD();
    //    DataSet ds = bd.SelectAll();

    //    ddlProdutos.Items.Clear();
    //    ddlProdutos.DataSource = ds.Tables[0].DefaultView;
    //    ddlProdutos.DataTextField = "pro_nome";
    //    ddlProdutos.DataValueField = "pro_nome";
    //    ddlProdutos.DataBind();

    //    ddlProdutos.Items.Insert(0, "Selecione");
    //}

    protected void Page_Load (object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            VendaBD bd = new VendaBD();
            Venda venda = bd.Select(Convert.ToInt32(Session["ID"]));
            txtCliente.Text = venda.Cliente;
            txtRua.Text = venda.Endereco;
            txtBairro.Text = venda.Bairro;
            txtNumero.Text = venda.Numero;
            txtCep.Text = venda.Cep;
            txtCnpj.Text = venda.Cnpj;
            txtCpf.Text = venda.Cpf;
            txtTelefone.Text = venda.Telefone;
            //ddlProdutos.Text = venda.Produto;
            //txtQuantidade.Text = venda.Quantidade.ToString();
            txtData.Text = venda.Data;
            txtValor.Text = venda.Valor.ToString();

            //CarregaDDL();
        }

        txtCliente.Focus();
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect(
           "Cadastrar.aspx"
           );
    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect(
           "Listar.aspx"
           );
    }

    protected void btnAlterarVenda_Click(object sender, EventArgs e)
    {
        {
            VendaBD bd = new VendaBD();
            Venda venda = bd.Select(Convert.ToInt32(Session["ID"]));
            venda.Cliente = txtCliente.Text;
            venda.Endereco = txtRua.Text;
            venda.Bairro = txtBairro.Text;
            venda.Numero = txtNumero.Text;
            venda.Cep = txtCep.Text;
            venda.Cnpj = txtCnpj.Text;
            venda.Cpf = txtCpf.Text;
            venda.Telefone = txtTelefone.Text;
            //venda.Produto = ddlProdutos.SelectedItem.Value;
            //venda.Quantidade = Convert.ToInt32(txtQuantidade.Text);
            venda.Valor = Convert.ToDouble(txtValor.Text);
            venda.Data = txtData.Text;

            txtCliente.Focus();

            if (bd.Update(venda))
            {
                lblMensagem.Text = "Venda alterada com sucesso";
                txtCliente.Focus();
            }
            else
            {
                lblMensagem.Text = "Não foi possível Alterar Venda.";
            }

        }
    }
}


