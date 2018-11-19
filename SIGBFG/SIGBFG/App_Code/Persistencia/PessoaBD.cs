using FATEC;
using System;
using System.Data;
using SIGBFG.Classes;

namespace SIGBFG.Persistencia
{
    public class PessoaBD
    {
        private const string Query = "SELECT * FROM tbl_pessoa WHERE pes_nome = ?nome and pes_senha = ?senha";

        public Pessoa Autentica(string nome, string senha)
        {
            Pessoa obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(Query, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", nome));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", senha));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Pessoa();
                obj.Nome = Convert.ToString(objDataReader["pes_nome"]);
                obj.Email = Convert.ToString(objDataReader["pes_email"]);
                obj.Tipo = Convert.ToString(objDataReader["pes_tipo"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //insert
        public bool Insert(Pessoa pessoa)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_pessoa(pes_codigo, pes_nome, pes_email, pes_senha, pes_tipo) VALUES (?codigo, ?nome, ?email, ?senha, ?tipo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", pessoa.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", pessoa.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?email", pessoa.Email));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", pessoa.Senha));
            objCommand.Parameters.Add(Mapped.Parameter("?tipo", pessoa.Tipo));
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
            objCommand = Mapped.Command("SELECT * FROM tbl_pessoa", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select
        public Pessoa Select(int id)
        {
            Pessoa obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_pessoa WHERE pes_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Pessoa();
                obj.Cargo = Convert.ToInt32(value: objDataReader["pes_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["pes_nome"]);
                obj.Email = Convert.ToString(objDataReader["pes_email"]);
                obj.Senha = Convert.ToString(objDataReader["pes_senha"]);
                obj.Tipo = Convert.ToString(objDataReader["pes_tipo"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(Pessoa pessoa)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_pessoa SET pes_codigo=?codigo, pes_nome=?nome, pes_email=?email, pes_senha=?senha, pes_tipo=?tipo WHERE pes_codigo=?codigo";

            objConexao = Mapped.Connection();

            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", pessoa.Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?nome", pessoa.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?email", pessoa.Email));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", pessoa.Senha));
            objCommand.Parameters.Add(Mapped.Parameter("?tipo", pessoa.Tipo));
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
            string sql = "DELETE FROM tbl_pessoa WHERE pes_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        public PessoaBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
