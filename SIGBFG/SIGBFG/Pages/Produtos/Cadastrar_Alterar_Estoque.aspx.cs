using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Cadastro_Produto.Classes;
using Cadastro_Produto.Persistence;

public partial class Pages_Alterar_Estoque_Produtos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ProdutoBD bd = new ProdutoBD();
            Produto produto = bd.Select(Convert.ToInt32(Session["ID"]));
            txtNome.Text = produto.Nome;
            txtQuantidade.Text = produto.Quantidade.ToString();
        }
        txtQuantidade.Focus();
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cadastrar.aspx");
    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Listar.aspx");
    }

    protected void btnEstoqueAtual_Click(object sender, EventArgs e)
    {
        Response.Redirect("Estoque_Produtos.aspx");
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        {
            ProdutoBD bd = new ProdutoBD();
            Produto produto = bd.Select(Convert.ToInt32(Session["ID"]));
            produto.Nome = txtNome.Text;
            produto.Quantidade = Convert.ToInt32(txtQuantidade.Text);

            if (bd.Update(produto))
            {
                lblMensagem.Text = "Estoque alterado com sucesso";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}