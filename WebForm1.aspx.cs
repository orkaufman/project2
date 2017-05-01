using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
     

        public string massege="";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                int num = int.Parse(Request.Form["IsManger"]);
                string firstname = Request.Form["FirstName"];
                string lastname = Request.Form["LastName"];
                string email = Request.Form["email"];
                string password = Request.Form["Password"]; 
                bool IsMannger = (2222 == num);


                SqlConnection conction = new SqlConnection(connection.stringcon);
                conction.Open();
                SqlCommand commend = conction.CreateCommand();
                commend.CommandText = String.Format("select * from users WHERE Email = '{0}';", email);
                object result = commend.ExecuteScalar();
                if (result == null)
                {

                    if (IsMannger)
                    {
                        commend.CommandText = String.Format("INSERT INTO users VALUES ('{0}','{1}','{2}','{3}','{4}');", firstname, lastname, email, password, 1);

                    }
                    else
                    {
                        commend.CommandText = String.Format("INSERT INTO users VALUES ('{0}','{1}','{2}','{3}','{4}');", firstname, lastname, email, password, 0);

                    }
                    commend.ExecuteNonQuery();
                    commend.CommandText = String.Format("select id from users WHERE Email = '{0}';", email);
                    result = commend.ExecuteScalar();

                    Session["id"] = result;
                    Response.Write(Session["id"]);
                    if (IsMannger)
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
                    massege = "<h3>The user already exsits</h3>";
                }
                conction.Close();
            }

                 





            }

        }
    }
