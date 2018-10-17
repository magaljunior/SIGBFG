using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cadastro_Produto.Classes;
using Cadastro_Produto.Persistence;
using System.Configuration;

public partial class Pages_Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtNome.Focus();
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            //3 MB
            if (FileUpload1.PostedFile.ContentLength <= 3024000)
            {
                string arquivo = FileUpload1.FileName;
                //caminho onde a foto será salva
                FileUpload1.SaveAs(ConfigurationManager.AppSettings["uploadServer"] + arquivo);


                Produto produto = new Produto();
                produto.Nome = txtNome.Text;
                produto.Preco = Convert.ToDouble(txtPreco.Text);
                produto.QuantidadeMinima = Convert.ToInt32(txtQuantidadeMinima.Text);
                produto.Descricao = txtDescricao.Text;
                produto.Foto = arquivo;


                ProdutoBD bd = new ProdutoBD();
                if (bd.Insert(produto))
                {
                    lblMensagem.Text = "Produto cadastrado com sucesso";

                    txtNome.Text = "";
                    txtPreco.Text = "";
                    txtQuantidadeMinima.Text = "";
                    txtDescricao.Text = "";
                    txtNome.Focus();
                }
                else
                {
                    lblMensagem.Text = "Erro ao salvar.";
                }
            }
            else
            {
                lblMensagem.Text = "Foto muito grande por favor selecione até 3mb";
            }
        }
        else
        {
            lblMensagem.Text = "Por favor selecione uma foto.";
        }

    }
    protected void btnListar_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListarPD.aspx");
    }

    protected void btnEstoque_Click(object sender, EventArgs e)
    {
        Response.Redirect("Estoque_ProdutosPD.aspx");
    }
}