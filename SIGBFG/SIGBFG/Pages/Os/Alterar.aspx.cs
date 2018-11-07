using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Classes;
using SIGBFG.Persistencia;
using System.Data;
using Cadastro_Produto.Persistence;

public partial class Pages_Os_Alterar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            OrdemServicoBD bd = new OrdemServicoBD();
            OrdemServico ordemServico = bd.Select(Convert.ToInt32(Session["ID"]));
            txtFuncionario.Text = ordemServico.Funcionario;
            ddlProdutos.Text = ordemServico.Produto;
            txtQuantidade.Text = ordemServico.Quantidade.ToString();
            txtDataInicio.Text = ordemServico.DataInicio;
            txtDataExpiracao.Text = ordemServico.DataExpiracao;
            txtDescricao.Text = ordemServico.Descricao;

            CarregaDDL();
        }

        txtFuncionario.Focus();
    }


    private void CarregaDDL()
    {
        ProdutoBD bd = new ProdutoBD();
        DataSet ds = bd.SelectAll();

        ddlProdutos.Items.Clear();
        //vincula dados do ds ao componente ddl
        ddlProdutos.DataSource = ds.Tables[0].DefaultView;
        ddlProdutos.DataTextField = "pro_nome";  ///o campo que será exibido do produto
        ddlProdutos.DataValueField = "pro_nome";  /// o campo código do produto
        ddlProdutos.DataBind();
        //adiciona item "Selecione" na primeira posição do ddl
        ddlProdutos.Items.Insert(0, "Selecione");
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        OrdemServicoBD bd = new OrdemServicoBD();
        OrdemServico ordemServico = bd.Select(Convert.ToInt32(Session["ID"]));
        ordemServico.Codigo = Convert.ToInt32(Session["ID"]);
        ordemServico.Funcionario = txtFuncionario.Text;
        ordemServico.Produto = ddlProdutos.SelectedItem.Value;
        ordemServico.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        ordemServico.DataInicio = txtDataInicio.Text;
        ordemServico.DataExpiracao = txtDataExpiracao.Text;
        ordemServico.Descricao = txtDescricao.Text;
        if (bd.Update(ordemServico))
        {
            lblMensagem.Text = "Ordem de Serviço alterada com sucesso";
            txtFuncionario.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}