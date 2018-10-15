using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSitePi.Classes
{
public class Perdas
{
    public int Codigo { get; set; }
    public int Ordem { get; set; }
    public string Produto { get; set; }
    public int Quantidade { get; set; }
    public string Motivo { get; set; }

    public Perdas()
    {

         }
    }
}