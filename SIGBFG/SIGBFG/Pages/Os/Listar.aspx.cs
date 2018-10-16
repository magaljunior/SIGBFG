using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Os.Persistencia;
using System.Data;

public partial class Paginas_Listar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        private void Carrega()
        {
            OsBD bd = new OsBD();
            DataSet ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}