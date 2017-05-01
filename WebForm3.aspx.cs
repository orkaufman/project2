using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public string massege = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string useremail = Request.Form["email"];
                string sortingname = Request.Form["sortingname"];
                int mangerID = (int)Session["id"];

                SqlConnection con = new SqlConnection(connection.stringcon);
                con.Open();
                SqlCommand command = con.CreateCommand();
                SqlCommand command1 = con.CreateCommand();
                command.CommandText =
                String.Format("SELECT * FROM users WHERE Email='{0}';", useremail);

                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    int userid = reader.GetInt32(0);
                    reader.Close();
                    Insert(con, userid, mangerID, sortingname);

                }
                else
                {
                    reader.Close();
                    con.Close();
                    massege = "User does not excits";
                }
            }
        }

        private void Insert(SqlConnection con, int userid, int mangerID, string sortingname)
        {
            SqlCommand command = con.CreateCommand();
            command.CommandText = String.Format("INSERT INTO sorting VALUES ('{0}','{1}','{2}');", sortingname, userid, mangerID);
            command.ExecuteNonQuery();

        }
    }
}