using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSitePi.Persistencia;
using WebSitePi.Classes;
using System.Data;
using Cadastro_Produto.Persistence;
using SIGBFG.Classes;
using SIGBFG.Persistencia;

public partial class Paginas_Alterar : System.Web.UI.Page
{

    protected void Page_Load (object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PerdaBD bd = new PerdaBD();
            Perdas perdas = bd.Select(Convert.ToInt32(Session["ID"]));
            ddlProdutos.Text = perdas.Produto;
            txtQuantidade.Text = perdas.Quantidade.ToString();
            ddlMotivos.Text = perdas.Motivo;

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

    protected void btnSalvar_Click1(object sender, EventArgs e)
    {
        {
            PerdaBD bd = new PerdaBD();
            Perdas perdas = bd.Select(Convert.ToInt32(Session["ID"]));
            perdas.Codigo = Convert.ToInt32(Session["ID"]);
            perdas.Produto = ddlProdutos.SelectedItem.Value;
            perdas.Quantidade = Convert.ToInt32(txtQuantidade.Text);
            perdas.Motivo = ddlMotivos.SelectedItem.Value;
            if (bd.Update(perdas))
            {
                lblMensagem.Text = "Perda alterada com sucesso";
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }

        }
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
}


