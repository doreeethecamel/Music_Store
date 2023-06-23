using project.net.USER;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.net
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            database.dbconnection();
            if (Session["username"] != null)
            {
                Label1.Text= "Logged in as " + Session["username"].ToString();
                hplLogout.Visible = false;
                btnLogout.Visible = true;

            }
            else
            {
                Label1.Text = "Hello you can login here...";
                hplLogout.Visible = true;
                btnLogout.Visible= false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
            Label1.Text = "You have successfully logged out!";
        }
    }
}
