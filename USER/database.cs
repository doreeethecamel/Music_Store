using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace project.net.USER
{
    public class database
    {
        //define connection method
        public static SqlConnection con;

        public static void dbconnection()
        {
            //connection string
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\source\\repos\\DB\\project.net\\App_Data\\altjDB.mdf;Integrated Security=True";
            //open datasbase connection
            con = new SqlConnection(connstring);
            //check connection state
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            else
            {
                con.Open();
            }

        }
    }
}