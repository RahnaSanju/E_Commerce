using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmAddAccountDetails : System.Web.UI.Page
    {
        ConnectionCls ObjCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string cntqry = "Select count(acc_id) from Account_tab where User_Reg_id=" + Session["regid"];
                int cid = Convert.ToInt32(ObjCls.fn_ExecScalar(cntqry));
                if (cid == 1)
                {
                    string getqry = "Select * from Account_tab where User_Reg_id=" + Session["regid"];
                    SqlDataReader dr = ObjCls.fn_ExecReader(getqry);
                    if (dr.Read() == true)
                    {
                        txtAccNo.Text = dr["Acc_no"].ToString();
                        txtAccBalance.Text = dr["Acc_Balance"].ToString();
                        if (dr["Acc_type"].ToString() == "Current")
                        {
                            ddlAccType.SelectedIndex = 0;
                        }
                        else if (dr["Acc_type"].ToString() == "Savings")
                        {
                            ddlAccType.SelectedIndex = 1;
                        }
                        btnInsert.Text = "Update";
                    }
                }
                else
                {
                    btnInsert.Text = "Insert";
                }
            }
           

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string cntid = "Select count(acc_id) from Account_tab where User_Reg_id=" + Session["regid"];
            int cid = Convert.ToInt32(ObjCls.fn_ExecScalar(cntid));
            if (cid == 1)
            {
                string qry = "Update Account_tab set Acc_no='" + txtAccNo.Text + "' , Acc_type='" + ddlAccType.SelectedItem.Text + "' , Acc_Balance=" + Convert.ToDouble(txtAccBalance.Text)  + " where user_reg_id=" + Session["regid"];
                int i = ObjCls.fn_ExecNonQuery(qry);
                if (i == 1)
                {
                    lblDisplay.Text = "Updated";
                    txtAccNo.Text = "";
                    txtAccBalance.Text = "";
                }
            }
            else
            {
                string qry = "Insert into Account_tab values (" + Session["regid"] + ",'" + txtAccNo.Text + "','" + ddlAccType.SelectedItem.Text + "'," + Convert.ToDouble(txtAccBalance.Text) + ")";
                int i = ObjCls.fn_ExecNonQuery(qry);
                if (i == 1)
                {
                    lblDisplay.Text = "Inserted";
                    txtAccNo.Text = "";
                    txtAccBalance.Text = "";
                }
            }
        }
    }
}