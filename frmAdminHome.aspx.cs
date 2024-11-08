using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class frmAdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            switch (TreeView1.SelectedNode.Text)
            {
             //case "Add New Admin":
             //       {
             //           Response.Redirect("frmAdminRegister.aspx");
             //           break;
             //       }
                    
            case "Add Category":
                    {
                        Response.Redirect("frmAddCategory.aspx");
                        break;
                    }
            case "Edit Category":
                    {
                        Response.Redirect("frmEditCategories.aspx");
                        break;
                    }
            case "Add Product":
                    {
                        Response.Redirect("frmAddProduct.aspx");
                        break;
                    }
            case "Edit Product":
                    {
                        Response.Redirect("frmEditProducts.aspx");
                        break;
                    }
                case "View Feedback":
                    {
                        Response.Redirect("frmViewFeedback.aspx");
                        break;
                    }
            }
        }
    }
}