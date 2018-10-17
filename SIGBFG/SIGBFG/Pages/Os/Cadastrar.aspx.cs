using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using os.Classes;
using os.persistencia;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Os ordemServico = new Os();
        Os.Funcionario = txtFuncionario.Text;        Os.Produto = txtProduto.Text;
        Os.Quantidade = txtQuantidade.Text;
        Os.Descricao = txtDescricao.Text;
        Os.Datainicio = txtDatainicio.Text;
        Os.Dataexpiracao = txtDataexpiracao.Text;

        OsBD bd = new OsBD();
        if (bd.Insert(ordemServico))
        {
            lblMensagem.Text = "Funcionário cadastrado com sucesso";
            txtNome.Text = "";
            txtCracha.Text = "";
            txtSalario.Text = "";
            txtNome.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }

    }
}