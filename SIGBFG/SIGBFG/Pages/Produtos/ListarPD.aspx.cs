﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Cadastro_Produto.Persistence;
using Cadastro_Produto.Classes;
using System.Configuration;


public partial class Pages_Listar : System.Web.UI.Page
{
    private void Carrega()
    {
        ProdutoBD bd = new ProdutoBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;

        if (rows > 0)
        {
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
            lblMensagem.Text = "Produtos encontrados : " + rows.ToString();
            GridView1.Visible = true;
        }
        else
        {
            lblMensagem.Text = "Nenhum produto encontrado";
            GridView1.Visible = false;
        }

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
        int codigo = 0;
        switch (e.CommandName)
        {
            case "Desativar":
                codigo = Convert.ToInt32(e.CommandArgument);
                ProdutoBD p = new ProdutoBD();

                Produto produto = p.Select(codigo);

                if (produto.Ativo)
                    p.Desativar(codigo, false);
                else
                    p.Desativar(codigo, true);

                Carrega();
                break;
            case "Calcular":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("Giro/GiroEstoque.aspx");
                break;
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("AlterarPD.aspx");
                break;
            case "Deletar":
                codigo = Convert.ToInt32(e.CommandArgument);
                ProdutoBD bd = new ProdutoBD();
                bd.Delete(codigo);
                Carrega();
                break;
            default:
                break;
        }
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastrarPD.aspx");
    }

    protected void btnEstoque_Click(object sender, EventArgs e)
    {
        Response.Redirect("Estoque_ProdutosPD.aspx");
    }

    protected void imgProdutos_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = e.Row.DataItem as DataRowView;
                string foto = Convert.ToString(drv["pro_foto"]);
                if (foto != string.Empty)
                {
                    e.Row.Cells[0].Text = "<img src='" + ConfigurationManager.AppSettings["uploadHTTP"] + foto +"' style='width:100px' />";
                }

                LinkButton lbDesativar = (LinkButton)e.Row.FindControl("lbDesativar");
                bool ativo = Convert.ToBoolean(drv["pro_ativo"]);
                if (ativo)
                    lbDesativar.Text = "Desativar";
                else
                    lbDesativar.Text = "Ativar";
            }
        }
    }
}