using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Globalization;

namespace Nehashree.admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            if (tbName.Text != "" && tbPass.Text != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["NehaDbCs"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "select * from Admin where Name=@Name And Password=@Password";
                    SqlCommand com = new SqlCommand(query, con);
                    com.Parameters.AddWithValue("@Name", tbName.Text);
                    com.Parameters.AddWithValue("@Password", tbPass.Text);
                    con.Open();
                    SqlDataReader reader = com.ExecuteReader();
                    if (reader.Read())
                    {
                        Session["ownername"] = tbName.Text;
                        Response.Redirect("AdminHome.aspx");
                    }
                    else
                    {
                        lblMsg.ForeColor = Color.Red;
                        lblMsg.Text = "Please enter correct name and password!";
                        tbName.Text = "";
                        tbPass.Text = "";
                    }
                }

            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All fields are mandatory!";
            }
        }
    }
}