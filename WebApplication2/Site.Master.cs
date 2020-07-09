using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2 {
    public partial class Site : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {
            
            if(Session["NomeCompleto"] != null) {
                NomeCompleto.Text = Session["NomeCompleto"].ToString();
                LinkViewExceptions.Visible = true;
                LinkInserirUsuarios.Visible = true;
                LinkLogin.Visible = false;
                LinkLogout.Visible = true;
            }
            else {
                LinkViewExceptions.Visible = false;
                LinkInserirUsuarios.Visible = false;
                LinkLogin.Visible = true;
                LinkLogout.Visible = false;
            }

        }   
    }
}