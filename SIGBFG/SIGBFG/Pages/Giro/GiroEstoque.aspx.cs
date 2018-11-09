using GiroEstoque.Persistencia;
using GiroEstoque.Classes;
using System;

public partial class Pages_GiroEstoque : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        int EstoqueMinimo = Convert.ToInt32("txtEstoqueMaximo.Text") / 3;

        return;
    }


    protected void txtEstoqueMaximo_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtVendas_TextChanged(object sender, EventArgs e)
    {
        int vendas = Convert.ToInt32(txtVendas.Text);
    }

    protected void txtEstoqueAtual_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnOS_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADM/OS.aspx");
    }
}