﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CadastrarMetas.Persistencia;


public partial class Paginas_Listar : System.Web.UI.Page
{

    private void Carrega()
    {
        MetasBD bd = new MetasBD();
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
        int codigo = 0; switch (e.CommandName) { case "Alterar": codigo = Convert.ToInt32(e.CommandArgument); Session["ID"] = codigo; Response.Redirect("Alterar.aspx"); break; case "Deletar": codigo = Convert.ToInt32(e.CommandArgument); MetasBD bd = new MetasBD(); bd.Delete(codigo); Carrega(); break; default: break; }

    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cadastrar.aspx");
    }
}