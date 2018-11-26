using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vendas.Persistencia;
using System.Data;

public partial class Paginas_Listar : System.Web.UI.Page
{
    private void Carrega()
    {
        VendaBD bd = new VendaBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;
        DataTable dt = ds.Tables[0];
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        lblMensagem.Text = "Venda(s) encontrada(s) : " + rows.ToString();
        GridView1.Visible = true;
        int acumula = 0;

        for (int l = 0; l < dt.Rows.Count; l++)
        {
            if (dt.Rows[l]["VEN_QUANTIDADE_TOTAL"].ToString() != "")
            {
                int total = Convert.ToInt32(dt.Rows[l]["VEN_QUANTIDADE_TOTAL"]);
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
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int codigo = 0;
        switch (e.CommandName)
        {
            case "Calcular":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("Giro/GiroEstoque.aspx");
                break;
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("Alterar.aspx");
                break;
            case "Deletar":
                codigo = Convert.ToInt32(e.CommandArgument);
                VendaBD bd = new VendaBD();
                bd.Delete(codigo);
                Carrega();
                break;
            default:
                break;
        }
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cadastrar.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
