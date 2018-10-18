using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using System.Data;
using SIGBFG.Classes;

namespace SIGBFG.Persistencia
{

    public class EstoqueBD
    {

        //insert
        public bool Insert(Estoque estoque)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_estoque(est_dataMovimento, est_codigoProduto, est_descricaoProduto, est_tipoMovimento, est_quantidade, est_estoqueAtual) VALUES (?dataMovimento, ?codigoProduto, ?descricaoProduto, ?tipoMovimento, ?quantidade, ?estoqueAtual)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?dataMovimento", estoque.DataMovimento));
            objCommand.Parameters.Add(Mapped.Parameter("?codigoProduto", estoque.CodigoProduto));
            objCommand.Parameters.Add(Mapped.Parameter("?descricaoProduto", estoque.DescricaoProduto));
            objCommand.Parameters.Add(Mapped.Parameter("?tipoMovimento", estoque.TipoMovimento));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", estoque.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueAtual", estoque.EstoqueAtual));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //selectall
        //select
        //update
        //delete
        //construtor

        public EstoqueBD()
        {

        }
    }
}