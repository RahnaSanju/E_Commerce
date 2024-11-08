<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmUserRegisterUpdate.aspx.cs" Inherits="Project.frmUserRegisterUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 998px;
        margin-right: 23px;
    }
    .auto-style3 {
        width: 683px;
    }
    .auto-style5 {
        width: 683px;
        height: 58px;
    }
    .auto-style6 {
        width: 452px;
    }
    .auto-style7 {
        width: 452px;
        height: 58px;
    }
        .auto-style10 {
            width: 452px;
            height: 18px;
        }
        .auto-style11 {
            width: 683px;
            height: 18px;
        }
        .auto-style12 {
            width: 384px;
        }
        .auto-style13 {
            width: 384px;
            height: 58px;
        }
        .auto-style14 {
            width: 384px;
            height: 18px;
        }
        .auto-style15 {
            width: 595px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style15" colspan="3">
            <asp:Label ID="Label11" runat="server" Font-Size="Large" ForeColor="#0099CC" Text="Update User Details"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Name"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Age"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age Should be between 18 and 80" MinimumValue="18" Type="Integer" ForeColor="#0099CC" MaximumValue="80"></asp:RangeValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Address"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="100px" Width="221px"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Label ID="Label9" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Pincode"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPincode" ErrorMessage="Enter a Valid Pincode" ForeColor="#0099CC" ValidationExpression="[6]\d{5}$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Phone"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Valid Phone No." ForeColor="#0099CC" ValidationExpression="[6789]\d{9}$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Email"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Mail Id" ForeColor="#0099CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            &nbsp;<td class="auto-style13">
            <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Gender"></asp:Label>
        <td class="auto-style7">
            <asp:RadioButtonList ID="rbGender" runat="server" Font-Size="Small" ForeColor="#0099CC">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rbGender" ErrorMessage="Select Gender" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            &nbsp;</td>
         <td class="auto-style6">
             &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
            &nbsp;</td>
        <td class="auto-style14">
            <asp:Button ID="btnChangePassword" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnChangePassword_Click" Text="Change Password" Width="250px" />
        </td>
        <td class="auto-style10">
        </td>
        <td class="auto-style11"></td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="btnPaymentDetails" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnPaymentDetails_Click" Text="Add Payment Details" Width="248px" />
        </td>
         <td class="auto-style6">
            <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="btnPreviousOrders" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnPreviousOrders_Click" Text="View Previous Orders" Width="250px" />
        </td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="btnPendingOrders" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnPendingOrders_Click" Text="View Pending Orders" Width="250px" />
        </td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Font-Bold="True" OnClick="btnUpdate_Click" ForeColor="#0099CC" />
        </td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style3">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmUserHome.aspx">Go Back to Home</asp:LinkButton>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
