using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Classes;
using SIGBFG.Persistencia;

public partial class Pages_Usuario_Cadastrar_Usuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Pessoa pessoa = new Pessoa();
        pessoa.Nome = txtNome.Text;
        pessoa.Email = txtEmail.Text;
        pessoa.Senha = txtSenha.Text;
        pessoa.Tipo = Convert.ToInt32(txtTipo.Text);
        PessoaBD bd = new PessoaBD();
        if (bd.Insert(pessoa))
        {
            lblMensagem.Text = "Usuário cadastrado com sucesso";
            txtNome.Text = "";
            txtEmail.Text = "";
            txtSenha.Text = "";
            txtTipo.Text = "";
            txtNome.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}