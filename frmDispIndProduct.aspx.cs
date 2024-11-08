using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmDispIndProduct : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        //int qtyLeft;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string qry = "select * from product_tab where prod_id='" + Session["prodid"] + "'";
                SqlDataReader dr = objCls.fn_ExecReader(qry);
                while (dr.Read())
                {
                    imgProduct.ImageUrl = dr["prod_image"].ToString();
                    lblName.Text = dr["prod_name"].ToString();
                    lblDescription.Text = dr["prod_description"].ToString();
                    lblPrice.Text = dr["prod_price"].ToString();
                    Session["prodPrice"]= dr["prod_price"].ToString();
                    Session["qty"] = 1;
                    lblQuantity.Text = Session["qty"].ToString();
                    Session["qtyLeft"]  = Convert.ToInt32(dr["prod_stock"]);
                }
            }
        }

        protected void btnInc_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["qty"]) < Convert.ToInt32(Session["qtyLeft"]))
            {
                Session["qty"] = Convert.ToInt32(Session["qty"]) + 1;
                lblQuantity.Text = Session["qty"].ToString();
            }
            else
            {
                lblDisplay.Text = "No more item left";
            }
        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            string str = "Select prod_price from Product_tab where Prod_id='" + Session["prodid"] + "'";
            SqlDataReader dr= objCls.fn_ExecReader(str);
            if(dr.Read()==true)
            {
                Session["total"] = Convert.ToInt32(Session["prodPrice"]) * Convert.ToInt32(Session["qty"]);
                string insCart = "Insert into Cart_tab values('" + Session["regid"] + "','" + Session["prodid"] + "'," + Session["qty"] + "," + Session["total"] + ")";
                objCls.fn_ExecNonQuery(insCart);
                lblDisplay.Text = "Added to Cart";
            }
        }

        protected void btnContShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmUserHome.aspx");
        }

        protected void btnDec_Click(object sender, EventArgs e)
        {
            if(Convert.ToInt32(Session["qty"]) > 0)
            {
                Session["qty"] = Convert.ToInt32(Session["qty"]) - 1;
                lblQuantity.Text = Session["qty"].ToString();
            }
            
        }

        protected void btnViewCart_Click(object sender, EventArgs e)
        {
            string qry = "Select count(cart_id) from cart_tab where user_reg_id=" + Session["regid"];
            int cnt = Convert.ToInt32( objCls.fn_ExecScalar(qry));
            if(cnt>0)
            {
                Response.Redirect("frmViewCart.aspx");
            }
            else
            {
                lblDisplay.Text = "Your cart is empty";
            }

        }
    }
}