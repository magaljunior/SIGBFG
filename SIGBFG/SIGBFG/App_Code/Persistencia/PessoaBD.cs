using FATEC;
using System;

namespace LoginPI.Persistencia
{
    /// <summary>
    /// Summary description for PessoaBD
    /// </summary>
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
                obj.Tipo = Convert.ToInt32(objDataReader["pes_tipo"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        public Pessoa Select(int id)
        {
            Pessoa obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_pessoa WHERE pes_id = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Pessoa();
                obj.Cargo = Convert.ToInt32(value: objDataReader["pes_id"]);
                obj.Nome = Convert.ToString(objDataReader["pes_nome"]);
                obj.Email = Convert.ToString(objDataReader["pes_email"]);
                obj.Tipo = Convert.ToInt32(objDataReader["pes_tipo"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        public PessoaBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
