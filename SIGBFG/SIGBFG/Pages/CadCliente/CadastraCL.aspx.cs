using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vendas.Classes;
using Vendas.Persistencia;

public partial class Pages_Cliente_CadastraCL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Cliente cliente = new Cliente();

        cliente.Nome = txtNome.Text;
        cliente.Endereco = txtEnd.Text;
        cliente.Bairro = txtBairro.Text;
        cliente.Numero = Convert.ToInt32(txtNumero.Text);
        cliente.CNPJ = Convert.ToString(txtCnpj.Text);
        cliente.Telefone = Convert.ToString(txtTel.Text);

        ClienteBD bd = new ClienteBD();
        if (bd.Insert(cliente))
        {
            lblMensagem.Text = "Cliente cadastrado com sucesso";

            txtNome.Text = "";
            txtEnd.Text = "";
            txtBairro.Text = "";
            txtNumero.Text = "";
            txtCnpj.Text = "";
            txtTel.Text = "";
            txtNome.Focus();
        }
        else
        {
            lblMensagem.Text = "Cliente não Cadastrado.";
        }
    }
}