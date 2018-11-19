using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using Vendas.Classes;
using System.Data;

namespace Vendas.Persistencia
{
    public class VendaBD
    {
        public bool Insert(Venda venda)
        {
            //métodos 
            //insert
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO ven_venda(ven_codigo, ven_cliente, ven_endereco, ven_bairro, ven_numero, ven_cnpj, ven_telefone, ven_produto, ven_nome, ven_quantidade, ven_valor, ven_data) VALUES (?codigo, ?cliente, ?endereco, ?bairro, ?numero, ?cnpj, ?telefone, ?produto, ?nome, ?quantidade, ?valor, ?data)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", venda.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?cliente", venda.Cliente));
            objCommand.Parameters.Add(Mapped.Parameter("?endereco", venda.Endereco));
            objCommand.Parameters.Add(Mapped.Parameter("?bairro", venda.Bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?numero", venda.Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?cnpj", venda.Cnpj));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", venda.Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", venda.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", venda.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", venda.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?valor", venda.Valor));
            objCommand.Parameters.Add(Mapped.Parameter("?data", venda.Data));

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
                objCommand = Mapped.Command("SELECT * FROM ven_venda", objConexao);
                objDataAdapter = Mapped.Adapter(objCommand);
                objDataAdapter.Fill(ds);

                objConexao.Close();

                objCommand.Dispose();
                objConexao.Dispose();

                return ds;
            }
        //select
        public Venda Select(int id)
        {
            Venda obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM ven_venda WHERE ven_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Venda();
                obj.Codigo = Convert.ToInt32(objDataReader["ven_codigo"]);
                obj.Cliente = Convert.ToString(objDataReader["ven_cliente"]);
                obj.Endereco = Convert.ToString(objDataReader["ven_endereco"]);
                obj.Bairro = Convert.ToString(objDataReader["ven_bairro"]);
                obj.Numero = Convert.ToInt32(objDataReader["ven_numero"]);
                obj.Cnpj = Convert.ToString(objDataReader["ven_cnpj"]);
                obj.Telefone = Convert.ToString(objDataReader["ven_telefone"]);
                obj.Produto = Convert.ToString(objDataReader["ven_produto"]);
                obj.Nome = Convert.ToString(objDataReader["ven_nome"]);
                obj.Quantidade = Convert.ToInt32(objDataReader["ven_quantidade"]);
                obj.Valor = Convert.ToDouble(objDataReader["ven_valor"]);
                obj.Data = Convert.ToString(objDataReader["ven_data"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Venda venda)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE ven_venda SET ven_cliente=?cliente, ven_endereco=?endereco, ven_bairro=?bairro, ven_numero=?numero, ven_cnpj=?cnpj, ven_telefone=?telefone, ven_produto=?produto, ven_nome=?nome, ven_quantidade=?quantidade, ven_valor=?valor, ven_data=?data WHERE ven_codigo =?codigo";
            objConexao = Mapped.Connection(); objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cliente", venda.Cliente));
            objCommand.Parameters.Add(Mapped.Parameter("?endereco", venda.Endereco));
            objCommand.Parameters.Add(Mapped.Parameter("?bairro", venda.Bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?numero", venda.Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?cnpj", venda.Cnpj));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", venda.Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", venda.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", venda.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", venda.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?valor", venda.Valor));
            objCommand.Parameters.Add(Mapped.Parameter("?data", venda.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", venda.Codigo));
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
            string sql = "DELETE FROM ven_venda WHERE ven_codigo=?codigo";
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
        public VendaBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
