using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSitePi.Classes;
using WebSitePi.Persistencia;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtOrdem.Focus();
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Perdas perdas = new Perdas();
        perdas.Ordem = Convert.ToInt32(txtOrdem.Text);
        perdas.Produto = txtProduto.Text;
        perdas.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        perdas.Motivo = txtMotivo.Text;

        PerdaBD bd = new PerdaBD();
        if (bd.Insert(perdas))
        {
            lblMensagem.Text = "Perda cadastrada com sucesso";

            txtOrdem.Text = "";
            txtProduto.Text = "";
            txtQuantidade.Text = "";
            txtMotivo.Text = "";
            txtProduto.Focus();
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