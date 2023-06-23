using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.net.admin
{
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnreUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewuser.aspx");
        }

        protected void btnreProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewproduct.aspx");
        }

        protected void btnreUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateproduct.aspx");
        }

        protected void btnreOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("vieworder.aspx");
        }
    }
}