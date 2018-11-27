using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Persistencia;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Paginas_Relatorio : System.Web.UI.Page
{
    private void Carrega()
    {
        OrdemServicoBD bd = new OrdemServicoBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;

        if (rows > 0)
        {
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Carrega();
        }
        CarregaGrafico();
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect(
         "Cadastrar.aspx"
         );
    }

    private void CarregaGrafico()
    {
        OrdemServicoBD bd = new OrdemServicoBD();
        DataSet ds = bd.SelectAll();

        string dados = "";
        //varre linhas do dataset
        dados = dados + "['Nome', 'Quantidade'],";
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            string nome = Convert.ToString(dr["OS_FUNCIONARIO"] + " - ") + Convert.ToString(dr["OS_PRODUTO"] + " - ") + Convert.ToString(dr["OS_DATAINICIO"] + " - ") + Convert.ToString(dr["OS_DATAEXPIRACAO"]);
            int quantidade = Convert.ToInt32(dr["OS_QUANTIDADE"]);

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
        grafico = grafico + "var chart = new google.visualization.PieChart(document.getElementById('chart_div'));";
        grafico = grafico + "chart.draw(data, options);";
        grafico = grafico + "}";
        grafico = grafico + "google.setOnLoadCallback(drawChart);";
        grafico = grafico + "</script>";

        Literal1.Text = grafico;
    }
}
