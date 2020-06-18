using DLLADS2020;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDatabase;
using System.Data.OleDb;

namespace WebApplication2.Admin {
    public partial class InserirUsuarios : System.Web.UI.Page {

        //1. CRIAR A STRING DE CONEXAO
        //Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\myFolder\myAccessFile.accdb;Persist Security Info=False;
        //endereço virtual: ~/AppData/ADSDB.accdb
        static string local = HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
        string conexao = "Provider= Microsoft.ACE.OLEDB.12.0; Data Source=" + local + ";Persist Security Info = False";




        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
               ReadData();
            }
           
        }


        #region Salvar registro
        protected void Salvar_Click(object sender, EventArgs e) {


            try {
                string comando = "";
                if (Codigo.Text == "") {
                     comando = $"INSERT INTO Usuarios(NomeCompleto, Login, Senha, Anotacoes)" +
                    $" Values('{NomeCompleto.Text}', '{Login.Text}', '{Senha.Text}', '{Anotacoes.Text}');";
                }
                else {
                    comando = $"UPDATE Usuarios SET NomeCompleto='{NomeCompleto.Text}', Login='{Login.Text}', Senha='{Senha.Text}', Anotacoes='{Anotacoes.Text}' WHERE CODIGO={Codigo.Text}";
                }

               
                

                //3.Conectar ao banco e enviar o comando sql    
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                db.Query(comando);
               
                

                ReadData();
            }
            catch (Exception ex) {
                Mensagem.Text = $"Houve uma falha inesperada no registro dos dados: {ex.Message} ";

                RecoverExceptions re = new RecoverExceptions();
                re.SaveException(ex);
                
            }

            
            
            


        }
        #endregion

        #region Obter registros

        //
        protected void ReadData() {
            try {

               



                string comando = "SELECT Codigo, NomeCompleto, Login, Anotacoes FROM Usuarios ORDER BY Codigo";
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;


                DataTable dt = new DataTable();
                dt = (DataTable)db.Query(comando);

                //copia os dados de dt para datasource do gridview
                Usuarios.DataSource = dt;
                Usuarios.DataBind();
                dt.Dispose();

                Codigo.Text = "";
                NomeCompleto.Text = "";
                Login.Text = "";
                Senha.Text = "";
                Anotacoes.Text = "";
            }
            catch (Exception ex) {
                Mensagem.Text = $"Houve uma falha inesperada no registro dos dados: {ex.Message} ";

                RecoverExceptions re = new RecoverExceptions();
                re.SaveException(ex);

            }
            
        }

        //BOTAO SELECT
        protected void Usuarios_SelectedIndexChanged(object sender, EventArgs e) {

            try {
                Codigo.Text = Usuarios.SelectedRow.Cells[1].Text;

                string comando = "SELECT * FROM Usuarios WHERE Codigo=" + Codigo.Text;


                OleDBTransaction db = new OleDBTransaction();
                db.ConnectionString = conexao;

                DataTable tb = (DataTable)db.Query(comando);

                if (tb.Rows.Count == 1) {
                    NomeCompleto.Text = tb.Rows[0]["NomeCompleto"].ToString();
                    Login.Text = tb.Rows[0]["Login"].ToString();
                    Senha.Text = tb.Rows[0]["Senha"].ToString();
                    Anotacoes.Text = tb.Rows[0]["Anotacoes"].ToString();

                    Excluir.Visible = true;


                }
            }
            catch (Exception ex) {

                Mensagem.Text = $"Houve uma falha inesperada";

                RecoverExceptions re = new RecoverExceptions();
                re.SaveException(ex);
            }
            

        }

        //BUSCAR
        protected void Buscar_Click(object sender, EventArgs e) {
            string comando = $"SELECT Codigo, NomeCompleto, Login FROM Usuarios WHERE NomeCompleto + Login LIKE '%{BuscarUsuario.Text}%';";

            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;

            DataTable dt = new DataTable();
            dt = (DataTable)db.Query(comando);

            Usuarios.DataSource = dt;
            Usuarios.DataBind();
            dt.Dispose();
        }

        protected void Reset_Click(object sender, EventArgs e) {
            BuscarUsuario.Text = "";
            ReadData();
        }

        #endregion

        #region Excluir Registro

        protected void Excluir_Click(object sender, EventArgs e) {

            try {
                OleDBTransaction db = new OleDBTransaction();
                db.ConnectionString = conexao;

                string comando = "DELETE FROM Usuarios WHERE Codigo=" + Codigo.Text;
                db.Query(comando);

                
                

                ReadData(); //RecuperarDados();
            }
            catch (Exception ex) {

                Mensagem.Text = $"Houve uma falha inesperada";

                RecoverExceptions re = new RecoverExceptions();
                re.SaveException(ex);
            }

            
        }


        #endregion

        
    }
}