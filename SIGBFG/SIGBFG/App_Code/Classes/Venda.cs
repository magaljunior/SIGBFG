using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vendas.Classes
{
    public class Venda
    {
        public int Codigo { get; set; }
        public string Cliente { get; set; }
        public string Endereco { get; set; }
        public string Bairro { get; set; }
        public int Numero { get; set; }
        public string Cnpj { get; set; }
        public string Telefone { get; set; }
        public string Produto { get; set; }
        public string Nome { get; set; }
        public int Quantidade { get; set; }
        public double Valor { get; set; }
        public string Data { get; set; }

        public Venda()
        {

        }
    }
}