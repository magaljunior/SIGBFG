using System;
using pi3semestre.Classes;
using pi3semestre.Persistencia;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_Cadastro_usuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {

        if (txtconfirmaSenha.Text.Equals (txtsenha.Text))
        {
                
            usuario usuario = new usuario();
            usuario.Nome = txtNome.Text;
            usuario.Sobrenome = txtSobrenome.Text;
            usuario.Senha = txtconfirmaSenha.Text;
            usuario.Status = "Ativo";


            usuarioBD bd = new usuarioBD();

            if (bd.Insert(usuario))
            {
                Response.Write("<script>alert('Usuário cadastrado com Sucesso!')</script>");
                txtNome.Text = "";
                txtSobrenome.Text = "";
                txtsenha.Text = "";
                txtconfirmaSenha.Text = "";
              
            }
            else
            {
                Response.Write("<script>alert('Erro ao salvar usuário!')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('As senhas não conferem')</script>");
        }






    }




    protected void btnEditar_Click(object sender, EventArgs e)
    {

        Response.Redirect("Listar_usuario.aspx");

    }
}