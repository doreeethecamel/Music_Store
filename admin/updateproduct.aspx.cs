using project.net.USER;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.net.admin
{
    public partial class updateproduct : System.Web.UI.Page
    {
        string filename;
        string filepath;
        private void DisplayData()
        {
            //connection string
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            //open datasbase connection
            SqlConnection con = new SqlConnection(connstring);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select pcode, type, pname, description,price,image,stock from product";
            SqlDataReader dr = cmd.ExecuteReader();

            //set the data source to the data reader
            dgvUpdate.DataSource = dr;
            //binding the datagrid
            dgvUpdate.DataBind();
           con.Close();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            dgvUpdate.Visible = true;
            DisplayData();
            lblSuccess.Visible = false;
            database.dbconnection();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            //connection string
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            //open datasbase connection
            SqlConnection con = new SqlConnection(connstring);
            
            if (txtPcode.Text != "" && txtType.Text != "")
            {
                if (fupImage.HasFile)
                {
                    filename = fupImage.PostedFile.FileName;
                    filepath = "../images/" + fupImage.FileName;
                    fupImage.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd = new SqlCommand("insert into product(pcode,type,pname,description,price,image,stock) values(@pcode,@type,@pname,@description,@price,@image,@stock)");
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@pcode", txtPcode.Text);
                    cmd.Parameters.AddWithValue("@type", txtType.Text);
                    cmd.Parameters.AddWithValue("@pname", txtPname.Text);
                    cmd.Parameters.AddWithValue("@description", txtDes.Text);
                    cmd.Parameters.AddWithValue("@price", Convert.ToDecimal(txtPrice.Text));
                    cmd.Parameters.AddWithValue("@stock", Convert.ToInt32(txtQuan.Text));
                    cmd.Parameters.AddWithValue("@image", filepath);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblSuccess.Visible = true;
                    lblSuccess.Text = "Record Inserted Successfully!";
                    DisplayData();
                    ClearData();
                }
               

            }
            else
            {
                lblSuccess.Text = "Please provide details!";
            }
        }
        private void ClearData()
        {
            txtPcode.Text = "";
            txtType.Text = "";
            txtPname.Text = "";
            txtDes.Text = "";
            txtPrice.Text = "";
            txtQuan.Text = "";
            

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //connection string
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            //open datasbase connection
            SqlConnection con = new SqlConnection(connstring);
            if (txtPcode.Text != "" )
            {
               con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("delete product where pcode=@pcode");

                cmd.Parameters.AddWithValue("@pcode", txtPcode.Text);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
               con.Close() ;
                lblSuccess.Visible = true;
                lblSuccess.Text = "Record Deleted Successfully";

                DisplayData();
                ClearData();
            }
            else
            {
                lblSuccess.Text = "Please enter a record to delete";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //connection string
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            //open datasbase connection
            SqlConnection con = new SqlConnection(connstring);
            if (txtPcode.Text != "")
            {
                if (fupImage.HasFile)
                {
                    filename = fupImage.PostedFile.FileName;
                    filepath = "../images/" + fupImage.FileName;
                    fupImage.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd = new SqlCommand("update product set type=@type,pname=@pname,description=@description,price=@price,image=@image,stock=@stock where pcode=@pcode");

                    cmd.Parameters.AddWithValue("@pcode", txtPcode.Text);
                    cmd.Parameters.AddWithValue("@type", txtType.Text);
                    cmd.Parameters.AddWithValue("@pname", txtPname.Text);
                    cmd.Parameters.AddWithValue("@description", txtDes.Text);
                    cmd.Parameters.AddWithValue("@price", Convert.ToDecimal(txtPrice.Text));
                    cmd.Parameters.AddWithValue("@stock", Convert.ToInt32(txtQuan.Text));
                    cmd.Parameters.AddWithValue("@image", filepath);
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblSuccess.Visible = true;
                    lblSuccess.Text = "Record Updated Successfully";
                    DisplayData();
                    ClearData();
                }
            }
            else
            {
                lblSuccess.Text = "Please enter record to update";
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            /*//connection string
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            //open datasbase connection
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select pcode, type, pname, description,price,image,stock from product where pcode=@pcode";
            cmd.Parameters.AddWithValue("@pcode", txtPcode.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            //set the data source to the data reader
            dgvUpdate.DataSource = dr;
            //binding the datagrid
            dgvUpdate.DataBind();
            con.Close();*/

            SqlCommand cmd = new SqlCommand("Select * from product where (pname like '%" + txtPname.Text + "%') or (pcode like '%" + txtPcode.Text + "%')");
            cmd.Connection = database.con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dgvUpdate.DataSourceID = null;
            dgvUpdate.DataSource = dt;
            dgvUpdate.DataBind();
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {

            //connection string
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            //open datasbase connection
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select pcode, type, pname, description,price,image,stock from product where pcode=@pcode";
            cmd.Parameters.AddWithValue("@pcode", txtPcode.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtType.Text=dr.GetValue(1).ToString();
                txtPname.Text=dr.GetValue(2).ToString();
                txtDes.Text=dr.GetValue(3).ToString();
                txtPrice.Text=dr.GetValue(4).ToString();
                txtQuan.Text=dr.GetValue(6).ToString();
            }
            con.Close();
        }
    }
}