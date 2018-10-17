using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de usuario
/// </summary>


namespace pi3semestre.Classes
{

    public class usuario
    {

        //propriedades 
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public string Senha { get; set; }
        public string Status { get; set; }
        public int Codigo { get; set; }


        public usuario()
        {

            //
            // TODO: Adicionar lógica do construtor aqui
            //
        }
    }
}