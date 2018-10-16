using FATEC;
using Os.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Descrição resumida de osBD
/// </summary>
namespace Os.Persistencia
{
    public class OsBD
    {
        //métodos
        //insert
        public bool Insert(Os os)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_os(os_funcionario, os_produto, os_quantidade, os_descricao, os_datainicio, os_dataexpiracao) VALUES (?funcionario, ?produto, ?quantidade, ?descricao, ?datainicio, ?dataexpiracao)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?funcionario", Os.Funcionario));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", Os.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", Os.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", Os.Descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?datainicio", Os.Datainicio));
            objCommand.Parameters.Add(Mapped.Parameter("?dataexpiracao", Os.Dataexpiracao));
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
        }
        //select
        //update
        //delete
        //construtor

            public OsBD()
        {

        }
    }
}