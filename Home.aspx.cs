using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cc1lab
{
    public partial class Home : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcome.Text = "Welcome " + (String)this.Session["FirstName"] + " " + (String)this.Session["LastName"] + "!";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx"); //go to registration page
        }
    }
}