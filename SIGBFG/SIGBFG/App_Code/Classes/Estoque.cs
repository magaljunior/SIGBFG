using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cadastro_Produto.Classes;
using WebSitePi.Classes;

namespace SIGBFG.Classes
{

    public class Estoque
    {
        public int Codigo { get; set; }
        public int Quantidade { get; set; }

        public int Produto { get; set; }

        public Estoque()
        {

        }
    }
}