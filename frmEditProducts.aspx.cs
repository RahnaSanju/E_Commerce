using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmEditProducts : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                string str = "Select distinct p.cat_id,c.Cat_Name from Product_Tab p join Category_Tab c on p.Cat_Id=c.Cat_id order by c.cat_name";
                ddlCategory.DataSource = objCls.fn_Adapter(str);
                ddlCategory.DataValueField = "cat_id";
                ddlCategory.DataTextField = "cat_name";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, "-Select-");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            fn_Loadimage();
            string ins = "Update Product_tab set prod_name='" + txtName.Text + "' ,prod_price=" + txtPrice.Text + ",prod_image='" + Session["img"] + "',prod_description='" + ConvertQuotes(txtDescription.Text) + "',prod_stock=" + txtStock.Text + ",prod_status='" + ddlStatus.SelectedItem.Text + "' where cat_id='" + ddlCategory.SelectedItem.Value + "' and prod_id='" + Session["prod_id"].ToString() + "'";
            int i = objCls.fn_ExecNonQuery(ins);
            if (i == 1)
            {
                lblDisplay.Text = "updated";
                //fn_loadCategory();
                fn_GridViewBind();
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
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            fn_GridViewBind();
        }

        public void fn_GridViewBind()
        {
            string str1 = "Select * from Product_tab where cat_id='" + ddlCategory.SelectedItem.Value + "' order by prod_name";
            GridView1.DataSource = objCls.fn_Adapter(str1);
            GridView1.DataBind();
        }
        protected void btnViewImage_Click(object sender, EventArgs e)
        {
            fn_Loadimage();
        }


        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            Session["prod_id"] = rw.Cells[1].Text;
            string str = "Select * from Product_tab where cat_id='" + ddlCategory.SelectedItem.Value + "' and Prod_id='" + Session["prod_id"].ToString() + "'";
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
                txtName.Focus();
            }
        }

        protected void ddlCategory_SelectedIndexChanged1(object sender, EventArgs e)
        {
            fn_GridViewBind();
        }
    }
}