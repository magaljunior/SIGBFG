using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Metas
/// </summary>

namespace CadastrarMetas.Classes
{

    public class Metas
    {
        public int Codigo { get; set; }
        public string Mes { get; set; }
        public string Ano { get; set; }
        public int Meta { get; set; }
        public string Produto { get; set; }
        public string Descricao { get; set; }

        public Metas()
        {

        }
    }
}