using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDespesa.Classes;
using WebDespesa.Persistencia;
using System.Data;

public partial class Paginas_CadastrarDespesa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Despesa despesa = new Despesa();
        
        despesa.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        despesa.Valor = Convert.ToDouble(txtValor.Text);
        despesa.Descricao = txtDescricao.Text;
        despesa.Data = txtData.Text;

        DespesaBD bd = new DespesaBD();
        if (bd.Insert(despesa))
        {
            lblMensagem.Text = "Suas despesas foram cadastradas";
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar meta!";
        }



    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
    }
}

