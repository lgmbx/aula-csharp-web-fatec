using System;
using System.Net;
using System.Net.Mail;
using DLLADS2020;

namespace WebApplication2 {
	public partial class Contato : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Enviar_Click(object sender, EventArgs e) {

			try {
				if (Mensagem.Text.Trim() == "" || Nome.Text.Trim() == "" || Email.Text.Trim() == "") {
					Erro.Text = "Digite todos os dados corretamente";
				}
				else {

					// ENVIA O EMAIL PARA O DONO SITE
					MailMessage email = new MailMessage();


					// PASSO 1 - CRIAR A MENSAGEM
					email.Subject = "Fale Conosco";
					email.To.Add("contato@seudominio.com.br");
					MailAddress from = new MailAddress("contato@seudominio.com.br");
					email.From = from;
					email.Body = "DADOS ENVIADOS PELO FORM DE CONTATO\n";
					email.Body += "NOME: " + Nome.Text + "\n";
					email.Body += "EMAIL: " + Email.Text + "\n";
					email.Body += "MENSAGEM: " + Mensagem.Text + "\n";
					email.IsBodyHtml = false;

					// PASSO 2 - ENVIAR POR SMTP A MENSAGEM
					SmtpClient smtp = new SmtpClient();
					smtp.Host = "smtp.seudominio.com.br";
					smtp.Port = 587;
					smtp.EnableSsl = false;
					smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "suaSenha");
					smtp.Send(email);

					// FIM

				}

			}
			catch (Exception ex) {

				Erro.Text = ex.Message;

				RecoverExceptions re = new RecoverExceptions();
				re.SaveException(ex);
				
				
			}
		}
    }
}