using FATEC;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebDespesa.Classes;

namespace WebDespesa.Persistencia
{

    public class DespesaBD
    {
        //métodos
        //insert

        public bool Insert(Despesa despesa)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_despesas (des_data, des_valor, des_descricao, des_quantidade) VALUES (?data, ?valor, ?descricao, ?quantidade)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?data", despesa.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?valor", despesa.Valor));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", despesa.Descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", despesa.Quantidade));
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
            objCommand = Mapped.Command("SELECT * FROM tbl_despesas", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select

        public Despesa Select(int id)
        {
            Despesa obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_despesas WHERE des_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Despesa();
                obj.Codigo = Convert.ToInt32(objDataReader["des_codigo"]);
                obj.Quantidade = Convert.ToInt32(objDataReader["des_quantidade"]);
                obj.Valor = Convert.ToDouble(objDataReader["des_valor"]);
                obj.Descricao = Convert.ToString(objDataReader["des_descricao"]);
                obj.Data = Convert.ToString(objDataReader["des_data"]);
            }
            objDataReader.Close(); objConexao.Close();
            objCommand.Dispose(); objConexao.Dispose(); objDataReader.Dispose();
            return obj;
        }

        //update

        public bool Update(Despesa despesa)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_despesas SET des_data=?data, des_descricao=?descricao, des_valor=?valor, des_valor=?valor, WHERE des_codigo=?codigo";
            objConexao = Mapped.Connection(); objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?data", despesa.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", despesa.Descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?valor", despesa.Valor));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", despesa.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", despesa.Codigo));
            objCommand.ExecuteNonQuery(); objConexao.Close(); objCommand.Dispose(); objConexao.Dispose();
            return true;
        }

        //delete

        public bool Delete(int id)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "DELETE FROM tbl_despesas WHERE des_codigo=?codigo";
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

        public DespesaBD()
        {

        }
    }
}