using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmLogin : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            string qry = "Select count(reg_id) from Login_Tab where username ='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'";
            string cid = objCls.fn_ExecScalar(qry).ToString();
            if (cid == "1")
            {
                string gettype= "Select reg_id,Log_Type from Login_Tab where username ='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'";
                SqlDataReader dr = objCls.fn_ExecReader(gettype);
                if(dr.Read()==true)
                {
                    Session["regid"]= dr["reg_id"];
                    string log_type = dr["log_type"].ToString();
                    if (log_type == "admin")
                    {
                        Response.Redirect("frmAdminHome.aspx");
                    }
                    else if (log_type == "user")
                    {
                        Response.Redirect("frmUserHome.aspx");
                    }
                }
            }
            else
            {
                lblDisplay.Text = "Invalid username and password";
                txtUsername.Text = "";
                txtPassword.Text = "";
                txtUsername.Focus();
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmUserRegister.aspx");
        }
    }
}