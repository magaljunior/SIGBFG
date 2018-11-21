using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDespesa.Classes
{

    public class Despesa
    {
        public int Codigo { get; set; }
        public string Data { get; set; }
        public int Quantidade { get; set; }
        public string Descricao { get; set; }
        public double Valor { get; set; }
        

        public Despesa()
        {

        }
    }
}