using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmAddFeedback : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string str = "Insert into Feedback_tab values(" + Session["regid"] + ",'" + ConvertQuotes(txtFeedback1.Text) + "','','active')";
            int i = objCls.fn_ExecNonQuery(str);
            if (i == 1)
            {
                lblDisplay.Text = "Feedback Sent";
                txtFeedback1.Text = "";
            }
        }

        public string ConvertQuotes(string str)
        {
            return (str.Replace("'", "''"));
        }
    }
}