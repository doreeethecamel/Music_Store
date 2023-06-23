using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.net.admin
{
    public partial class viewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dgvProduct.Visible = false;
        }

        private void getproduct()
        {
            //create the connection object
            string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);
            //open the connection
            con.Open();//use the open method
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from product";
            SqlDataReader dr = cmd.ExecuteReader();
            //set the data source to the data reader
            dgvProduct.DataSource = dr;
            //binding the datagrid
            dgvProduct.DataBind();
            con.Close();
        }

        protected void btnProduct_Click(object sender, EventArgs e)
        {
            getproduct();
            dgvProduct.Visible = true;
        }
    }
}