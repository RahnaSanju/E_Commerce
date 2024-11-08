using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmBill : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["regid"] = 2;
                //Session["Billid"] = "BL-200003";
                //Session["trnComplete"] = "Load";
                //string qry = "select bt.Bill_id,bt.Bill_Date,bt.Total,urt.Name,urt.Address,urt.Pincode,urt.Phone from Bill_Tab bt join User_Reg_tab urt on bt.User_Reg_id=urt.User_Reg_id where urt.User_Reg_id= " + Session["regid"];
                //string qry = "select distinct bt.Bill_id,bt.Bill_Date,bt.Total,urt.Name,urt.Address,urt.Pincode,urt.Phone from Bill_Tab bt join Order_Tab ot on bt.Bill_Date=ot.Order_Date join User_Reg_tab urt on bt.User_Reg_id=urt.User_Reg_id  where ot.Order_Status='active' and urt.User_Reg_id=" + Session["regid"];
                string qry = "select distinct bt.Bill_id,bt.Bill_Date,bt.Total,urt.Name,urt.Address,urt.Pincode,urt.Phone from Bill_Tab bt join User_Reg_tab urt on bt.User_Reg_id = urt.User_Reg_id where bt.Bill_Id = '" + Session["Billid"].ToString() + "' and urt.User_Reg_id =" + Session["regid"];
                SqlDataReader dr = objCls.fn_ExecReader(qry);
                while (dr.Read())
                {
                    lblAddress.Text = dr["Address"].ToString();
                    lblBillDate.Text = Convert.ToDateTime(dr["Bill_date"].ToString()).ToShortDateString();
                    lblBillNo.Text = dr["Bill_id"].ToString();
                    lblBillTotal.Text = dr["Total"].ToString();
                    lblName.Text = dr["Name"].ToString();
                    lblPhone.Text = dr["Phone"].ToString();
                    lblPincode.Text = dr["Pincode"].ToString();
                }

                string str = "Select ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS Slno,pt.Prod_Name as Product,pt.Prod_Price as Price,ot.Quantity,ot.Subtotal from  Product_Tab pt join Order_Tab ot on ot.Prod_Id=pt.Prod_Id where ot.order_status='active' and ot.User_Reg_Id=" + Session["regid"];
                GridView1.DataSource = objCls.fn_Adapter(str);
                GridView1.DataBind();
            }
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            string AccNo = "", msg = "", prodId = "";
            double billAmt = 0;
            int qty = 0, stock = 0;
            string str = "Select Acc_No from Account_tab where User_Reg_Id=" + Session["regid"];
            SqlDataReader dr = objCls.fn_ExecReader(str);
            if (dr.Read() == true)
            {
                AccNo = dr["Acc_No"].ToString();
                string qry = "select total from bill_tab where bill_id = '" + Session["Billid"] + "'";
                SqlDataReader dr1 = objCls.fn_ExecReader(qry);
                if (dr1.Read() == true)
                {
                    billAmt = Convert.ToDouble(dr1["total"]);
                    PaymentService.ServiceClient obj = new PaymentService.ServiceClient();
                    msg = obj.CheckBalance(AccNo, billAmt);
                }
                //PaymentService.ServiceClient obj = new PaymentService.ServiceClient();
                //msg = obj.CheckBalance(AccNo);
                if (msg == "Transaction Complete")
                {
                    string str1 = "Update Order_tab set order_Status='pending' where order_status='active' and user_reg_id=" + Session["regid"];
                    int cnt = objCls.fn_ExecNonQuery(str1);
                    if (cnt >= 1)
                    {
                        //Update products table and Order table
                        for (int i = 0; i < cnt; i++)
                        {
                            string upd = "Select ot.prod_id,ot.Quantity,pt.Prod_Stock from order_tab ot join Product_Tab pt on ot.Prod_Id=pt.Prod_Id where ot.Order_Status='pending' and ot.User_Reg_Id =" + Session["regid"];
                            SqlDataReader dr2 = objCls.fn_ExecReader(upd);
                            if (dr2.Read() == true)
                            {
                                prodId = dr2["prod_id"].ToString();
                                qty = Convert.ToInt32(dr2["Quantity"]);
                                stock = Convert.ToInt32(dr2["Prod_Stock"]);

                            }
                            string updProd = "Update Product_tab set Prod_stock = " + (stock - qty) + " where prod_Id='" + prodId + "'";
                            objCls.fn_ExecNonQuery(updProd);
                            string str2 = "Update Order_tab set order_Status='paid' where prod_Id='" + prodId + "' and order_status='pending' and user_reg_id =" + Session["regid"];
                            objCls.fn_ExecNonQuery(str2);
                            btnPayment.Visible = false;
                            Session["trnComplete"] = "Complete";
                        }
                    }
                    else
                    {
                        msg = "Transaction Incomplete";
                        Session["trnComplete"] = "Incomplete";
                    }


                    //if (msg == "Transaction Complete")
                    //{
                    //    string str1 = "Update Order_tab set order_Status='paid' where user_reg_id=" + Session["regid"];
                    //    int i = objCls.fn_ExecNonQuery(str1);
                    //    if (i >= 1)
                    //    {
                    //        //Update products table
                    //        for (int j = 0; j < i; j++)
                    //        {
                    //            string upd = "Select ot.prod_id,ot.Quantity,pt.Prod_Stock from order_tab ot join Product_Tab pt on ot.Prod_Id=pt.Prod_Id where ot.Order_Status='Paid' and ot.User_Reg_Id =" + Session["regid"] + " order by ot.Order_Date desc"
                    //            SqlDataReader dr1 = objCls.fn_ExecReader(upd);
                    //            while (dr1.Read())
                    //            {
                    //                prodId = dr1["prod_id"].ToString();
                    //                qty = Convert.ToInt32(dr1["Quantity"]);
                    //                stock = Convert.ToInt32(dr1["Prod_Stock"]);

                    //            }
                    //            string updProd = "Update Product_tab set Prod_stock = " + (stock - qty) + " where prodId='" + prodId + "'";
                    //            objCls.fn_ExecNonQuery(updProd);
                    //            string str2 = "Update Order_tab set order_Status='paid' where  prodId='" + prodId + "' and user_reg_id =" + Session["regid"];
                    //            objCls.fn_ExecNonQuery(str2);
                    //        }

                    //    }
                    //    else
                    //    {
                    //        msg = "Transaction Incomplete";
                    //    }
                    //}
                }
            }
            else
            {
                msg = "Account details not entered. Enter the payment Details.";
                Response.Redirect("frmAddAccountDetails.aspx");
            }
            lblDisplay.Text = msg;
        }
    }
}