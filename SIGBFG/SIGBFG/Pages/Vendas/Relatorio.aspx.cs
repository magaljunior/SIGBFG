using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vendas.Persistencia;
using System.Data;
using System.Configuration;
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
        decimal ValorTotal = 0;

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                if (!String.IsNullOrEmpty(row.Cells[1].Text))
                    ValorTotal += Decimal.Parse(row.Cells[1].Text);
            }
        }

        txtTotal.Text = ValorTotal.ToString("");

        CarregaGrafico();
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cadastrar.aspx");
    }
    protected void btnListar_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ListarPD.aspx");
    }

    private void CarregaGrafico()
    {
        VendaBD bd = new VendaBD();
        DataSet ds = bd.SelectAll();

        string dados = "";
        //varre linhas do dataset
        dados = dados + "['Nome', 'Quantidade'],";
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            string nome = Convert.ToString(dr["VEN_PRODUTO"]);
            int quantidade = Convert.ToInt32(dr["VEN_QUANTIDADE"]);

            dados = dados + "['" + nome + "', " + quantidade + "],";

        }

        string grafico = "";
        grafico = grafico + "<script type='text/javascript'>";
        grafico = grafico + "google.load('visualization', '1', {packages:['corechart']});";
        grafico = grafico + "function drawChart() {";
        grafico = grafico + "var data = google.visualization.arrayToDataTable([";
        grafico = grafico + dados;
        grafico = grafico + "]);";
        grafico = grafico + "var options = {";
        grafico = grafico + "title: '',";
        grafico = grafico + "is3D: true ";
        grafico = grafico + "};";
        grafico = grafico + "var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));";
        grafico = grafico + "chart.draw(data, options);";
        grafico = grafico + "}";
        grafico = grafico + "google.setOnLoadCallback(drawChart);";
        grafico = grafico + "</script>";

        Literal1.Text = grafico;

    }
}
}
