<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmAddAccountDetails.aspx.cs" Inherits="Project.frmAddAccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<center><h1>Account Details</h1></center>--%>
    <table class="auto-style1">
        <tr>
            <td colspan="4" class="auto-style2"> <asp:Label ID="Label3" runat="server" Text="Account Details" ForeColor="#0099CC" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Account No." ForeColor="#0099CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAccNo" runat="server" Width="230px"></asp:TextBox>
            </td>
            <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAccNo" ErrorMessage="Account No. cannot be empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Account Type" ForeColor="#0099CC"></asp:Label>

            </td>
            <td>
                <asp:DropDownList ID="ddlAccType" runat="server" Height="18px" Width="161px">
                        <asp:ListItem>Current</asp:ListItem>
                        <asp:ListItem>Savings</asp:ListItem>
                 </asp:DropDownList>

            </td>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlAccType" ErrorMessage="Select Account Type" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Account Balance" ForeColor="#0099CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAccBalance" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAccNo" ErrorMessage="Enter Account Balance" ForeColor="#0099CC"></asp:RequiredFieldValidator>
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
                <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" Width="93px" Font-Bold="True" ForeColor="#0099CC" />
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" ForeColor="#0099CC" PostBackUrl="~/frmUserRegisterUpdate.aspx" CausesValidation="False">Go back to previous page</asp:LinkButton>
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
