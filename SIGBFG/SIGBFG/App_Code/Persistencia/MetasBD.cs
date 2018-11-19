using FATEC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CadastrarMetas.Classes;

/// <summary>
/// Summary description for MetasBD
/// </summary>
/// 

namespace CadastrarMetas.Persistencia
{
    public class MetasBD
    {
        //insert
        public bool Insert(Metas metas)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO met_meta( met_mes, met_ano, met_meta, met_produto, met_descricao) " +
                "VALUES (?mes, ?ano, ?meta, ?produto, ?descricao)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?mes", metas.Mes));
            objCommand.Parameters.Add(Mapped.Parameter("?ano", metas.Ano));
            objCommand.Parameters.Add(Mapped.Parameter("?meta", metas.Meta));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", metas.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", metas.Descricao));
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
            objCommand = Mapped.Command("SELECT * FROM met_meta", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select
        public Metas Select(int id)
        {
            Metas obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM met_meta WHERE met_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Metas();
                obj.Codigo = Convert.ToInt32(objDataReader["met_codigo"]);
                obj.Mes = Convert.ToString(objDataReader["met_mes"]);
                obj.Ano = Convert.ToString(objDataReader["met_ano"]);
                obj.Meta = Convert.ToInt32(objDataReader["met_meta"]);
                obj.Produto = Convert.ToString(objDataReader["met_produto"]);
                obj.Descricao = Convert.ToString(objDataReader["met_descricao"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Metas metas)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE met_meta SET met_mes=?mes, met_ano=?ano, met_produto=?produto, met_meta=?meta, met_descricao=?descricao WHERE met_codigo=?codigo";
        objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?mes", metas.Mes));
            objCommand.Parameters.Add(Mapped.Parameter("?ano", metas.Ano));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", metas.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?meta", metas.Meta));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", metas.Descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", metas.Codigo));
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
            string sql = "DELETE FROM met_meta WHERE met_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }


        public MetasBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}