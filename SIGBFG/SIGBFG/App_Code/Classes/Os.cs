using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OrdemServico.Classes
{

    public class Os
    {
        public int Codigo { get; set; }
        public int Quantidade { get; set; }
        public string Produto { get; set; }
        public string DataInicio { get; set; }
        public string DataExpiracao { get; set; }
        public string Descricao { get; set; }

        public Os()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}