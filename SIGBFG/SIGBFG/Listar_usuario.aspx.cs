using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using pi3semestre.Persistencia;
using System.Web.UI.WebControls;

public partial class Paginas_Listar_usuario : System.Web.UI.Page
{

    private void Carregar()
    {
        usuarioBD bd = new usuarioBD();
        DataSet ds = bd.SelectAll();
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();


    }

    protected void Page_Load(object sender, EventArgs e)
    {

        Carregar();




    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        int codigo = 0;
        switch (e.CommandName)
        {
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("Alterar_usuario.aspx");
                break;
            case "Deletar":
                codigo = Convert.ToInt32(e.CommandArgument);
                usuarioBD bd = new usuarioBD();
                bd.Delete(codigo);
                Carregar();
                break;
            default:
                break;
        }

    }
}