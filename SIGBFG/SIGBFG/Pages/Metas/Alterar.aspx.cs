using CadastrarMetas.Classes;
using CadastrarMetas.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Paginas_Alterar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MetasBD bd = new MetasBD();
            Metas metas = bd.Select(Convert.ToInt32(Session["ID"]));
            txtMes.Text = metas.Mes;
            txtAno.Text = metas.Ano;
            txtMeta.Text = metas.Meta.ToString();
            txtProduto.Text = metas.Produto;
            txtDescricao.Text = metas.Descricao;
        }
        txtMeta.Focus();
    }


    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        MetasBD bd = new MetasBD();
        Metas metas = bd.Select(Convert.ToInt32(Session["ID"]));
        metas.Mes = txtMes.Text;
        metas.Ano = txtAno.Text;
        metas.Meta = Convert.ToInt32(txtMeta.Text);
        metas.Produto = txtProduto.Text;
        metas.Descricao = txtDescricao.Text;
        if (bd.Update(metas)) { lblMensagem.Text = "Sua meta foi alterada com sucesso"; txtMeta.Focus(); } else { lblMensagem.Text = "Erro ao salvar."; }
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cadastrar.aspx");
    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Listar.aspx");
    }
}