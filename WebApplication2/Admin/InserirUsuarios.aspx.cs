using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin {
    public partial class InserirUsuarios : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Salvar_Click(object sender, EventArgs e) {

            //1. CRIAR A STRING DE CONEXAO
            //Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\myFolder\myAccessFile.accdb;Persist Security Info=False;
            //endereço virtual: ~/AppData/ADSDB.accdb
            string local = HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
            string conexao = "Provider= Microsoft.ACE.OLEDB.12.0; Data Source=" + local + ";Persist Security Info = False";

            //2. Criar a string de comando SQL
            string comando = $"INSERT INTO Usuarios(NomeCompleto, Login, Senha, Anotacoes)" +
                $" Values('{NomeCompleto.Text}', '{Login.Text}', '{Senha.Text}', '{Anotacoes.Text}');";

            //3.Conectar ao banco e enviar o comando sql    
            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            db.Query(comando);

            Mensagem.Text = "O registro foi inserido com sucesso";
            NomeCompleto.Text = "";
            Login.Text = "";
            Senha.Text = "";
            Anotacoes.Text = "";




        }
    }
}