using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSitePi.Classes;
using WebSitePi.Persistencia;
using System.Data;

public partial class Pages_Perda_TotalPerdas : System.Web.UI.Page
{
    private void Carrega()
    {
        PerdaBD bd = new PerdaBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;

        if (rows > 0)
        {
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
            lblMensagem.Text = "Perda(s) encontrada(s) : " + rows.ToString();
            GridView1.Visible = true;
        }
        else
        {
            lblMensagem.Text = "Nenhuma perda encontrada";
            GridView1.Visible = false;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Carrega();
        }

        decimal ValorTotal = 0;

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                if (!String.IsNullOrEmpty(row.Cells[2].Text))
                    ValorTotal += Decimal.Parse(row.Cells[2].Text);
            }
        }

        txtTotal.Text = ValorTotal.ToString("");
    }
}