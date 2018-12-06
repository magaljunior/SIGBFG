using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDespesa.Persistencia;


public partial class Paginas_ListarDespesa : System.Web.UI.Page
{
private void Carrega()
    {
        DespesaBD bd = new DespesaBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;
        DataTable dt = ds.Tables[0];
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        lblMensagem.Text = "Despesa(s) encontrada(s) : " + rows.ToString();
        GridView1.Visible = true;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Carrega();
        }
    }

    
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        int codigo = 0;
        switch (e.CommandName)
        {
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo; Response.Redirect("AlterarDespesa.aspx");
                break;
            case "Deletar":
                codigo = Convert.ToInt32(e.CommandArgument);
                DespesaBD bd = new DespesaBD();
                bd.Delete(codigo);
                Carrega();
                break;
            default:
                break;
        }

    }
}