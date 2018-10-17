using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using SIGBFG.Persistencia;
using SIGBFG.Classes;
using System.Web.UI.WebControls;

public partial class Paginas_Listar_usuario : System.Web.UI.Page
{

    private void Carrega()
    {
        UsuarioBD bd = new UsuarioBD();
        DataSet ds = bd.SelectAll();
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Carrega();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int codigo = 0;
        switch (e.CommandName)
        {
            case "Desativar":
                codigo = Convert.ToInt32(e.CommandArgument);
                UsuarioBD p = new UsuarioBD();

                Usuario usuario = p.Select(codigo);

                if (usuario.Ativo)
                    p.Desativar(codigo, false);
                else
                    p.Desativar(codigo, true);

                Carrega();
                break;
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("Alterar_usuario.aspx");
                break;
            case "Deletar":
                codigo = Convert.ToInt32(e.CommandArgument);
                UsuarioBD bd = new UsuarioBD();
                bd.Delete(codigo);
                Carrega();
                break;
            default:
                break;
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = e.Row.DataItem as DataRowView;

                LinkButton lbDesativar = (LinkButton)e.Row.FindControl("lbDesativar");
                bool ativo = Convert.ToBoolean(drv["usu_ativo"]);
                if (ativo)
                    lbDesativar.Text = "Desativar";
                else
                    lbDesativar.Text = "Ativar";
            }
        }
    }
}