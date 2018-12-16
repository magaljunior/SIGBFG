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

        DataTable dt = ds.Tables[0];
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        lblMensagem.Text = "Venda(s) encontrada(s) : " + rows.ToString();
        GridView1.Visible = true;
        int acumula = 0;

        for (int l = 0; l < dt.Rows.Count; l++)
        {
            if (dt.Rows[l]["VEN_QUANTIDADE"].ToString() != "")
            {
                int total = Convert.ToInt32(dt.Rows[l]["VEN_QUANTIDADE"]);
                acumula += total;
            }

        }
        lblMensagem0.Text = "Quantidade de Produto(s) Vendido(s) : " + acumula.ToString();
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

            string nome = Convert.ToString(dr["VEN_CLIENTE"] + " - ") + Convert.ToString(dr["VEN_PRODUTO"]);
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
        grafico = grafico + "var chart = new google.visualization.PieChart(document.getElementById('chart_div'));";
        grafico = grafico + "chart.draw(data, options);";
        grafico = grafico + "}";
        grafico = grafico + "google.setOnLoadCallback(drawChart);";
        grafico = grafico + "</script>";

        Literal1.Text = grafico;
    }

    private void CarregaGrafico2()
    {
        VendaBD bd = new VendaBD();
        DataSet ds = bd.SelectPeriodo(dataInicio.Text, dataFinal.Text);

        string dados = "";
        //varre linhas do dataset
        dados = dados + "['Nome', 'Quantidade'],";
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            string nome = Convert.ToString(dr["VEN_CLIENTE"] + " - ") + Convert.ToString(dr["VEN_PRODUTO"]);
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
        grafico = grafico + "var chart = new google.visualization.PieChart(document.getElementById('chart_div'));";
        grafico = grafico + "chart.draw(data, options);";
        grafico = grafico + "}";
        grafico = grafico + "google.setOnLoadCallback(drawChart);";
        grafico = grafico + "</script>";

        Literal1.Text = grafico;
    }

    protected void btnGrafico_Click(object sender, EventArgs e)
    {
        CarregaGrafico2();
    }

    protected void btnGraficoTotal_Click(object sender, EventArgs e)
    {
        CarregaGrafico();
    }
}
