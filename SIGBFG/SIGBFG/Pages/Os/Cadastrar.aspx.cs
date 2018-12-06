using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Classes;
using SIGBFG.Persistencia;
using Cadastro_Produto.Persistence;
using System.Data;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFuncionario.Focus();

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
        OrdemServico ordemServico = new OrdemServico();
        Estoque estoque = new Estoque();
        ordemServico.Codigo = Convert.ToInt32(Session["ID"]);
        ordemServico.Funcionario = txtFuncionario.Text;
        ordemServico.Produto = ddlProdutos.SelectedItem.Value;
        ordemServico.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        ordemServico.DataInicio = txtDatainicio.Text;
        ordemServico.DataExpiracao = txtDataexpiracao.Text;
        ordemServico.Descricao = txtDescricao.Text;

        OrdemServicoBD bd = new OrdemServicoBD();
        if (bd.Insert(ordemServico))
        {
            lblMensagem.Text = "Ordem de Serviço cadastrada com sucesso";
            txtFuncionario.Text = "";
            ddlProdutos.SelectedItem.Value = "";
            txtQuantidade.Text = "";
            txtDatainicio.Text = "";
            txtDataexpiracao.Text = "";
            txtDescricao.Text = "";
            txtFuncionario.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}