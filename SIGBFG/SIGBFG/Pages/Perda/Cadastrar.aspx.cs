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
using SIGBFG.Classes;
using SIGBFG.Persistencia;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            CarregaDDL();

            CarregaDDL2();
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

    private void CarregaDDL2()
    {
        MotivoBD bd = new MotivoBD();
        DataSet ds = bd.SelectAll();

        ddlMotivos.Items.Clear();
        ddlMotivos.DataSource = ds.Tables[0].DefaultView;
        ddlMotivos.DataTextField = "mot_motivoPerda";
        ddlMotivos.DataValueField = "mot_motivoPerda";
        ddlMotivos.DataBind();

        ddlMotivos.Items.Insert(0, "Selecione");
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Perdas perdas = new Perdas();
        perdas.Codigo = Convert.ToInt32(Session["ID"]);
        perdas.Produto = ddlProdutos.SelectedItem.Value;
        perdas.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        perdas.Motivo = ddlMotivos.SelectedItem.Value;
        perdas.Data = txtData.Text;

        PerdaBD bd = new PerdaBD();
        if (bd.Insert(perdas))
        {
            lblMensagem.Text = "Perda cadastrada com sucesso";

            ddlProdutos.SelectedItem.Value = "";
            txtQuantidade.Text = "";
            ddlMotivos.SelectedItem.Value = "";
            txtData.Text = "";
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }

        CarregaDDL();

        CarregaDDL2();
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