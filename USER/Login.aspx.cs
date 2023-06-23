using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.net.USER
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel1.Visible = true;
            database.dbconnection();
            lblError.Visible = false;
            lblRegSuccess.Visible = false;
            lbnLogin.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string username=txtUname.Text;
            string password=txtPword.Text;
            SqlCommand cmd = new SqlCommand("Select * from customer where username='"+username+"' and password='"+password+"'");
            cmd.Connection = database.con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt= new DataTable();
            sda.Fill(dt);
            if(txtUname.Text=="admin" & txtPword.Text == "admin")
            {
                Response.Redirect("../admin/admin_home.aspx");
            }
            else if(authenticate.IsValidUser(username,password))
            {
                Session["username"]=username;
                Session["password"]=password;
                Response.Redirect("../USER/home.aspx");
            }
            else
            {
                lblError.Text = "Login Unsuccessful!";
            }
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            if (authenticate.IsValidUser(username, password))
            {
                Session["username"] = username;
                Session["password"] = password;
                lblRegSuccess.Visible = true;
                lblRegSuccess.Text = "Account already exist!";
            }
            else
            {
                string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(constring);
                con.Open();
                string fname = txtFname.Text;
                string uname = txtUsername.Text;
                string email = txtEmail.Text;
                string pword = txtPassword.Text;
                SqlCommand cmd = new SqlCommand("INSERT INTO customer values('" + uname + "', '" + fname + "', '" + email + "', '" + pword + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();

                lblRegSuccess.Visible = true;
                lblRegSuccess.Text = "Registration was Successful!";
                lbnLogin.Visible = true;
            }
        }

        protected void lbnLogin_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void link2reg_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void link2log_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
}

