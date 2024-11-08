using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmUserRegisterUpdate : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string qry = "Select count(reg_id) from Login_Tab where  reg_id=" + Session["regid"];
                string cid = objCls.fn_ExecScalar(qry).ToString();
                if (cid == "1")
                {
                    //string qry1= "Select urt.Name,urt.Age,urt.Address,urt.Pincode,urt.Phone,urt.Email,urt.Gender,lt.Password  from User_Reg_Tab urt join Login_Tab lt on urt.User_Reg_Id=lt.Reg_Id where user_reg_id=" + Session["regid"];
                    string qry1="Select * from User_reg_tab where User_Reg_id=" + Session["regid"];
                    SqlDataReader dr = objCls.fn_ExecReader(qry1);
                    while(dr.Read())
                    {
                        txtAddress.Text = dr["Address"].ToString();
                        txtAge.Text = dr["Age"].ToString();
                        txtEmail.Text = dr["Email"].ToString();
                        txtName.Text = dr["Name"].ToString();
                        txtPhone.Text = dr["Phone"].ToString();
                        txtPincode.Text = dr["Pincode"].ToString();
                        if(dr["Gender"].ToString()=="Male")
                        {
                            rbGender.SelectedIndex = 0;
                        }
                        else
                        {
                            rbGender.SelectedIndex = 1;
                        }
                        //txtPassword.Text = dr["Password"].ToString();
                        //txtConfirmPassword .Text = dr["Password"].ToString();
                        txtName.Focus();
                    }
                }
            }
            
        }

        public string ConvertQuotes(string str)
        {
            return (str.Replace("'", "''"));
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string insQry = "Update  User_Reg_Tab set Name='" + txtName.Text + "', Age= " + txtAge.Text + ", Address= '" + ConvertQuotes(txtAddress.Text) + "', Pincode=" + txtPincode.Text + ", Phone =" + txtPhone.Text + ", Email='" + txtEmail.Text + "', Gender='" + rbGender.SelectedItem.Text + "', User_Status='active' where  user_reg_id=" + Session["regid"];
            int st = objCls.fn_ExecNonQuery(insQry);
            if (st == 1)
            {
                //string qry= "Update Login_tab set password = '"+ txtPassword.Text +"' where  reg_id=" + Session["regid"];
                //int st1= objCls.fn_ExecNonQuery(qry);
                //if(st1==1)
                //{
                    lblDisplay.Text = "Updated";
                    //txtAddress.Text = "";
                    //txtAge.Text = "";
                    //txtConfirmPassword.Text = "";
                    //txtEmail.Text = "";
                    //txtName.Text = "";
                    //txtPassword.Text = "";
                    //txtPhone.Text = "";
                    //txtPincode.Text = "";
                    //txtName.Focus();
                //}
            }
        }

        protected void btnPaymentDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAddAccountDetails.aspx");
        }

        protected void btnPreviousOrders_Click(object sender, EventArgs e)
        {
            string qry1 = "Select count(order_id) from order_tab where order_Status='paid' and user_reg_id=" + Session["regid"];
            int cnt = Convert.ToInt32(objCls.fn_ExecScalar(qry1));
            if (cnt > 0)
            {
                Response.Redirect("frmViewPreviousOrders.aspx");
            }
            else
            {
                lblDisplay.Text = "There are no Previous Orders";
                //btnConfirmOrder.Visible = false;
            }
            //Response.Redirect("frmViewPreviousOrders.aspx");
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmChangePassword.aspx");
        }

        protected void btnPendingOrders_Click(object sender, EventArgs e)
        {
            string qry1 = "Select count(order_id) from order_tab where order_Status='active' and user_reg_id=" + Session["regid"];
            int cnt = Convert.ToInt32(objCls.fn_ExecScalar(qry1));
            if (cnt > 0)
            {
                Response.Redirect("frmViewPendingOrders.aspx");
            }
            else
            {
                lblDisplay.Text = "There are no Pending Orders";
                //btnConfirmOrder.Visible = false;
            }
            //Response.Redirect("frmViewPendingOrders.aspx");
        }
    }
}