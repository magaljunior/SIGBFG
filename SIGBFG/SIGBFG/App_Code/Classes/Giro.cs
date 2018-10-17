using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GiroEstoque.Classes
{
    public class Giro
    {
        public int Codigo { get; set; }
        public string Produto { get; set; }
        public int EstoqueMaximo { get; set; }
        public int EstoqueMinimo { get; set; }
        public int EstoqueMedio { get; set; }
        public int EstoqueAtual { get; set; }
        public int Vendas { get; set; }
      

        public Giro()
        {

        }
    }
}