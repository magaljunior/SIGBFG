using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using WebSitePi.Classes;
using System.Data;
using Cadastro_Produto.Classes;
using Cadastro_Produto.Persistence;

namespace WebSitePi.Persistencia
{
    public class PerdaBD
    {
        public bool Insert(Perdas perdas)
        {
            //insert
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO per_perda(per_ordem, per_produto, per_quantidade, per_motivo, per_data) VALUES (?ordem, ?produto, ?quantidade, ?motivo, ?data)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?ordem", perdas.Ordem));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", perdas.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", perdas.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?motivo", perdas.Motivo));
            objCommand.Parameters.Add(Mapped.Parameter("?data", perdas.Data));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            ProdutoBD bd = new ProdutoBD();
            Produto produto = bd.Select(perdas.Produto);
            bd.UpdateQuantidade(produto.Codigo, perdas.Quantidade, 0);

            return true;
        }

            //selectall
            public DataSet SelectAll()
            {
                DataSet ds = new DataSet();

                System.Data.IDbConnection objConexao;
                System.Data.IDbCommand objCommand;
                System.Data.IDataAdapter objDataAdapter;

                objConexao = Mapped.Connection();
                objCommand = Mapped.Command("SELECT * FROM per_perda", objConexao);
                objDataAdapter = Mapped.Adapter(objCommand);
                objDataAdapter.Fill(ds);

                objConexao.Close();

                objCommand.Dispose();
                objConexao.Dispose();

                return ds;
            }

        //SelectPeriodo
        public DataSet SelectPeriodo(string dataInicio, string dataFinal)
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM per_perda WHERE per_data BETWEEN (?dataInicio) AND (?dataFinal)", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objCommand.Parameters.Add(Mapped.Parameter("?dataInicio", dataInicio));
            objCommand.Parameters.Add(Mapped.Parameter("?dataFinal", dataFinal));
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select
        public Perdas Select(int id)
        {
            Perdas obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM per_perda WHERE per_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Perdas();
                obj.Codigo = Convert.ToInt32(objDataReader["per_codigo"]);
                obj.Ordem  =  Convert.ToInt32(objDataReader["per_ordem"]);
                obj.Produto = Convert.ToString(objDataReader["per_produto"]);
                obj.Quantidade = Convert.ToInt32(objDataReader["per_quantidade"]);
                obj.Motivo = Convert.ToString(objDataReader["per_motivo"]);
                obj.Data = Convert.ToString(objDataReader["per_data"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Perdas perdas)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE per_perda SET per_ordem=?ordem, per_produto=?produto, per_quantidade=?quantidade, per_motivo=?motivo, per_data=?data WHERE per_codigo =?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?ordem", perdas.Ordem));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", perdas.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", perdas.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?motivo", perdas.Motivo));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", perdas.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?data", perdas.Data));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return true;
        }


        //delete
        public bool Delete(int id)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "DELETE FROM per_perda WHERE per_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }


        //construtor
        public PerdaBD()
        {

        }
    }
}
