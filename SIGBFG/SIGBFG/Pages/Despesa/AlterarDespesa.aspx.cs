using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDespesa.Classes;
using WebDespesa.Persistencia;

public partial class Paginas_AlterarDespesa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DespesaBD bd = new DespesaBD();
            Despesa despesa = bd.Select(Convert.ToInt32(Session["ID"]));
            txtData.Text = despesa.Data;
            txtQuantidade.Text = despesa.Quantidade.ToString();
            txtDescricao.Text = despesa.Descricao;
            txtValor.Text = despesa.Valor.ToString();
           
        }
    }



    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastrarDespesa.aspx");
    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListarDespesa.aspx");
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        DespesaBD bd = new DespesaBD();
        Despesa despesa = bd.Select(Convert.ToInt32(Session["ID"]));
        despesa.Data = txtData.Text;
        despesa.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        despesa.Descricao = txtDescricao.Text;
        despesa.Valor = Convert.ToDouble(txtValor.Text);
        
        
        if (bd.Update(despesa))
        {
            lblMensagem.Text = "Despesa alterado com sucesso";
            txtData.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}
