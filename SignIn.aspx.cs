using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class SignIn : System.Web.UI.Page
    {
      
        public string massege = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string email = Request.Form["email"];
                string password = Request.Form["password"];

                SqlConnection conect = new SqlConnection(connection.stringcon);
                conect.Open();
                SqlCommand command = conect.CreateCommand();
                command.CommandText =
                    String.Format("SELECT * FROM users WHERE Email='{0}' AND password='{1}'", email, password);
                SqlDataReader reader = command.ExecuteReader();
                
                if (reader.Read())
                {
                    bool ismanger = reader.GetBoolean(5); 
                    int id = reader.GetInt32(0);

                    Session["id"] = id;
                    if (ismanger)
                    {
                        Response.Redirect("WebForm3.aspx"); 
                    }
                    else
                    {
                        Response.Redirect("WebForm4.aspx");
                    }

                }
                else
                {
                    Response.Redirect("SignIn.aspx");
                    massege = "try again";
                }
                reader.Close();
                conect.Close();









            }
        }
    }
}