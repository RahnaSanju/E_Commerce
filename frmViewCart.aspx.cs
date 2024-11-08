using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmViewCart : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fn_GridViewBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            fn_GridViewBind();
        }
        public void fn_GridViewBind()
        {
            string qry1 = "Select count(cart_id) from cart_tab where user_reg_id=" + Session["regid"].ToString();
            int cnt = Convert.ToInt32(objCls.fn_ExecScalar(qry1));
            if (cnt >0)
            {
                string qry = "select cart.cart_id,cart.Prod_Id,cart.Quantity,cart.Subtotal,prod.Prod_Name from cart_tab cart join Product_Tab prod on cart.Prod_Id = prod.Prod_Id  where cart.user_reg_id = " + Session["regid"].ToString();
                GridView1.DataSource = objCls.fn_Adapter(qry);
                GridView1.DataBind();
                btnConfirmOrder.Visible = true;
            }
            else
            {
                string qry = "select cart.cart_id,cart.Prod_Id,cart.Quantity,cart.Subtotal,prod.Prod_Name from cart_tab cart join Product_Tab prod on cart.Prod_Id = prod.Prod_Id  where cart.user_reg_id = " + Session["regid"].ToString();
                GridView1.DataSource = objCls.fn_Adapter(qry);
                GridView1.DataBind();
                lblDisplay.Text = "Your Cart is Empty";
                btnConfirmOrder.Visible = false;
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            fn_GridViewBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            fn_GridViewBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            double pp = 0;
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtQty = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];

            string prodCode="";
            for(int cnt=0;cnt<GridView1.Rows.Count;cnt++)
            {
                string qry= "Select * from cart_Tab where cart_id=" + getid;
                SqlDataReader dr1 = objCls.fn_ExecReader(qry);
                while(dr1.Read())
                {
                    if(i==cnt)
                    {
                        prodCode = dr1["prod_id"].ToString();
                    }
                }
            }
            //Response.Write("produce code : " + prodCode);


            string getProdPrice = "Select Prod_price from product_tab where prod_id='" + prodCode + "'";
            SqlDataReader dr = objCls.fn_ExecReader(getProdPrice);
            if (dr.Read() == true)
            {
                pp = Convert.ToDouble(dr["prod_price"]);
            }

            double subtotal = pp * Convert.ToDouble(txtQty.Text);
            string updQry = "Update Cart_tab set Quantity=" + txtQty.Text + ", subtotal = " + subtotal + "where cart_id=" + getid;
            int st = objCls.fn_ExecNonQuery(updQry);
            if (st == 1)
            {
                lblDisplay.Text = "Updated";
            }
            GridView1.EditIndex = -1;
            fn_GridViewBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i]);
            string qry = "Delete from cart_table where cart_id=" + getid;
            int st = objCls.fn_ExecNonQuery(qry);
            if(st==1)
            {
                lblDisplay.Text="Deleted";
            }
        }

        protected void lnkBtnDelete_Command(object sender, CommandEventArgs e)
        {
            string qry = "Delete from cart_tab where cart_id=" + Convert.ToInt32(e.CommandArgument);
            int i=objCls.fn_ExecNonQuery(qry);
            if (i == 1)
                lblDisplay.Text = "Deleted";
            fn_GridViewBind();
        }

        protected void btnConfirmOrder_Click(object sender, EventArgs e)
        {
            string prodId = "";
            int cartId = 0, qty = 0;
            double subtotal = 0;
            string newId = "";
            double total = 0;

            string qry = "Select count(cart_id) from cart_tab where user_reg_id=" + Session["regid"].ToString();
            int cnt = Convert.ToInt32(objCls.fn_ExecScalar(qry));
            if(cnt>0)
            {
                for (int i = 0; i < cnt; i++)
                {
                    string qry1 = "Select * from cart_tab where user_reg_id=" + Session["regid"].ToString();
                    SqlDataReader dr = objCls.fn_ExecReader(qry1);
                    if(dr.Read()==true)
                    {
                        cartId = Convert.ToInt32(dr["cart_id"]);
                        prodId = dr["prod_id"].ToString();
                        qty = Convert.ToInt32(dr["Quantity"]);
                        subtotal = Convert.ToDouble(dr["Subtotal"]);
                        total += subtotal;
                    }
               
                    string qry2 = "Insert into order_tab values('" + Session["regid"] + "','" + prodId + "'," + qty + "," + subtotal + ",'active','" + System.DateTime.Today.ToShortDateString() + "')";
                    objCls.fn_ExecNonQuery(qry2);
                    string qry3 = "Delete from cart_tab where cart_id=" + cartId;
                    objCls.fn_ExecNonQuery(qry3);
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

        }
    }
}