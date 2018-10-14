using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cadastro_Produto.Classes
{

    public class Produto
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }
        public double Preco { get; set; }
        public int QuantidadeMinima { get; set; }
        public int Quantidade { get; set; }
        public string Foto { get; set; }
        public string Descricao { get; set; }
        public bool Ativo { get; set; }

        public Produto()
        {

        }
    }
}