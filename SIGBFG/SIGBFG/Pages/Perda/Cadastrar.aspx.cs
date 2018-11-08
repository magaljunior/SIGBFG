using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSitePi.Classes;
using WebSitePi.Persistencia;
using Cadastro_Produto.Persistence;
using System.Data;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtOrdem.Focus();

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
        Perdas perdas = new Perdas();
        perdas.Codigo = Convert.ToInt32(Session["ID"]);
        perdas.Ordem = Convert.ToInt32(txtOrdem.Text);
        perdas.Produto = ddlProdutos.SelectedItem.Value;
        perdas.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        perdas.Motivo = txtMotivo.Text;

        PerdaBD bd = new PerdaBD();
        if (bd.Insert(perdas))
        {
            lblMensagem.Text = "Perda cadastrada com sucesso";

            txtOrdem.Text = "";
            ddlProdutos.SelectedItem.Value = "";
            txtQuantidade.Text = "";
            txtMotivo.Text = "";
            txtOrdem.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
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