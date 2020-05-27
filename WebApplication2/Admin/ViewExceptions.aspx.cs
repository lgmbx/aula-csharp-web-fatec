using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin {
    public partial class ViewExceptions : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            
            string caminho = HttpContext.Current.Server.MapPath("~/Admin/Exceptions/log.txt");
            Resultado.Text = File.ReadAllText(caminho).Replace("\n","<br />");
        }
    }
}