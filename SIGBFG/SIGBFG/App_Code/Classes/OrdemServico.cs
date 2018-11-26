using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SIGBFG.Classes
{

    public class OrdemServico
    {
        public int Codigo { get; set; }
        public string Funcionario { get; set; }
        public string Produto { get; set; }
        public int Quantidade { get; set; }
        public string DataInicio { get; set; }
        public string DataExpiracao { get; set; }
        public string Descricao { get; set; }

        public OrdemServico()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}