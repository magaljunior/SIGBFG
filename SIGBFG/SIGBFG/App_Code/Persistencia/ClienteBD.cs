using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using Vendas.Classes;
using System.Data;

namespace Vendas.Persistencia
{
    public class ClienteBD
    {
        public bool Insert(Cliente cliente)
        {
            //métodos 
            //insert
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO cli_cliente(cli_codigo, cli_nome, cli_endereco, cli_bairro, cli_numero, cli_cnpj, cli_telefone) VALUES (?codigo, ?nome, ?endereco, ?bairro, ?numero, ?cnpj, ?telefone)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", cliente.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", cliente.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?endereco", cliente.Endereco));
            objCommand.Parameters.Add(Mapped.Parameter("?bairro", cliente.Bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?numero", cliente.Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?cnpj", cliente.CNPJ));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", cliente.Telefone));
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
            objCommand = Mapped.Command("SELECT * FROM cli_cliente", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);

            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        //select
        public Cliente Select(int id)
        {
            Cliente obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM cli_cliente WHERE cli_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Cliente();
                obj.Codigo = Convert.ToInt32(objDataReader["cli_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["cli_nome"]);
                obj.Endereco = Convert.ToString(objDataReader["cli_endereco"]);
                obj.Numero = Convert.ToInt32(objDataReader["cli_numero"]);
                obj.Bairro = Convert.ToString(objDataReader["cli_bairro"]);
                obj.CNPJ = Convert.ToString(objDataReader["cli_cnpj"]);
                obj.Telefone = Convert.ToString(objDataReader["cli_telefone"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Cliente cliente)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE cli_cliente SET cli_nome=?nome, cli_endereco=?endereco, cli_bairro=?bairro, cli_numero=?numero, cli_cnpj=?cnpj, cli_telefone=?telefone WHERE cli_codigo =?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", cliente.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?endereco", cliente.Endereco));
            objCommand.Parameters.Add(Mapped.Parameter("?bairro", cliente.Bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?numero", cliente.Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?cnpj", cliente.CNPJ));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", cliente.Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", cliente.Codigo));
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
            string sql = "DELETE FROM cli_cliente WHERE cli_codigo=?codigo";
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
        public ClienteBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}