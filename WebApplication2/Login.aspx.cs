using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2 {
    public partial class Login : System.Web.UI.Page {


		
		static string local = HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
		string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + local + ";Persist Security Info=False;";



		protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Entrar_Click(object sender, EventArgs e) {
			if (login.Text.Trim() == "") {
				Mensagem.Text = "Dados Invalidos.";
			}
			else if (Senha.Text.Trim() == "") {
				Mensagem.Text = "Dados Invalidos.";
			}
			else {
				string comando = "SELECT * FROM Usuarios WHERE Login='" + login.Text + "' AND Senha='" + Senha.Text + "';";

				AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
				db.ConnectionString = conexao;
				System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

				if (tb.Rows.Count == 1) {
					// USUÁRIO FOI ENCONTRADO
					Session["Codigo"] = tb.Rows[0]["Codigo"].ToString();
					Session["NomeCompleto"] = tb.Rows[0]["NomeCompleto"].ToString();

					// Inicializa a classe de autenticação do usuário
					FormsAuthentication.Initialize();

					//Define os dados do ticket de autenticação 
					FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
						1, Session["NomeCompleto"].ToString(),
						DateTime.Now, DateTime.Now.AddMinutes(30),
						false, Session["NomeCompleto"].ToString(),
						FormsAuthentication.FormsCookiePath);
					
					// Grava o ticket no cookie de autenticação
					Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket)));

					// redirecionar para a home
					Response.Redirect("~/Default.aspx");
				}
				else {
					Mensagem.Text = "Dados Invalidos.";
				}
			}
		}
    }
}