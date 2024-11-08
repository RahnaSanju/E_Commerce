using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmDisplayProducts : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "Select * from product_tab where cat_id='" + Session["catid"] + "' and prod_status='active'";
                DataList1.DataSource = objCls.fn_Adapter(str);
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["prodid"] = e.CommandArgument;
            Session["qty"] = 0;
            Response.Redirect("frmDispIndProduct.aspx");
        }
    }
}