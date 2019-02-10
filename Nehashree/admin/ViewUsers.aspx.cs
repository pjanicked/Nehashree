using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

namespace Nehashree.admin
{
    public partial class ViewUsers : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["NehaDbCs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ownername"] == null)
                Response.Redirect("AdminLog.aspx");

            SqlConnection con = new SqlConnection(cs);
            string squery = "select U_Id from Users";
            SqlCommand com = new SqlCommand(squery, con);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            GridView1.AutoGenerateSelectButton = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string details;
            SqlConnection con = new SqlConnection(cs);
            int U_Id = Convert.ToInt32(GridView1.SelectedValue);
            string squery = "select * from Users where U_Id = @U_Id";
            SqlCommand com = new SqlCommand(squery, con);
            com.Parameters.AddWithValue("U_Id", U_Id);
            con.Open();
            SqlDataReader reads = com.ExecuteReader(); //reading
            reads.Read();
            lblshow.Visible = true;
            details = "<br>" + "User id  - " + reads[0] + "<br><br>";
            details += "User Name  - " + reads[1] + "<br><br>";
            details += "User mail   - " + reads[2] + "<br><br>";
            details += "User Password   - " + reads[3] + "<br><br>";
            details += "User Mobile   - " + reads[4] + "<br><br>";
            details += "User Address   - " + reads[5] + "<br><br>";
            lblshow.Text = details;
            con.Close();
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            int U_Id = Convert.ToInt32(GridView1.SelectedValue);
            string dquery = "delete from Users where U_Id =" + U_Id;
            SqlCommand com = new SqlCommand(dquery, con);

            if (U_Id == null)
            {
                lblshow.Visible = true;
                lblshow.ForeColor = Color.Red;
                lblshow.Text = "Please Select a Record!";
            }
            else
            {
                con.Open();
                int ans = com.ExecuteNonQuery(); //check if query executed, 1 if success
                if (ans > 0)
                    lblshow.Text = "Record Deleted Successfully!";

                con.Close();
            }
        }
    }
}