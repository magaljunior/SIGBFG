using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de usuario
/// </summary>


namespace SIGBFG.Classes
{

    public class Usuario
    {

        //propriedades 
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public string Senha { get; set; }
        public bool Ativo { get; set; }
        public int Codigo { get; set; }


        public Usuario()
        {

            //
            // TODO: Adicionar lógica do construtor aqui
            //
        }
    }
}