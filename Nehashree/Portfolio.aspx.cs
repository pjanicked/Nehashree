using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nehashree
{
    public partial class Portfolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnplc_Click(object sender, EventArgs e)
        {
            if (Session["usermail"] == null)
            {
                Response.Redirect("Log.aspx");
            }
            else
            {
                Response.Redirect("PlaceOrder.aspx");
            }
        }
    }
}