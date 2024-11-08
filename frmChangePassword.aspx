<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmChangePassword.aspx.cs" Inherits="Project.frmChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#0099CC" Text="Old Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtOldPassword" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldPassword" ErrorMessage="RequiredFieldValidator" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="#0099CC" Text="New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" ForeColor="#0099CC" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtComparePassword" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtComparePassword" ErrorMessage="CompareValidator" ForeColor="#0099CC"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnChangePassword" runat="server" OnClick="btnChangePassword_Click" Text="Change Password" />
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="Small" ForeColor="#0099CC" PostBackUrl="~/frmUserRegisterUpdate.aspx">Go back to previous page</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
