<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmEditCategory.aspx.cs" Inherits="Project.frmEditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 201px;
        }
        .auto-style4 {
            width: 419px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category"></asp:Label>
                        </td>
                        <td class="auto-style4">
            <asp:DropDownList ID="ddlCategory" runat="server" Height="16px" Width="216px" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
            </asp:DropDownList>
                        </td>
                        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Select a Category" ForeColor="#0099CC"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Name"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtName" runat="server" Width="271px"></asp:TextBox>
                        </td>
                        <td>
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
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Description"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="274px"></asp:TextBox>
                        </td>
                        <td>
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
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnUpdate" Text="Update" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">

    </table>

</asp:Content>
