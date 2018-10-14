using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CadastrarMetas.Classes;
using System.Data;
using CadastrarMetas.Persistencia;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Metas metas = new Metas();
        metas.Mes = txtMes.Text;
        metas.Ano = txtAno.Text;
        metas.Meta = Convert.ToInt32(txtMeta.Text);
        metas.Produto = txtProduto.Text ;
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

