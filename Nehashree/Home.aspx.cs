using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.Configuration;

namespace Nehashree
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnmsg_Click(object sender, EventArgs e)
        {
            if (tbname.Text != "" && tbtitle.Text != "" && tbemail.Text != "" && tbcomment.Text != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["NehaDbCs"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand com = new SqlCommand("insert into Messages values (@Name, @Email, @Title, @Comment)", con);
                    com.Parameters.AddWithValue("@Name", tbname.Text);
                    com.Parameters.AddWithValue("@Email", tbemail.Text);
                    com.Parameters.AddWithValue("@Title", tbtitle.Text);
                    com.Parameters.AddWithValue("@Comment", tbcomment.Text);
                    con.Open();
                    com.ExecuteNonQuery();
                    lblMsg.Text = "Sent!";
                    lblMsg.ForeColor = Color.Green;
                    tbname.Text = ""; tbtitle.Text = ""; tbemail.Text = ""; tbcomment.Text = "";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields are Mandatory!";
            }
        }
    }
}