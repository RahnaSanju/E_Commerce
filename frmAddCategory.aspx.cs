using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmAddCategory1 : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        string newId = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string qry = "Select max(cat_id) from category_tab";
            string maxid = objCls.fn_ExecScalar(qry);
            if (maxid != "")
            {
                string mid = maxid.Substring(3);
                int m = (Convert.ToInt32(mid.Substring(3))) + 1;
                newId = "CAT" + (m.ToString()).PadLeft(4, '0');

                //string mid = maxid.Substring(3);
                ////string mid = "CAT0001";
                //int m = Convert.ToInt32(mid.Substring(3));
                //m += 1;
                //string strId = m.ToString();
                //string newId = strId.PadLeft(4, '0');
                //string newCatid = "CAT" + newId;
                //lblDisplay.Text = newCatid;
            }
            else
            {
                newId = "CAT0001";
            }

            string img = "~/PHS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));
            string insQry = "Insert into Category_Tab values ('" + newId + "','" + txtName.Text + "','" + img + "','" + ConvertQuotes(txtDescription.Text) + "','active')";
            int i = objCls.fn_ExecNonQuery(insQry);
            if (i == 1)
            {
                lblDisplay.Text = "Inserted";
                txtDescription.Text = "";
                txtName.Text = "";
            }
        }

        public string ConvertQuotes(string str)
        {
            return (str.Replace("'", "''"));
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            string qry = "Select count(cat_id) from category_tab where cat_name='" + txtName.Text + "'";
            string cid = objCls.fn_ExecScalar(qry);
            if (cid == "1")
            {
                lblDisplay.Text = "Category name already Exists";
                txtName.Focus();
            }
            else
            {
                lblDisplay.Text = "";
            }
        }
    }
}