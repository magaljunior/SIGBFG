using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using SIGBFG.Classes;
using SIGBFG.Persistencia;
using System.Web.UI.WebControls;

public partial class Paginas_Alterar_usuario : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            UsuarioBD bd = new UsuarioBD();
            Usuario usuario = bd.Select(Convert.ToInt32(Session["ID"]));
            txtNome.Text = usuario.Nome;
            txtSobrenome.Text = usuario.Sobrenome;
            txtSenha.Text = usuario.Senha;

        }



    }
    protected void Button1_Click(object sender, EventArgs e)
        {
            UsuarioBD bd = new UsuarioBD();
            Usuario usuario = bd.Select(Convert.ToInt32(Session["ID"]));
            usuario.Nome = txtNome.Text;
            usuario.Sobrenome = txtSobrenome.Text;
            usuario.Senha = txtSenha.Text;


        if (bd.Update(usuario))
            {
                Response.Write("<script>alert('Usuário alterado com Sucesso!')</script>");

            }
            else
            {
                Response.Write("<script>alert('Erro ao Editar o usuário!')</script>");
            }

            //Response.Redirect("Listar_usuario.aspx");
        }
}
