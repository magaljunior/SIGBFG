using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using System.Data;
using Cadastro_Produto.Classes;
using SIGBFG.Classes;

namespace SIGBFG.Persistencia
{

    public class EstoqueBD
    {
        //insert
        public int Insert(Estoque estoque)
        {
            int retorno = 0;
            try
            {
                System.Data.IDbConnection objConexao;
                System.Data.IDbCommand objCommand;
                string sql = "INSERT INTO tbl_estoque(est_codigo, est_quantidade, pro_codigo, per_codigo, os_codigo) VALUES(?codigo, ?quantidade, ?produto, ?perda, ?ordemServico)";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?codigo", estoque.Codigo));
                objCommand.Parameters.Add(Mapped.Parameter("?quantidade", estoque.Quantidade));

                /*objCommand.Parameters.Add(Mapped.Parameter("?produto", estoque.Produto.Codigo));
                objCommand.Parameters.Add(Mapped.Parameter("?perda", estoque.Perdas.Codigo));
                objCommand.Parameters.Add(Mapped.Parameter("?ordemServico", estoque.OrdemServico.Codigo));*/

                objCommand.ExecuteNonQuery();
                objConexao.Close();
                objCommand.Dispose();
                objConexao.Dispose();
            }
            catch (MySql.Data.MySqlClient.MySqlException)
            {
                retorno = -1;
            }
            catch (Exception)
            {
                retorno = -2;
            }
            return retorno;
        }

        public EstoqueBD()
        {

        }
    }
}