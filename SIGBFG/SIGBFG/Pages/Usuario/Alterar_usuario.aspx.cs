using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Classes;
using SIGBFG.Persistencia;

public partial class Pages_Usuario_Alterar_Funcionario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PessoaBD bd = new PessoaBD();
            Pessoa pessoa = bd.Select(Convert.ToInt32(Session["ID"]));
            txtNome.Text = pessoa.Nome;
            txtEmail.Text = pessoa.Email;
            txtSenha.Text = pessoa.Senha;
            txtTipo.Text = pessoa.Tipo.ToString();
        }

        txtNome.Focus();
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        PessoaBD bd = new PessoaBD();
        Pessoa pessoa = bd.Select(Convert.ToInt32(Session["ID"]));
        pessoa.Codigo = Convert.ToInt32(Session["ID"]);
        pessoa.Nome = txtNome.Text;
        pessoa.Email = txtEmail.Text;
        pessoa.Senha = txtSenha.Text;
        pessoa.Tipo = txtTipo.SelectedItem.Value;

        if (bd.Update(pessoa))
        {
            lblMensagem.Text = "Usuário alterado com sucesso";
            txtNome.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}