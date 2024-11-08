using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmViewPreviousOrders : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            fn_GridViewBind();
        }

        public void fn_GridViewBind()
        {
            string qry1 = "Select count(order_id) from order_tab where order_Status='paid' and user_reg_id=" + Session["regid"].ToString();
            int cnt = Convert.ToInt32(objCls.fn_ExecScalar(qry1));
            if (cnt > 0)
            {
                string qry = "Select pt.Prod_Name as Product,ot.Quantity,ot.Subtotal,FORMAT(ot.Order_Date, 'dd-MM-yy') as Date from order_tab ot join Product_Tab pt on ot.Prod_Id=pt.Prod_Id where ot.Order_Status='paid' and ot.user_reg_id=" + Session["regid"] + " order by date desc";
                GridView1.DataSource = objCls.fn_Adapter(qry);
                GridView1.DataBind();
                //btnConfirmOrder.Visible = true;
            }
            else
            {
                lblDisplay.Text = "There are no Previous Orders";
                //btnConfirmOrder.Visible = false;
            }
        }
    }
}