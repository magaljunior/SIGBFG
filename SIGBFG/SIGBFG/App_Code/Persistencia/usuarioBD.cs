using FATEC;
using System;
using System.Collections.Generic;
using pi3semestre.Classes;
using System.Data;
using System.Web;


/// <summary>
/// Descrição resumida de usuarioBD
/// </summary>

namespace pi3semestre.Persistencia
{



    public class usuarioBD
    {

        public bool Insert(usuario usuario)
        {

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;

            string sql = "INSERT INTO usuario(Nome,Sobrenome,Senha,Status_usuario) VALUES (?Nome, ?Sobrenome, ?Senha, ?Status )";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?Nome", usuario.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?Sobrenome", usuario.Sobrenome));
            objCommand.Parameters.Add(Mapped.Parameter("?Senha", usuario.Senha));
            objCommand.Parameters.Add(Mapped.Parameter("?Status", usuario.Status));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();

            return true;

        }

        // selectAll

        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM usuario", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);

            objConexao.Close();
            objCommand.Dispose(); objConexao.Dispose();
            return ds;

        }

        // Select 

        public usuario Select(int id)
        {

            usuario obj = null;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM usuario WHERE ID = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new usuario();
                obj.Nome= Convert.ToString(objDataReader["Nome"]);
                obj.Sobrenome= Convert.ToString(objDataReader["Sobrenome"]);
                obj.Senha= Convert.ToString(objDataReader["Senha"]);
                obj.Status= Convert.ToString(objDataReader["Status_usuario"]);
            }

            return obj;
        }


        //update
        public bool Update(usuario usuario)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE usuario SET Nome=?Nome, Sobrenome=?Sobrenome, Status_usuario=?Status WHERE ID=?codigo";

            
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?Nome", usuario.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?Sobrenome", usuario.Sobrenome));
            objCommand.Parameters.Add(Mapped.Parameter("?Status", usuario.Status));
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

            string sql = "DELETE FROM usuario WHERE ID=?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();


            return true;
        }




            public usuarioBD()
        {
            //
            // TODO: Adicionar lógica do construtor aqui
            //
        }

    }
}