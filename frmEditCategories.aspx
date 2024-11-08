<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmEditCategories.aspx.cs" Inherits="Project.frmEditCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 201px;
        }
        .auto-style6 {
            width: 968px;
        }
        .auto-style7 {
            width: 130px;
        }
        .auto-style8 {
            width: 272px;
            text-align: center;
        }
        .auto-style10 {
            width: 201px;
            height: 18px;
        }
        .auto-style13 {
            width: 978px;
        }
        .auto-style11 {
            width: 419px;
            height: 18px;
        }
        .auto-style12 {
            height: 18px;
            width: 344px;
        }
        .auto-style4 {
            width: 419px;
        }
        .auto-style16 {
            width: 344px;
        }
        .auto-style17 {
            width: 272px;
            height: 18px;
        }
        .auto-style18 {
            width: 234px;
            height: 18px;
        }
        .auto-style19 {
            width: 576px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style2">
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style8" colspan="3">
                            <asp:Label ID="Label1" runat="server" Text="Edit Categories" Font-Size="Large" ForeColor="#0099CC"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"></td>
                        <td class="auto-style18"></td>
                        <td class="auto-style19"></td>
                    </tr>
                </table>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="200px" Width="977px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="3">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="cat_id" HeaderText="Category Code" />
                    <asp:BoundField DataField="cat_name" HeaderText="Name" />
                    <asp:BoundField DataField="cat_description" HeaderText="Description" />
                    <asp:ImageField DataImageUrlField="cat_image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="cat_status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmAdminHome.aspx">Go back to Home Page</asp:LinkButton>
            </td>
        </tr>
        </table>
    &nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">
                <asp:Panel ID="Panel1" runat="server" Height="401px" Visible="False">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style10"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style12"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Name"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtName" runat="server" Width="271px"></asp:TextBox>
                            </td>
                            <td class="auto-style16">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="#0099CC">Name cannot be empty</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Image"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Image ID="imgImage" runat="server" Height="129px" Width="128px" />
                                <asp:Button ID="btnViewImage" runat="server" ForeColor="#0099CC" OnClick="btnViewImage_Click" Text="View Image" />
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style4">
                                <asp:FileUpload ID="FileUpload1" runat="server"  />
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Description"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="274px"></asp:TextBox>
                            </td>
                            <td class="auto-style16">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescription" ErrorMessage="RequiredFieldValidator" ForeColor="#0099CC">Description cannot be empty</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Status"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:DropDownList ID="ddlStatus" runat="server" Width="141px">
                                    <asp:ListItem>active</asp:ListItem>
                                    <asp:ListItem Value="inactive"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style4">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnUpdate" Text="Update" />
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style4">
                                <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">

    </table>


</asp:Content>
