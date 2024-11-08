<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmEditProduct.aspx.cs" Inherits="Project.frmEditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            width: 197px;
            height: 27px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            width: 197px;
            height: 18px;
        }
        .auto-style6 {
            height: 18px;
        }
        .auto-style7 {
            width: 534px;
        }
        .auto-style8 {
            height: 27px;
            width: 534px;
        }
        .auto-style9 {
            height: 18px;
            width: 534px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" Width="226px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlProduct" runat="server" AutoPostBack="True" Height="17px" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged" Width="223px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtName" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Name Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Description"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Price"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtPrice" runat="server" Width="92px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter a Valid Price" ValidationExpression="([0-9])[0-9]*[.]?[0-9]*" ForeColor="#0099CC"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Image"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Image ID="imgImage" runat="server" Height="105px" Width="108px" />
                <asp:Button ID="btnViewImage" runat="server" ForeColor="#0099CC" OnClick="btnViewImage_Click" Text="View Image" />
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Stock"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtStock" runat="server" Width="69px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStock" ErrorMessage="Enter a Valid Number" ValidationExpression="([0-9])[0-9]*" ForeColor="#0099CC"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Status"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlStatus" runat="server" Height="17px" Width="144px">
                    <asp:ListItem>active</asp:ListItem>
                    <asp:ListItem>inactive</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnUpdate_Click" Text="Update" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
