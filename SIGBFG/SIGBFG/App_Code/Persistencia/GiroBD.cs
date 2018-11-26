using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using GiroEstoque.Classes;
using System.Data;

namespace GiroEstoque.Persistencia
{
    public class GiroBD
    {
        public bool Insert(Giro giro)
        {
            //métodos 
            //insert
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO giro(gir_codigo, gir_produto, gir_estoqueMaximo, gir_estoqueMinimo, gir_estoqueMedio, gir_vendas, gir_EstoqueAtual) VALUES (?codigo, ?produto, ?estoqueMaximo, ?estoqueMinimo, ?estoqueMedio, ?vendas, ?estoqueAtual)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", giro.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", giro.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueMaximo", giro.EstoqueMaximo));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueMinimo", giro.EstoqueMinimo));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueMedio", giro.EstoqueMedio));
            objCommand.Parameters.Add(Mapped.Parameter("?vendas", giro.Vendas));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueAtual", giro.EstoqueAtual));
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
            objCommand = Mapped.Command("SELECT * FROM giro", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);

            objConexao.Close();

            objCommand.Dispose();
            objConexao.Dispose();

            return ds;
        }
        //select
        public Giro Select(int id)
        {
            Giro obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM giro WHERE gir_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Giro();
                obj.Codigo = Convert.ToInt32(objDataReader["gir_codigo"]);
                obj.Produto = Convert.ToString(objDataReader["gir_produto"]);
                obj.EstoqueMaximo = Convert.ToInt32(objDataReader["gir_estoqueMaximo"]);
                obj.EstoqueMinimo = Convert.ToInt32(objDataReader["gir_estoqueMinimo"]);
                obj.EstoqueMedio = Convert.ToInt32(objDataReader["gir_estoqueMedio"]);
                obj.Vendas = Convert.ToInt32(objDataReader["gir_vendas"]);
                obj.EstoqueMinimo = Convert.ToInt32(objDataReader["gir_estoqueAtual"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Giro giro)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE giro SET gir_codigo=?codigo, gir_produto=?produto, gir_estoqueMaximo=?estoqueMaximo, gir_estoqueMinimo=?estoqueMinimo, gir_estoqueMedio=?estoqueMedio, gir_estoqueAtual, gir_vendas=?vendas";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", giro.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", giro.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueMaximo", giro.EstoqueMaximo));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueMinimo", giro.EstoqueMinimo));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueMedio", giro.EstoqueMedio));
            objCommand.Parameters.Add(Mapped.Parameter("?vendas", giro.Vendas));
            objCommand.Parameters.Add(Mapped.Parameter("?estoqueAtual", giro.EstoqueAtual));
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
            string sql = "DELETE FROM giro WHERE gir_codigo=?codigo";
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
        public GiroBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
