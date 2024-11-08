using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmAddProduct : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        string newId="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string qry = "Select cat_id,cat_name from Category_tab order by cat_name";
                ddlCategory.DataSource = objCls.fn_Adapter(qry);
                ddlCategory.DataValueField = "cat_id";
                ddlCategory.DataTextField = "cat_name";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, "-Select-");
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string mqry = "Select max(Prod_id) from Product_tab where cat_id='"+ddlCategory.SelectedItem.Value+"'";

            string maxid = objCls.fn_ExecScalar(mqry);
            if (maxid != "")
            {
                //string mid = maxid.Substring(3);
                //int m = (Convert.ToInt32(mid.Substring(3))) + 1;
                //newId = "CAT" + (m.ToString()).PadLeft(4, '0');

                string cid = maxid.Substring(3, 4);
                string pid = maxid.Substring(7);
                int m = (Convert.ToInt32(pid.Substring(3))) + 1;
                newId = "PRO" + cid + (m.ToString()).PadLeft(4, '0');
            }
            else
            {
                string mid = ddlCategory.SelectedItem.Value.Substring(3);
                newId = "PRO" + mid + "0001";

            }


            string img = "~/PHS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));
            string qry = "Insert into Product_tab values('"+newId+"','" + ddlCategory.SelectedItem.Value + "','" + txtName.Text + "'," + txtPrice.Text + ",'" + img + "','" + ConvertQuotes(txtDescription.Text) + "'," + txtStock.Text + ",'active')";
            int i = objCls.fn_ExecNonQuery(qry);
            if (i == 1)
            {
                lblDisplay.Text = "Inserted";
                txtDescription.Text = "";
                txtName.Text = "";
                txtPrice.Text = "";
                txtStock.Text = "";
            }
        }

        public string ConvertQuotes(string str)
        {
            return (str.Replace("'", "''"));
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            string qry = "Select count(Prod_id) from Product_tab where cat_id='" + ddlCategory.SelectedItem.Value + "'and prod_name='" + txtName.Text + "'";
            string cid = objCls.fn_ExecScalar(qry);
            if (cid == "1")
            {
                lblDisplay.Text = "Product name already Exists";
                txtName.Focus();
            }
            else
            {
                lblDisplay.Text = "";
            }
        }
    }
}