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
    public partial class ViewOrders : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["NehaDbCs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ownername"] == null)
                Response.Redirect("AdminLog.aspx");

            SqlConnection con = new SqlConnection(cs);
            string squery = "select O_Id from Orders";
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
            int O_Id = Convert.ToInt32(GridView1.SelectedValue);
            string squery = "select * from Orders where O_Id = @O_Id";
            SqlCommand com = new SqlCommand(squery, con);
            com.Parameters.AddWithValue("O_Id", O_Id);
            con.Open();
            SqlDataReader reads = com.ExecuteReader(); //reading
            reads.Read();
            lblshow.Visible = true;
            details = "<br> Admin has to chnage Status to 1 if he has completed that event <br><br>";
            details = "<br>" + "Order id  - " + reads[0] + "<br><br>";
            details += "Order Date  - " + reads[1] + "<br><br>";
            details += "User mail   - " + reads[2] + "<br><br>";
            details += "Total Amount  - " + reads[3] + "<br><br>";
            details += "Event  - " + reads[4] + "<br><br>";
            details += "Mode  - " + reads[5] + "<br><br>";
            details += "Venue  - " + reads[6] + "<br><br>";
            details += "Event Date - " + reads[7] + "<br><br>";
            details += "Status  - " + reads[8] + "<br><br>";
            lblshow.Text = details;
            con.Close();
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            int O_Id = Convert.ToInt32(GridView1.SelectedValue);
            string dquery = "delete from Orders where O_Id =" + O_Id;
            SqlCommand com = new SqlCommand(dquery, con);

            if (O_Id == null)
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