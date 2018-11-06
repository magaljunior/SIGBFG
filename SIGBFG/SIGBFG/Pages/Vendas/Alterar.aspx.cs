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
            VendaBD bd = new VendaBD();
            Venda venda = bd.Select(Convert.ToInt32(Session["ID"]));
            txtCliente.Text = venda.Cliente;
            txtEndereco.Text = venda.Endereco;
            txtBairro.Text = venda.Bairro;
            txtNumero.Text = venda.Numero.ToString();
            txtCnpj.Text = venda.Cnpj;
            txtTel.Text = venda.Telefone;
            txtProduto.Text = venda.Nome;
            txtQuantidade.Text = venda.Quantidade.ToString();
            txtValor.Text = venda.Valor.ToString();
            txtData.Text = venda.Data;
        }
    }
              
    protected void btnSalvar_Click1(object sender, EventArgs e)
    {
        {
            VendaBD bd = new VendaBD();
            Venda venda = bd.Select(Convert.ToInt32(Session["ID"]));
            venda.Cliente = Convert.ToString(txtCliente.Text);
            venda.Endereco = Convert.ToString(txtEndereco.Text);
            venda.Bairro = Convert.ToString(txtBairro.Text);
            venda.Numero = Convert.ToInt32(txtNumero.Text);
            venda.Cnpj = Convert.ToString(txtCnpj.Text);
            venda.Telefone = Convert.ToString(txtTel.Text);
            venda.Nome = txtProduto.Text;
            venda.Quantidade = Convert.ToInt32(txtQuantidade.Text);
            venda.Valor = Convert.ToDouble(txtValor.Text);
            venda.Data = txtData.Text;
            if (bd.Update(venda))
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
           "Cadastrar.aspx"
           );
    }

    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect(
           "Listar.aspx"
           );
    }

    protected void txtCliente_TextChanged(object sender, EventArgs e)
    {

    }
}


