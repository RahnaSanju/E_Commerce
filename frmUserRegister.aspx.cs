using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmUserRegister : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {

            string qry = "Select Max(Reg_Id) from Login_Tab";
            string maxid = objCls.fn_ExecScalar(qry);
            int get_id;
            if (maxid == "")
            {
                get_id = 1;
            }
            else
            {
                get_id = Convert.ToInt32(maxid) + 1;
            }

            string insQry = "Insert into User_Reg_Tab values(" + get_id + ",'" + txtName.Text + "'," + txtAge.Text + ",'" + ConvertQuotes(txtAddress.Text) + "'," + txtPincode.Text + "," + txtPhone.Text + ",'" + txtEmail.Text + "','" + rbGender.SelectedItem.Text + "','active')";
            int st = objCls.fn_ExecNonQuery(insQry);
            if (st == 1)
            {
                string insLogin = "Insert into Login_Tab values(" + get_id + ",'" + txtUsername.Text + "','" + txtPassword.Text + "','user')";
                int st1 = objCls.fn_ExecNonQuery(insLogin);
                if (st1 == 1)
                {
                    lblDisplay.Text = "Inserted";
                    txtAddress.Text = "";
                    txtAge.Text = "";
                    txtConfirmPassword.Text = "";
                    txtEmail.Text = "";
                    txtName.Text = "";
                    txtPassword.Text = "";
                    txtPhone.Text = "";
                    txtPincode.Text = "";
                    txtUsername.Text = "";
                    txtName.Focus();

                    Session["regid"] = get_id;
                    Response.Redirect("frmUserHome.aspx");
                }
            }
        }

        public string ConvertQuotes(string str)
        {
            return (str.Replace("'", "''"));
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {
            string qry = "Select count(reg_id) from Login_Tab where username ='" + txtUsername.Text + "'";
            string cid = objCls.fn_ExecScalar(qry).ToString();
            if (cid == "1")
            {
                lblDisplay.Text = "Username already exists!!!";
            }
            else
            {
                lblDisplay.Text = "";
                txtUsername.Focus();
            }
        }
    }
}