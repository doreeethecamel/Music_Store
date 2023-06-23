using project.net.USER;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.net.admin
{
    public partial class viewuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getuser();
            database.dbconnection();
            Label5.Visible = false;
        }

        private void getuser()
        {
            //create the connection object
            string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);
            //open the connection
            con.Open();//use the open method
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from customer";
            SqlDataReader dr = cmd.ExecuteReader();
            //set the data source to the data reader
            dgvUser.DataSourceID = null;
            dgvUser.DataSource = dr;
            //binding the datagrid
            dgvUser.DataBind();
            con.Close();


        }
        protected void btnShowUser_Click(object sender, EventArgs e)
        {
            getuser();
            dgvUser.Visible = true;
        }

        protected void btnCget_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = database.con;
            cmd.CommandText = "select * from customer where username=@username";
            cmd.Parameters.AddWithValue("@username", txtCuser.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtCfname.Text = dr.GetValue(1).ToString();
                txtCemail.Text = dr.GetValue(2).ToString();
                txtCpword.Text = dr.GetValue(3).ToString();

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand("update customer set fullname='" + txtCfname + "', email='" + txtCemail + "', password='" + txtCpword + "' where username='" + txtCuser + "'");


            cmd.Connection = database.con;
            cmd.ExecuteNonQuery();
            dgvUser.Visible = true;
            Label5.Visible = true;
            Label5.Text = "Record Updated Successfully!";
        }

        protected void btnUdelete_Click(object sender, EventArgs e)
        {

            if (txtCuser.Text != "")
            {
                
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("delete customer where username=@username");

                cmd.Parameters.AddWithValue("@username", txtCuser.Text);
                cmd.Connection = database.con;
                cmd.ExecuteNonQuery();
                Label5.Visible = true;
                Label5.Text = "Record Deleted Successfully!";

            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "Please enter a record to delete";
            }
        }
    }
}