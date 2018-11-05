using System;
using System.Web.UI;
using SIGBFG.Persistencia;

public partial class Pages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    private bool IsPreenchido(string str)
    {
        bool retorno = false;
        if (str != string.Empty)
        {
            retorno = true;
        }
        return retorno;
    }
    private bool UsuarioEncontrado(Pessoa pessoa)
    {
        bool retorno = false;
        if (pessoa != null)
        {
            retorno = true;
        }
        return retorno;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string nome = txtNome.Text.Trim();
        string senha = txtSenha.Text.Trim();
        if (!IsPreenchido(nome))
        {
            lblMensagem.Text = "Preencha o nome";
            txtNome.Focus();
            return;
        }
        if (!IsPreenchido(senha))
        {
            lblMensagem.Text = "Preencha a senha";
            txtSenha.Focus();
            return;
        }
        PessoaBD bd = new PessoaBD();
        Pessoa pessoa = new Pessoa();
        pessoa = bd.Autentica(nome, senha);
        if (!UsuarioEncontrado(pessoa))
        {
            lblMensagem.Text = "Usuário não encontrado";
            txtNome.Focus();
            return;
        }
        Session["ID"] = pessoa.Codigo;
        switch (pessoa.Tipo)
        {
            case 1:
                Response.Redirect("ADM/Administrador.aspx");
                break;
            case 2:
                Response.Redirect("Client/Index.aspx");
                break;
            default:
                break;
        }

    }

    protected void txtSenha_TextChanged(object sender, EventArgs e)
    {

    }


    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADM/Index.aspx");
    }
}