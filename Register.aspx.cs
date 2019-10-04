using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cc1lab
{
    public partial class Register : System.Web.UI.Page
    { 

        protected void Page_Load(object sender, EventArgs e)
        {
            lblRegisteredUsers.Text = "Registered Users: " + Application["userCount"].ToString();
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = firstnametxt.Text; //set firstname session variable
            Session["LastName"] = Lastnametxt.Text; //set lastname session variable

            int uCount = (int)Application["userCount"];
            uCount++;
            Application["userCount"] = uCount;


            Response.Redirect("~/Home.aspx"); //go to welcome page
        }

        protected void Emailtxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void PhoneNumbertxt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}