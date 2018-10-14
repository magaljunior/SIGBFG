using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Cadastro_Produto.Classes;
using Cadastro_Produto.Persistence;
using System.Configuration;

public partial class Pages_Alterar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ProdutoBD bd = new ProdutoBD();
            Produto produto = bd.Select(Convert.ToInt32(Session["ID"]));
            txtNome.Text = produto.Nome;
            txtPreco.Text = produto.Preco.ToString();
            txtQuantidadeMinima.Text = produto.QuantidadeMinima.ToString();
            txtDescricao.Text = produto.Descricao;
        }

        txtNome.Focus();
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastrarPD.aspx");
    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListarPD.aspx");
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {

                ProdutoBD bd = new ProdutoBD();
                Produto produto = bd.Select(Convert.ToInt32(Session["ID"]));
                produto.Nome = txtNome.Text;
                produto.Preco = Convert.ToDouble(txtPreco.Text);
                produto.QuantidadeMinima = Convert.ToInt32(txtQuantidadeMinima.Text);
                produto.Descricao = txtDescricao.Text;

                if (bd.Update(produto))
                {
                    lblMensagem.Text = "Produto alterado com sucesso";
                    txtNome.Focus();
                }
                else
                {
                    lblMensagem.Text = "Erro ao salvar.";
                }
            }

    protected void btnEstoqueAtual_Click(object sender, EventArgs e)
    {
        Response.Redirect("Estoque_ProdutosPD.aspx");
    }
}