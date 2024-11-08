using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmEditCategories : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fn_GridViewBind();
            }
        }

        protected void btnUpdate(object sender, EventArgs e)
        {

            fn_Loadimage();
            string ins = "Update Category_tab set cat_name='" + txtName.Text + "' ,cat_image='" + Session["img"] + "',cat_description='" + txtDescription.Text + "',cat_status='" + ddlStatus.SelectedItem.Text + "' where cat_id='" + Session["cat_id"].ToString() + "'";
            int i = objCls.fn_ExecNonQuery(ins);
            if(i==1)
            {
                lblDisplay.Text = "updated";
                fn_GridViewBind();
            }
        }

        protected void btnViewImage_Click(object sender, EventArgs e)
        {

            fn_Loadimage();

        }

        public void fn_GridViewBind()
        {
            string qry = "Select * from Category_tab";
            GridView1.DataSource = objCls.fn_Adapter(qry);
            GridView1.DataBind();
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

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            Session["cat_id"] = rw.Cells[1].Text;
            string str = "Select * from category_tab where cat_id='" + Session["cat_id"].ToString() + "'";
            SqlDataReader dr = objCls.fn_ExecReader(str);
            while (dr.Read())
            {
                txtName.Text = dr["cat_name"].ToString();
                txtDescription.Text = dr["cat_description"].ToString();
                imgImage.ImageUrl = dr["cat_image"].ToString();
                Session["img"] = dr["cat_image"].ToString();
                if (dr["cat_status"].ToString() == "active")
                {
                    ddlStatus.SelectedIndex = 0;
                }
                else
                {
                    ddlStatus.SelectedIndex = 1;
                }
                Panel1.Visible = true;
                txtName.Focus();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            fn_GridViewBind();
        }
    }
}