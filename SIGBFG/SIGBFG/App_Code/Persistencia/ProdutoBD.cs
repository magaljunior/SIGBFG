using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using Cadastro_Produto.Classes;
using System.Data;

namespace Cadastro_Produto.Persistence
{

public class ProdutoBD
{
        //insert
        public bool Insert(Produto produto)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_produto(pro_nome, pro_preco, pro_quantidadeMinima, pro_quantidade, pro_descricao, pro_foto, pro_ativo) VALUES (?nome, ?preco, ?quantidadeMinima, ?quantidade, ?descricao, ?foto, ?ativo)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?nome", produto.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?preco", produto.Preco));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidadeMinima", produto.QuantidadeMinima));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", produto.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?foto", produto.Foto));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", produto.Descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?ativo", true));

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
            objCommand = Mapped.Command("SELECT * FROM tbl_produto", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);

            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }

        //select
        public Produto Select(int id)
        {
            Produto obj = null;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_produto WHERE pro_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Produto();
                obj.Codigo = Convert.ToInt32(objDataReader["pro_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["pro_nome"]);
                obj.Preco = Convert.ToDouble(objDataReader["pro_preco"]);
                obj.QuantidadeMinima = Convert.ToInt32(objDataReader["pro_quantidadeMinima"]);
                obj.Quantidade = Convert.ToInt32(objDataReader["pro_quantidade"]);
                obj.Descricao = Convert.ToString(objDataReader["pro_descricao"]);
                obj.Foto = Convert.ToString(objDataReader["pro_foto"]);
                obj.Ativo = Convert.ToBoolean(objDataReader["pro_ativo"]);
            }

            objDataReader.Close();
            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();

            return obj;
        }
        //update
        public bool Update(Produto produto)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_produto SET pro_nome=?nome, pro_preco=?preco, pro_quantidadeMinima=?quantidadeMinima, pro_quantidade=?quantidade, pro_foto=?foto, pro_descricao=?descricao WHERE pro_codigo=?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?nome", produto.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?preco", produto.Preco));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidadeMinima", produto.QuantidadeMinima));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", produto.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?descricao", produto.Descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?foto", produto.Foto));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", produto.Codigo));


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
            string sql = "DELETE FROM tbl_produto WHERE pro_codigo=?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return true;
        }
        //desativar
        public bool Desativar(int codigo, bool ativo)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_produto SET pro_ativo=?status WHERE pro_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?status", ativo));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        public ProdutoBD()
        {


        }
    }
}