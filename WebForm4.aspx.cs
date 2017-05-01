using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        public string sortingName = "";
        public string try1 = "<table><tr><th>sorting name</th><th>contacnt email</th></tr>";
        protected void Page_Load(object sender, EventArgs e)
        {

            int userid = (int)Session["id"];
            SqlConnection con = new SqlConnection(connection.stringcon);
            con.Open();
            SqlCommand command = con.CreateCommand();
            command.CommandText =
                String.Format("SELECT sorting.SortingName ,users.Email  FROM sorting INNER JOIN users ON sorting.manngerID=users.ID WHERE sorting.UserId={0};", userid);
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                try1 += "<tr><td>" + reader.GetValue(0).ToString() + "</td>";
               
                try1 += "<td>" + reader.GetValue(1).ToString() + "</td></tr>";
            }
            try1 += "</table>";
            reader.Close(); 
            con.Close();

        }
    }
}