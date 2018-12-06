using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SIGBFG.Persistencia;

public partial class Pages_Usuario_Listar_Usuario : System.Web.UI.Page
{
    private void Carrega()
    {
        PessoaBD bd = new PessoaBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;
        DataTable dt = ds.Tables[0];
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        lblMensagem.Text = "Usuário(s) encontrado(s) : " + rows.ToString();
        GridView1.Visible = true;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Carrega();
        }
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        {
            int codigo = 0;
            switch (e.CommandName)
            {
                case "Alterar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    Session["ID"] = codigo;
                    Response.Redirect("Alterar_Usuario.aspx");
                    break;
                case "Deletar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    PessoaBD bd = new PessoaBD();
                    bd.Delete(codigo);
                    Carrega();
                    break;
                default:
                    break;
            }
        }
    }
}