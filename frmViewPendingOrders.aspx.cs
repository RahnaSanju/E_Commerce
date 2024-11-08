using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmViewPendingOrders : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            fn_GridViewBind();
        }

        public void fn_GridViewBind()
        {
            string qry1 = "Select count(order_id) from order_tab where order_Status='active' and user_reg_id=" + Session["regid"].ToString();
            int cnt = Convert.ToInt32(objCls.fn_ExecScalar(qry1));
            if (cnt > 0)
            {
                string qry = "Select ot.order_id,pt.Prod_Name as Product,ot.Quantity,ot.Subtotal,FORMAT(ot.Order_Date, 'dd-MM-yy') as Date from order_tab ot join Product_Tab pt on ot.Prod_Id=pt.Prod_Id where ot.Order_Status='active' and ot.user_reg_id=" + Session["regid"] + " order by date desc";
                GridView1.DataSource = objCls.fn_Adapter(qry);
                GridView1.DataBind();
                btnConfirmOrder.Visible = true;
            }
            else
            {
                string qry = "Select ot.order_id,pt.Prod_Name as Product,ot.Quantity,ot.Subtotal,FORMAT(ot.Order_Date, 'dd-MM-yy') as Date from order_tab ot join Product_Tab pt on ot.Prod_Id=pt.Prod_Id where ot.Order_Status='active' and ot.user_reg_id=" + Session["regid"] + " order by date desc";
                GridView1.DataSource = objCls.fn_Adapter(qry);
                GridView1.DataBind();
                lblDisplay.Text = "There are no Pending Orders";
                btnConfirmOrder.Visible = false;
            }
        }

        protected void btnConfirmOrder_Click(object sender, EventArgs e)
        {
            string newId = "";
            double total = 0;
            string qry = "Select * from order_tab where order_status='active' and user_reg_id=" + Session["regid"];
            SqlDataReader dr = objCls.fn_ExecReader(qry);
            while(dr.Read())
            {
                total += Convert.ToDouble(dr["subtotal"]);
            }
            string getId = "Select max(Bill_id) from Bill_tab";
            string maxid = objCls.fn_ExecScalar(getId);
            if (maxid != "")
            {
                string mid = maxid.Substring(3);
                int m = (Convert.ToInt32(mid.Substring(4))) + 1;
                newId = "BL-2" + (m.ToString()).PadLeft(5, '0');
            }
            else
            {
                newId = "BL-200001";
            }
            string insBill = "Insert into Bill_tab values('" + newId + "','" + Session["regid"] + "'," + total + ",'" + System.DateTime.Today.ToShortDateString() + "')";
            objCls.fn_ExecNonQuery(insBill);
            Session["Billid"] = newId;
            //lblDisplay.Text = "Inserted into Bill Table";
            Response.Redirect("frmBill.aspx");
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string str="Delete from order_tab where order_id=" + getid;
            objCls.fn_ExecNonQuery(str);
            fn_GridViewBind();
        }
    }
}