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
using System.Drawing;
using System.Net.Mail;
using System.Net;
using Twilio;
using Twilio.Clients;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using System.Threading.Tasks;
using Twilio.TwiML.Messaging;



namespace Nehashree
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        public string catselected, optselected, cost, orderdetails;
      //  string ans1, ans2;
        string cs = ConfigurationManager.ConnectionStrings["NehaDbCs"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlevent.Items.Insert(0, "Select Event");
            ddlopt.Items.Insert(0, "Select Mode");
            
        }

        protected void ddlevent_SelectedIndexChanged(object sender, EventArgs e)
        {
           // catselected = ddlevent.SelectedValue;
        }

        protected void ddlopt_SelectedIndexChanged(object sender, EventArgs e)
        {
            optselected = ddlopt.SelectedValue;
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Details where Event=@Event AND Mode=@Mode";
            SqlCommand com = new SqlCommand(query, con);
            com.Parameters.AddWithValue("@Event", ddlevent.SelectedValue);
            com.Parameters.AddWithValue("@Mode", optselected);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if(rd.Read())
            {
                cost = rd.GetString(3);
                tbprice.Text = cost;
                tbprice.ReadOnly = true;
            }
        }

        protected void btnorder_Click(object sender, EventArgs e)
        {
            if(tbname.Text != "" && tbEmail.Text != "" && tbprice.Text != "" && tbmob.Text != "" && tbcal.Text != "" && tbadd.Text != "" && tbpin.Text != "")
            {
                try
                {
                    int orderid;
                    SqlConnection con = new SqlConnection(cs);
                    SqlCommand com = new SqlCommand("select max(O_Id) from Orders", con);
                    SqlDataAdapter adap = new SqlDataAdapter(com);
                    DataTable dt = new DataTable();
                    con.Open();
                    adap.Fill(dt);
                    //retrieve orderid
                    if (dt.Rows[0].ItemArray[0] is DBNull)
                        orderid = 1;
                    else
                        orderid = Convert.ToInt32(dt.Rows[0].ItemArray[0]) + 1;
                    con.Close();

                    string custmail = Session["customeremail"].ToString();
                    string amt = tbprice.Text;
                    string selevent = ddlevent.SelectedValue;
                    string selmode = ddlopt.SelectedValue;
                    string venue = tbadd.Text;
                    string evdate = tbcal.Text;

                    SqlCommand com1 = new SqlCommand("insert into Orders(O_Date,Cust_Mail,Total_Amt,Event,Mode,Venue,Event_Date) values(@O_Date,@Cust_Mail,@Total_Amt,@Event,@Mode,@Venue,@Event_Date)", con);
                    com1.Parameters.AddWithValue("O_Date", DateTime.Now);
                    com1.Parameters.AddWithValue("Cust_Mail", custmail);
                    com1.Parameters.AddWithValue("Total_Amt", amt);
                    com1.Parameters.AddWithValue("Event", selevent);
                    com1.Parameters.AddWithValue("Mode", selmode);
                    com1.Parameters.AddWithValue("Venue", venue);
                    com1.Parameters.AddWithValue("Event_Date", evdate);
                    con.Open();
                    com1.ExecuteNonQuery();

                    orderdetails = "Your Order Details are as follows: <br>";
                    orderdetails += "Orderid is = " + orderid + "<br>";
                    orderdetails += "Order Date=" + DateTime.Now.ToString();
                    orderdetails += "<br> Total Amount of Event is = " + amt + "<br>";
                    orderdetails += "Your event is " + selevent + " & Your Mode is " + selmode + " on " + evdate + " at " + venue;
                    Session["orderdetail"] = orderdetails;

                    try
                    {
                      //  SendSms();
                        using (MailMessage emailMessage = new MailMessage())
                        {
                            emailMessage.From = new MailAddress("aekkim.13@gmail.com", "Nehashree Media");
                            emailMessage.To.Add(new MailAddress(tbEmail.Text, "Receiver"));
                            emailMessage.Subject = "Order Confirmation";
                            emailMessage.Body = orderdetails;
                            emailMessage.Priority = MailPriority.Normal;
                            using (SmtpClient MailClient = new SmtpClient("smtp.gmail.com", 587))
                            {
                                MailClient.EnableSsl = true;
                                MailClient.Credentials = new System.Net.NetworkCredential("aekkim.13@gmail.com", "akshayholic");
                                MailClient.Send(emailMessage);
                            }
                        } 
                        
                    }
                    catch (Exception exx) { Response.Write(exx); }

                    con.Close();
                }
                catch(Exception ex)
                {
                    Response.Write(ex);
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields are Mandatory!";
            }
            Response.Redirect("ConfirmOrder.aspx");
        }

        public void SendSms()
        {
            const string accountSid = "AC19f4611976fb4856db096cfa093c3f48";
            const string authToken = "aa585a6fafd22952ec38be5cee0fc0e0";
            TwilioClient.Init(accountSid, authToken);

            var to = new PhoneNumber(tbmob.Text);
            var message = MessageResource.Create(
                to,
                from: new PhoneNumber("+919892993578"),
                body: "Test");          
        }

        protected void cal_SelectionChanged(object sender, EventArgs e)
        {
            tbcal.Text = cal.SelectedDate.ToShortDateString();
            tbcal.ReadOnly = true;

        }

    }
}