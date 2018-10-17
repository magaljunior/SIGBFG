using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Cadastro_Produto.Persistence;
using System.Configuration;

public partial class Pages_Estoque_Produtos : System.Web.UI.Page
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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int codigo = 0;
        switch (e.CommandName)
        {
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("Cadastrar_Alterar_EstoquePD.aspx");
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

    protected void btnCadastrar_Click1(object sender, EventArgs e)
    {
        Response.Redirect("CadastrarPD.aspx");
    }

    protected void btnListar_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ListarPD.aspx");
    }

    protected void fotoProduto_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = e.Row.DataItem as DataRowView;
                string foto = Convert.ToString(drv["pro_foto"]);
                if (foto != string.Empty)
                {
                    e.Row.Cells[0].Text = "<img src='" + ConfigurationManager.AppSettings["uploadHTTP"] + foto + "' style='width:100px' />";
                }
            }
        }
    }
}