using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSitePi.Persistencia;
using System.Data;

public partial class Paginas_Listar : System.Web.UI.Page
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
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = 0;
            switch (e.CommandName)
            {
                case "Alterar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    Session["ID"] = codigo;
                    Response.Redirect("Alterar.aspx");
                    break;
                case "Deletar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    PerdaBD bd = new PerdaBD();
                    bd.Delete(codigo);
                    Carrega();
                    break;
                default:
                    break;
            }
        }




    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect(
         "Cadastrar.aspx"
         );
    }
}
