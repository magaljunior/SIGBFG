using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SIGBFG.Persistencia
{

    public class Pessoa
    {
        public int Cargo { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public string Tipo { get; set; }
        public object Codigo { get; set; }

        public Pessoa()
        {
            //
            // TODO: Adicionar lógica do construtor aqui
            //
        }
    }
}
