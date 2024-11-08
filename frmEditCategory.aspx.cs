using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class frmEditCategory : System.Web.UI.Page
    {
        ConnectionCls objCls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fn_loadCategory();
            }
            
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "Select * from Category_tab where cat_id='" + ddlCategory.SelectedItem.Value + "'";
            SqlDataReader dr= objCls.fn_ExecReader(str);
            while (dr.Read())
            {
                txtName.Text = dr["cat_name"].ToString();
                txtDescription.Text = dr["cat_description"].ToString();
                imgImage.ImageUrl = dr["cat_image"].ToString();
                Session["img"] = dr["cat_image"].ToString();
                if (dr["cat_status"].ToString()=="active")
                {
                    ddlStatus.SelectedIndex = 0;
                }
                else
                {
                    ddlStatus.SelectedIndex = 1;
                }
            }
        }

        protected void btnUpdate(object sender, EventArgs e)
        {

            fn_Loadimage();
            string ins = "Update Category_tab set cat_name='"+txtName.Text+"' ,cat_image='"+ Session["img"] + "',cat_description='"+txtDescription.Text+"',cat_status='"+ddlStatus.SelectedItem.Text+"' where cat_id='"+ddlCategory.SelectedItem.Value+"'";
            int i = objCls.fn_ExecNonQuery(ins);
            if(i==1)
            {
                lblDisplay.Text = "updated";
                fn_loadCategory();
            }
        }

        protected void btnViewImage_Click(object sender, EventArgs e)
        {

            fn_Loadimage();

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
        public void fn_loadCategory()
        {
            string qry = "Select cat_id,cat_name from Category_tab";
            ddlCategory.DataSource = objCls.fn_Adapter(qry);
            ddlCategory.DataValueField = "cat_id";
            ddlCategory.DataTextField = "cat_name";
            ddlCategory.DataBind();
            ddlCategory.Items.Insert(0, "-Select-");
        }

    }
}