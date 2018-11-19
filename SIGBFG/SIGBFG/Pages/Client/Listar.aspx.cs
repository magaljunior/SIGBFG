using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Persistencia;
using System.Data;

public partial class Paginas_Listar : System.Web.UI.Page
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
            lblMensagem.Text = "Ordem de servio(s) encontrada(s) : " + rows.ToString();
            GridView1.Visible = true;
        }
        else
        {
            lblMensagem.Text = "Nenhuma Ordem de serviço encontrada";
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
}
