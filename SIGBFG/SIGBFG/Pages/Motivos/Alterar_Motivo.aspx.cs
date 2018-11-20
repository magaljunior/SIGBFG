using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Classes;
using SIGBFG.Persistencia;

public partial class Pages_Motivos_Alterar_Motivo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MotivoBD bd = new MotivoBD();
            Motivo motivo = bd.Select(Convert.ToInt32(Session["ID"]));
            txtMotivoPerda.Text = motivo.MotivoPerda;
        }
        txtMotivoPerda.Focus();
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        MotivoBD bd = new MotivoBD();
        Motivo motivo = bd.Select(Convert.ToInt32(Session["ID"]));
        motivo.MotivoPerda = txtMotivoPerda.Text;

        if (bd.Update(motivo))
        {
            lblMensagem.Text = "Motivo alterado com sucesso";

            txtMotivoPerda.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}