using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vendas.Persistencia;
using System.Data;

public partial class Pages_Vendas_Relatorio : System.Web.UI.Page
{
    private void Carrega()
    {
        VendaBD bd = new VendaBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;

        if (rows > 0)
        {
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Carrega();
        }
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cadastrar.aspx");
    }
}
