using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace project.net.USER
{
    public class authenticate
    {
        public static bool IsValidUser(string username, string password)
        {
            database.dbconnection();
            SqlCommand cmd= new SqlCommand("select count (*) from customer where username=@username and password=@password");
            cmd.Connection = database.con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            int count= (int)cmd.ExecuteScalar();

            if (count > 0)
            {
                return true;
            }
            else { return false; }
        }

       


    }
}