using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Data;

namespace Nehashree
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["NehaDbCs"].ConnectionString;
       // byte up;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                
                SqlCommand com = new SqlCommand("select * from Users where U_Mail=@U_Mail", con);
                com.Parameters.AddWithValue("@U_Mail", tbEmail.Text);
                con.Open();
                SqlDataReader rd = com.ExecuteReader();
                rd.Read();
                string oldpw = rd[3].ToString();
                rd.Close();
                if (oldpw == tbcurpw.Text)
                {
                    if (tbnewpw.Text == tbconnewpw.Text)
                    {
                        SqlCommand cmd = new SqlCommand("update Users set U_Pass=@U_Pass where U_Mail=@U_Mail1", con);
                        cmd.Parameters.AddWithValue("@U_Pass", tbnewpw.Text);
                        cmd.Parameters.AddWithValue("@U_Mail1", tbEmail.Text);
                        cmd.ExecuteNonQuery();
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        lblMsg.Text = "Password Updated";
                    }
                    else
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        lblMsg.Text = "Password miss match";
                    }
                }
                else
                {
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    lblMsg.Text = "Old password is incorrect";
                }
                
                con.Close();
            }
            catch (Exception ex) { Response.Write(ex); }
       
        }
    }
}