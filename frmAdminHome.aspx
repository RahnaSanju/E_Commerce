<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAdminHome.aspx.cs" Inherits="Project.frmAdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 237px;
        }
        .auto-style3 {
            height: 88px;
        }
        .auto-style4 {
            width: 237px;
            height: 88px;
        }
        .auto-style5 {
            height: 88px;
            width: 612px;
        }
        .auto-style6 {
            width: 612px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:TreeView ID="TreeView1" runat="server" ExpandDepth="0" Font-Size="Medium" ForeColor="#0099CC" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                    <Nodes>
                        <asp:TreeNode Text="Category" Value="Category">
                            <asp:TreeNode Text="Add Category" Value="Add Category"></asp:TreeNode>
                            <asp:TreeNode Text="Edit Category" Value="Edit Category"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Product" Value="Product">
                            <asp:TreeNode Text="Add Product" Value="Add Product"></asp:TreeNode>
                            <asp:TreeNode Text="Edit Product" Value="Edit Product"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Feedback" Value="Feedback">
                            <asp:TreeNode Text="View Feedback" Value="View Feedback"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                    <RootNodeStyle Font-Size="Large" />
                </asp:TreeView>
            </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style3">
                </td>
            <td class="auto-style3">
                </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
