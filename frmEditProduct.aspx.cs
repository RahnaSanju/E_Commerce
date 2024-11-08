using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmEditProduct : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                //string str = "Select distinct p.cat_id,c.Cat_Name from Product_Tab p join Category_Tab c on p.Cat_Id=c.Cat_id";
                string str = "Select distinct p.cat_id,c.Cat_Name from Product_Tab p join Category_Tab c on p.Cat_Id=c.Cat_id";
                ddlCategory.DataSource = objCls.fn_Adapter(str);
                ddlCategory.DataValueField = "cat_id";
                ddlCategory.DataTextField = "cat_name";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, "-Select-");
            }
        }


        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "Select * from Product_tab where cat_id='" + ddlCategory.SelectedItem.Value + "' order by prod_name";
            ddlProduct.DataSource = objCls.fn_Adapter(str);
            ddlProduct.DataValueField = "Prod_id";
            ddlProduct.DataTextField = "Prod_name";
            ddlProduct.DataBind();
            ddlProduct.Items.Insert(0, "-Select-");

        }

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "Select * from Product_tab where cat_id='" + ddlCategory.SelectedItem.Value + "' and Prod_id='"+ddlProduct.Text+"'";
            SqlDataReader dr = objCls.fn_ExecReader(str);
            while (dr.Read())
            {
                txtName.Text = dr["prod_name"].ToString();
                txtDescription.Text = dr["prod_description"].ToString();
                txtPrice.Text = dr["prod_price"].ToString();
                txtStock.Text = dr["prod_stock"].ToString();
                imgImage.ImageUrl = dr["prod_image"].ToString();
                Session["img"] = dr["prod_image"].ToString();
                if (dr["prod_status"].ToString() == "active")
                {
                    ddlStatus.SelectedIndex = 0;
                }
                else
                {
                    ddlStatus.SelectedIndex = 1;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            fn_Loadimage();
            string ins = "Update Product_tab set prod_name='" + txtName.Text + "' ,prod_price="+txtPrice.Text +",prod_image='" + Session["img"] + "',prod_description='" + ConvertQuotes(txtDescription.Text) + "',prod_stock="+txtStock.Text+",prod_status='" + ddlStatus.SelectedItem.Text + "' where cat_id='" + ddlCategory.SelectedItem.Value + "' and prod_id='"+ddlProduct.SelectedItem.Value+"'";
            int i = objCls.fn_ExecNonQuery(ins);
            if (i == 1)
            {
                lblDisplay.Text = "updated";
                //fn_loadCategory();
            }
        }

        public string ConvertQuotes(string str)
        {
            return (str.Replace("'", "''"));
        }

        public void fn_Loadimage()
        {
            if (FileUpload1.FileName != "" && FileUpload1.FileName != Session["img"].ToString())
            {
                string p = "~/PHS/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(p));
                imgImage.ImageUrl = p;
                Session["img"] = p;
            }
        }

        protected void btnViewImage_Click(object sender, EventArgs e)
        {
            fn_Loadimage();
        }
    }
}