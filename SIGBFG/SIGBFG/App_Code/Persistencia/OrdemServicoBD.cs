using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using System.Data;
using SIGBFG.Classes;

namespace SIGBFG.Persistencia
{

    public class OrdemServicoBD
    {
        //insert
        public bool Insert(OrdemServico ordemServico)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_os(os_funcionario, os_produto, os_quantidade, os_dataInicio, os_dataExpiracao, os_descricao) VALUES (?funcionario, ?produto, ?quantidade, ?dataInicio, ?dataExpiracao, ?descricao)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?funcionario", ordemServico.Funcionario));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", ordemServico.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", ordemServico.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?dataInicio", ordemServico.DataInicio));
            objCommand.Parameters.Add(Mapped.Parameter("?dataExpiracao", ordemServico.DataExpiracao));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", ordemServico.Descricao));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
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
            objCommand = Mapped.Command("SELECT * FROM tbl_os", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select
        public OrdemServico Select(int id)
        {
            OrdemServico obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_os WHERE os_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new OrdemServico();
                obj.Codigo = Convert.ToInt32(objDataReader["os_codigo"]);
                obj.Funcionario = Convert.ToString(objDataReader["os_funcionario"]);
                obj.Produto = Convert.ToString(objDataReader["os_produto"]);
                obj.Quantidade = Convert.ToInt32(objDataReader["os_quantidade"]);
                obj.DataInicio = Convert.ToString(objDataReader["os_dataInicio"]);
                obj.DataExpiracao = Convert.ToString(objDataReader["os_dataExpiracao"]);
                obj.Descricao = Convert.ToString(objDataReader["os_descricao"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public bool Update(OrdemServico ordemServico)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_os SET os_funcionario=?funcionario, os_produto=?produto, os_quantidade=?quantidade, os_dataInicio=?dataInicio, os_dataExpiracao=?dataExpiracao, os_descricao=?descricao WHERE os_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?funcionario", ordemServico.Funcionario));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", ordemServico.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", ordemServico.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?dataInicio", ordemServico.DataInicio));
            objCommand.Parameters.Add(Mapped.Parameter("?dataExpiracao", ordemServico.DataExpiracao));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", ordemServico.Descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", ordemServico.Codigo));
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
            string sql = "DELETE FROM tbl_os WHERE os_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        public OrdemServicoBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}