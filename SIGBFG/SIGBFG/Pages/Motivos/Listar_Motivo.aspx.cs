using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SIGBFG.Persistencia;

public partial class Pages_Motivos_Listar_Motivo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Carrega();
        }
    }
    private void Carrega()
    {
        MotivoBD bd = new MotivoBD();
        DataSet ds = bd.SelectAll();
        int rows = ds.Tables[0].Rows.Count;
        DataTable dt = ds.Tables[0];
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        lblMensagem.Text = "Motivo(s) encontrado(s) : " + rows.ToString();
        GridView1.Visible = true;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int codigo = 0;
        switch (e.CommandName)
        {
            case "Alterar":
                codigo = Convert.ToInt32(e.CommandArgument);
                Session["ID"] = codigo;
                Response.Redirect("Alterar_Motivo.aspx");
                break;
            case "Deletar":
                codigo = Convert.ToInt32(e.CommandArgument);
                MotivoBD bd = new MotivoBD();
                bd.Delete(codigo);
                Carrega();
                break;
            default:
                break;
        }
    }
}