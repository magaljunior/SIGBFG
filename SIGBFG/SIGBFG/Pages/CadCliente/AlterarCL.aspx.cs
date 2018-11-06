using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vendas.Classes;
using Vendas.Persistencia;
using System.Data;

public partial class Paginas_Alterar : System.Web.UI.Page
{

    protected void Page_Load (object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ClienteBD bd = new ClienteBD();
            Cliente cliente = bd.Select(Convert.ToInt32(Session["ID"]));
            txtCliente.Text = cliente.Nome;
            txtEndereco.Text = cliente.Endereco;
            txtBairro.Text = cliente.Bairro;
            txtNumero.Text = cliente.Numero.ToString();
            txtCnpj.Text = cliente.CNPJ;
            txtTel.Text = cliente.Telefone;
           
        }
    }
              
    protected void btnSalvar_Click1(object sender, EventArgs e)
    {
        {
            ClienteBD bd = new ClienteBD();
            Cliente cliente = bd.Select(Convert.ToInt32(Session["ID"]));
            cliente.Nome = Convert.ToString(txtCliente.Text);
            cliente.Endereco = Convert.ToString(txtEndereco.Text);
            cliente.Bairro = Convert.ToString(txtBairro.Text);
            cliente.Numero = Convert.ToInt32(txtNumero.Text);
            cliente.CNPJ = Convert.ToString(txtCnpj.Text);
            cliente.Telefone = Convert.ToString(txtTel.Text);
           
            if (bd.Update(cliente))
            {
                lblMensagem.Text = "Venda alterada com sucesso";
                txtCliente.Focus();
            }
            else
            {
                lblMensagem.Text = "Não foi possível Alterar Venda.";
            }

        }
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect(
           "CadastrarCL.aspx"
           );
    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect(
           "ListarCL.aspx"
           );
    }

    protected void txtCliente_TextChanged(object sender, EventArgs e)
    {

    }
}


