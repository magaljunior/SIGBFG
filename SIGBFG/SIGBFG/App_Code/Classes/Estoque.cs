using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SIGBFG.Classes
{
    public class Estoque
    {
        public int Codigo { get; set; }
        public string DataMovimento { get; set; }
        public int CodigoProduto { get; set; }
        public string DescricaoProduto { get; set; }
        public string TipoMovimento { get; set; }
        public int Quantidade { get; set; }
        public int EstoqueAtual { get; set; }


        public Estoque()
        {

        }
    }
}