using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography.X509Certificates;

namespace project.net.USER
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            database.dbconnection();
            if (!IsPostBack)
            {
                if (Session["buyitems"]==null)
                {
                    btnBuy.Enabled = false;
                }
                else
                {
                    btnBuy.Enabled=true;
                }

                //Adding product to Gridview
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pimage");
                dt.Columns.Add("Pname");
                dt.Columns.Add("pprice");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlCommand cmd = new SqlCommand("select * from product where pcode=" + Request.QueryString["id"]);
                        cmd.Connection = database.con;
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        //first item in shopping cart
                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["pcode"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price=Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price*Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        dgvOrder.DataSourceID = null;
                        dgvOrder.DataSource = dt;
                        dgvOrder.DataBind();
                        Session["buyitems"] = dt;
                        btnBuy.Enabled = true;

                        dgvOrder.FooterRow.Cells[5].Text = "Total Amount";
                        dgvOrder.FooterRow.Cells[6].Text= grandtotal().ToString();
                        Response.Redirect("order.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr=dt.NewRow();
                        
                        SqlCommand cmd = new SqlCommand("select * from product where pcode=" + Request.QueryString["id"]);
                        cmd.Connection = database.con;
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        //items after shopping cart one
                        dr["sno"] = sr+1;
                        dr["pid"] = ds.Tables[0].Rows[0]["pcode"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        dgvOrder.DataSource = dt;
                        dgvOrder.DataBind();
                        Session["buyitems"] = dt;
                        btnBuy.Enabled = true;

                        dgvOrder.FooterRow.Cells[5].Text = "Total Amount";
                        dgvOrder.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("order.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    dgvOrder.DataSource = dt;
                    dgvOrder.DataBind();
                    if(dgvOrder.Rows.Count > 0 )
                    {
                        dgvOrder.FooterRow.Cells[5].Text = "Total Amount";
                        dgvOrder.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"]= OrderDate;
            orderid();

           
        }
        //Calculating Final Price
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["pprice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }

        public void orderid()
        {
            string alpha = "abCdefGhIjklMNopqrStuvwXyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for(int i=0; i< 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];
            }

            String orderid;
            orderid = "Order_Id: " + new string(myArray);
            Session["orderid"] = orderid;
        }

        protected void dgvOrder_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i = 0; i<=dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = dgvOrder.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if(sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Item Has been deleted from shopping cart
                    break;
                }
            }

            //Setting orderid after deleting row from cart
            for(int i=1; i<=dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("order.aspx");
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    SqlCommand cmd = new SqlCommand("insert into Cart(oid,orderid,productid,productname,price,quantity,orderdate,custname) values('" + Session["orderid"] + "' ," + dt.Rows[i]["sno"] + " ," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["Pname"] + "'," + dt.Rows[i]["pprice"] + " , " + dt.Rows[i]["pquantity"] + " , '" + Session["Orderdate"] + "','" + Session["username"] + "')  ");
                    cmd.Connection = database.con;
                    cmd.ExecuteNonQuery();

                }

                //If Session is Null Redirecting to login else placing the order
                if (Session["username"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    if (dgvOrder.Rows.Count.ToString() == "0")
                    {
                        Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Order Received. You will receive an email confirming your order.');</script>");
                    }
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("products.aspx");
        }
    }
}