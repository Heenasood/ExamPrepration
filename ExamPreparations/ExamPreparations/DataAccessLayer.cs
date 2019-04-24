using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace ExamPreparations
{
    public class DataAccessLayer
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        SqlConnection sqlConnection;
        protected Dictionary<string, string> activeUserInfo;

        public DataAccessLayer()
        {
            sqlConnection = new SqlConnection(connectionstring);
            activeUserInfo = new Dictionary<string, string>();
        }

        public string getUserID()
        {
            return activeUserInfo["userID"];
        }


        public void InsertUser(string userID, string name, string password, string country, string emailAddress)
        {
            sqlConnection.Open();

            SqlCommand query = new SqlCommand("INSERT INTO tblUsers VALUES(@userID, @name, @password, @country, @emailAddress)", sqlConnection);
            query.Parameters.AddWithValue("@userID", userID);
            query.Parameters.AddWithValue("@name", name);
            query.Parameters.AddWithValue("@password", password);
            query.Parameters.AddWithValue("@country", country);
            query.Parameters.AddWithValue("@emailAddress", emailAddress);

            query.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public bool VerifyUser(string userID, string password)
        {
            bool VerifyUser = false;

            sqlConnection.Open();

            SqlCommand query = new SqlCommand("SELECT userID, emailAddress FROM tblUsers where userID=@userID AND password=@password", sqlConnection);
            query.Parameters.AddWithValue("@userID", userID);
            query.Parameters.AddWithValue("@password", password);

            SqlDataReader reader = query.ExecuteReader();
            if (reader.Read())
            {
                activeUserInfo["userID"] = reader.GetValue(0).ToString();
                activeUserInfo["emailAddress"] = reader.GetValue(1).ToString();
                VerifyUser = true;
            }
            sqlConnection.Close();
            return VerifyUser;

        }

        public bool UserIDExists(string userID)
        {
            bool UserIDExists = false;
            sqlConnection.Open();

            SqlCommand useridquery = new SqlCommand("Select userID from tblUsers where userID=@userID", sqlConnection);
            useridquery.Parameters.AddWithValue("@userID", userID);

            SqlDataReader SqlUserID = useridquery.ExecuteReader();
            if (SqlUserID.Read())
            {
               return UserIDExists = true;

            }
            sqlConnection.Close();
            return UserIDExists;
        }

        public bool EmailIDExists(string emailAddress)
        {
            bool EmailIDExists = false;
            sqlConnection.Open();

            SqlCommand emailquery = new SqlCommand("Select emailAddress from tblUsers where emailAddress=@emailAddress", sqlConnection);
            emailquery.Parameters.AddWithValue("@emailAddress", emailAddress);

            SqlDataReader SqlUserID = emailquery.ExecuteReader();
            if (SqlUserID.Read())
            {
               return EmailIDExists = true;
            }
            sqlConnection.Close();
            return EmailIDExists;
        }
    }
}