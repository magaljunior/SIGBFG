using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Classes;
using SIGBFG.Persistencia;

public partial class Paginas_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFuncionario.Focus();
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        OrdemServico ordemServico = new OrdemServico();
        ordemServico.Funcionario = txtFuncionario.Text;        ordemServico.Produto = txtProduto.Text;
        ordemServico.Quantidade = Convert.ToInt32(txtQuantidade.Text);
        ordemServico.DataInicio = txtDatainicio.Text;
        ordemServico.DataExpiracao = txtDataexpiracao.Text;
        ordemServico.Descricao = txtDescricao.Text;

        OrdemServicoBD bd = new OrdemServicoBD();
        if (bd.Insert(ordemServico))
        {
            lblMensagem.Text = "Ordem de Serviço cadastrada com sucesso";
            txtFuncionario.Text = "";
            txtProduto.Text = "";
            txtQuantidade.Text = "";
            txtDatainicio.Text = "";
            txtDataexpiracao.Text = "";
            txtDescricao.Text = "";
            txtFuncionario.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}