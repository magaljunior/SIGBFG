using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vendas.Classes
{
    public class Cliente
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }
        public string Endereco { get; set; }
        public string Bairro { get; set; }
        public int Numero { get; set; }
        public string CNPJ { get; set; }
        public string Telefone { get; set; }
       
        public Cliente()
        {

        }
    }
}