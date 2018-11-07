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

public partial class Paginas_Alterar : System.Web.UI.Page
{

    protected void Page_Load (object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PerdaBD bd = new PerdaBD();
            Perdas perdas = bd.Select(Convert.ToInt32(Session["ID"]));
            txtOrdem.Text = perdas.Ordem.ToString();
            ddlProdutos.Text = perdas.Produto;
            txtQuantidade.Text = perdas.Quantidade.ToString();
            txtMotivo.Text = perdas.Motivo;

            CarregaDDL();
        }
        txtOrdem.Focus();
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

    protected void btnSalvar_Click1(object sender, EventArgs e)
    {
        {
            PerdaBD bd = new PerdaBD();
            Perdas perdas = bd.Select(Convert.ToInt32(Session["ID"]));
            perdas.Codigo = Convert.ToInt32(Session["ID"]);
            perdas.Ordem = Convert.ToInt32(txtOrdem.Text);
            perdas.Produto = ddlProdutos.SelectedItem.Value;
            perdas.Quantidade = Convert.ToInt32(txtQuantidade.Text);
            perdas.Motivo = txtMotivo.Text;
            if (bd.Update(perdas))
            {
                lblMensagem.Text = "Perda alterada com sucesso";
                txtOrdem.Focus();
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


