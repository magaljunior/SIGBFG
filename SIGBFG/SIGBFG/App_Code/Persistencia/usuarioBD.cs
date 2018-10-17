using FATEC;
using System;
using System.Collections.Generic;
using SIGBFG.Classes;
using System.Data;
using System.Web;

namespace SIGBFG.Persistencia
{



    public class UsuarioBD
    {
        //insert
        public bool Insert(Usuario usuario)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tbl_usuario(usu_nome, usu_sobreNome, usu_senha, usu_ativo) VALUES (?nome, ?sobreNome, ?senha, ?ativo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", usuario.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?sobreNome", usuario.Sobrenome));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", usuario.Senha));
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
            objCommand = Mapped.Command("SELECT * FROM tbl_usuario", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select
        public Usuario Select(int id)
        {
            Usuario obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM tbl_usuario WHERE usu_codigo = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Usuario();
                obj.Codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                obj.Nome = Convert.ToString(objDataReader["usu_nome"]);
                obj.Sobrenome = Convert.ToString(objDataReader["usu_sobreNome"]);
                obj.Senha = Convert.ToString(objDataReader["usu_senha"]);
                obj.Ativo = Convert.ToBoolean(objDataReader["usu_ativo"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public bool Update(Usuario usuario)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE tbl_usuario SET usu_nome=?nome, usu_sobreNome=?sobreNome, usu_senha=?senha WHERE usu_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", usuario.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?sobreNome", usuario.Sobrenome));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", usuario.Senha));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", usuario.Codigo));
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
            string sql = "DELETE FROM tbl_usuario WHERE usu_codigo=?codigo";
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
            string sql = "UPDATE tbl_usuario SET usu_ativo=?status WHERE usu_codigo=?codigo";
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

        public UsuarioBD()
        {


        }

    }
}