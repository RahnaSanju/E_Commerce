using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmViewFeedback : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                Fn_GridViewBind();
                Panel1.Visible = false;
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Fn_GridViewBind();
        }

        public void Fn_GridViewBind()
        {
            string str = "Select urt.Name,urt.Phone,urt.Email,ft.Feedback from User_Reg_tab urt join Feedback_tab ft on urt.User_Reg_Id=ft.User_Reg_Id where Feedback_status='active'";

            GridView1.DataSource = objCls.fn_Adapter(str);
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Panel1.Visible = true;
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];

            lblUsrName.Text = rw.Cells[1].Text;
            lblUsrMailId.Text = rw.Cells[3].Text;

            string str = "Select * from Admin_Reg_Tab where Admin_Reg_Id=" + Session["regid"];
            SqlDataReader dr= objCls.fn_ExecReader(str);
            while(dr.Read())
            {
                lblAdmName.Text = dr["Name"].ToString();
                lblAdmMailId.Text = dr["Email"].ToString();
            }

        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            //SendEmail2("Name", "Application mail id", "password", "username", "user mail id", "Haiii", "test");
            SendEmail2(lblAdmName.Text, lblAdmMailId.Text, "augu dkwg sdto lklz", lblUsrName.Text, lblUsrMailId.Text, txtSubject.Text, txtReply.Text);
            string selQry = "select urt.User_Reg_Id from user_reg_tab urt join Feedback_Tab ft on urt.User_Reg_Id = ft.User_Reg_Id and urt.Email = '" + lblUsrMailId.Text + "'";
            int regid =Convert.ToInt32(objCls.fn_ExecScalar(selQry));
            string str = "Update feedback_tab set reply='"+ ConvertQuotes(txtReply.Text)+"' ,feedback_status='replied' where user_reg_id=" + regid;
            objCls.fn_ExecNonQuery(str);
            lblDisplay.Text = "Mail sent";
            Panel1.Visible = false;
            Fn_GridViewBind();
            //Response.Redirect("frmAdminHome.aspx");
        }

        public string ConvertQuotes(string str)
        {
            return (str.Replace("'", "''"));
        }
    }
}