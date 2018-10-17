using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SIGBFG.Classes
{

    public class OrdemServico
    {
        public int Codigo { get; set; }
        public String Funcionario { get; set; }
        public String Produto { get; set; }
        public int Quantidade { get; set; }
        public String DataInicio { get; set; }
        public String DataExpiracao { get; set; }
        public String Descricao { get; set; }

        public OrdemServico()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}