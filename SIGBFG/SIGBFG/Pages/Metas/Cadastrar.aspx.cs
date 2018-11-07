using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CadastrarMetas.Classes;
using System.Data;
using CadastrarMetas.Persistencia;
using Cadastro_Produto.Persistence;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtMes.Focus();

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
        //vincula dados do ds ao componente ddl
        ddlProdutos.DataSource = ds.Tables[0].DefaultView;
        ddlProdutos.DataTextField = "pro_nome";  ///o campo que será exibido do produto
        ddlProdutos.DataValueField = "pro_nome";  /// o campo código do produto
        ddlProdutos.DataBind();

        ddlProdutos.Items.Insert(0, "Selecione");
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Metas metas = new Metas();
        metas.Mes = txtMes.Text;
        metas.Ano = txtAno.Text;
        metas.Meta = Convert.ToInt32(txtMeta.Text);
        metas.Produto = ddlProdutos.SelectedItem.Value;
        metas.Descricao = txtDescricao.Text;

        MetasBD bd = new MetasBD();
        if (bd.Insert(metas))
        {
            lblMensagem.Text = "Suas metas foram cadastradas";
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar meta!";
        }



    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect("listar.aspx");
    }
}

