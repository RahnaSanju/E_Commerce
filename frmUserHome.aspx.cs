using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmUserHome : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "Select * from category_tab where cat_status='active'";
                DataList1.DataSource = objCls.fn_Adapter(str);
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["catid"] = e.CommandArgument;
            Response.Redirect("frmDisplayProducts.aspx");
        }

        protected void btnInsertPaymentDetails_Click(object sender, EventArgs e)
        {
            //Response.Redirect("frmAddAccountDetails.aspx");
        }

        protected void btnViewCart_Click(object sender, EventArgs e)
        {
            //string qry = "Select count(cart_id) from cart_tab where user_reg_id=" + Session["regid"].ToString();
            //int cnt = Convert.ToInt32(objCls.fn_ExecScalar(qry));
            //if (cnt > 1)
            //    Response.Redirect("frmViewCart.aspx");
            //else
            //    lblDisplay.Text = "Your Cart is empty";
            
        }
    }
}