using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using System.Data;
using OrdemServico.Classes;

namespace OrdemServico.Persistencia
{

    public class OsBD
    {
        //métodos
        //insert
        public bool Insert(Os os)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_os(os_produto, os_quantidade, os_dataInicio, os_dataExpiracao, os_descricao) VALUES (?produto, ?quantidade, ?dataInicio, ?dataExpiracao, ?descricao)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?produto", os.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", os.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?dataInicio", os.DataInicio));
            objCommand.Parameters.Add(Mapped.Parameter("?dataExpiracao", os.DataExpiracao));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", os.Descricao));
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
        //update
        //delete
        //construtor

        public OsBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}