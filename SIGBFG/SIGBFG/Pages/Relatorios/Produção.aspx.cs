﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SIGBFG.Persistencia;

public partial class Pages_Relatorios_Produção : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Carrega();
    }

    private void Carrega()
    {
        OrdemServicoBD bd = new OrdemServicoBD();
        DataSet ds = bd.SelectAll();

        string dados = "";
        //varre linhas do dataset
        dados = dados + "['Nome', 'Quantidade', 'Data Inicial', 'Data Expiração'],";
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            string nome = Convert.ToString(dr["OS_PRODUTO"]);
            int quantidade = Convert.ToInt32(dr["OS_QUANTIDADE"]);
            string dataInicial = Convert.ToString(dr["OS_DATAINICIO"]);
            string dataExpiracao = Convert.ToString(dr["OS_DATAEXPIRACAO"]);

            dados = dados + "['" + nome + "', " + quantidade + ", " + dataInicial + ", " + dataExpiracao + "],";

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