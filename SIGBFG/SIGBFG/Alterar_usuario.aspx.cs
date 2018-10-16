using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using pi3semestre.Classes;
using pi3semestre.Persistencia;
using System.Web.UI.WebControls;

public partial class Paginas_Alterar_usuario : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            usuarioBD bd = new usuarioBD();
            usuario usuario= bd.Select(Convert.ToInt32(Session["ID"]));
            txtNome.Text = usuario.Nome;
            txtSobrenome.Text = usuario.Sobrenome;
            DropDownList1.Text = usuario.Status;

        }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        usuarioBD bd = new usuarioBD();
        usuario usuario = bd.Select(Convert.ToInt32(Session["ID"]));
        usuario.Nome = txtNome.Text;
        usuario.Sobrenome = txtSobrenome.Text;
        usuario.Status = DropDownList1.Text;


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