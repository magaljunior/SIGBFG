using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SIGBFG.Classes;
using SIGBFG.Persistencia;

public partial class Pages_Motivos_Cadastrar_Motivo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtMotivoPerda.Focus();
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Motivo motivo = new Motivo();
        motivo.MotivoPerda = txtMotivoPerda.Text;

        MotivoBD bd = new MotivoBD();
        if (bd.Insert(motivo))
        {
            lblMensagem.Text = "Motivo cadastrado com sucesso";

            txtMotivoPerda.Text = "";

            txtMotivoPerda.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }
}