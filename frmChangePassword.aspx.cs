using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmChangePassword : System.Web.UI.Page
    {
        ConnectionCls ObjCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            string qry = "Update Login_tab set password='" + txtNewPassword.Text + "' where reg_Id='" + Session["regid"] + "' and password='" + txtOldPassword.Text + "'";
            int i = ObjCls.fn_ExecNonQuery(qry);
            if(i==1)
            {
                lblDisplay.Text = "Password Updated";
                txtOldPassword.Text = "";
                txtNewPassword.Text = "";
                txtComparePassword.Text = "";
            }
            else
            {
                lblDisplay.Text = "Incorrect Password";
                txtOldPassword.Text = "";
                txtNewPassword.Text = "";
                txtComparePassword.Text = "";
                txtOldPassword.Focus();
            }
        }
    }
}