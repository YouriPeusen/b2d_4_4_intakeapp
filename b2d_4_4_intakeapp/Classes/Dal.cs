using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace b2d_4_4_intakeapp.Classes
{
    public class Dal
    {
        // Een static variabele van de connectie, zodat hij in de functies niet zeurt dat hij niet bestaat
        static SqlConnection con;

        // Het connecten met de database via de connectiestring. Even aanpassen naar je eigen connectiestring dus ;).
        public SqlConnection databaseConnect()
        {
            string connectionString = @"Data Source=JUDITH-PC;Initial Catalog=RuilwinkelDB;Integrated Security=True;"; // <----- Deze aanpassen naar eigen connectionstring

            con = new SqlConnection(connectionString);

            con.Open();

            return con;
        }

       public void AddNewArticle(Article newArticle) // object van class Article als parameter
        {
            SqlConnection con = databaseConnect();

            SqlCommand cmd = new SqlCommand("insert into Articles (ProductId, StatusId, ProviderId, Image, Commentary) values (@productid," +
                "@statusid,@providerid,@image,@commentary)", con);

            cmd.Parameters.AddWithValue("@productid", newArticle.getProductId());
            cmd.Parameters.AddWithValue("@statusid", newArticle.getStatusId());
            cmd.Parameters.AddWithValue("@providerid", newArticle.getProviderId());
            cmd.Parameters.AddWithValue("@image", newArticle.getImage());
            cmd.Parameters.AddWithValue("@commentary", newArticle.getCommentary());

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}