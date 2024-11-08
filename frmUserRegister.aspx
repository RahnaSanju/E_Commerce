<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmUserRegister.aspx.cs" Inherits="Project.frmUserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 998px;
        margin-right: 23px;
    }
    .auto-style3 {
        width: 683px;
    }
    .auto-style4 {
        width: 595px;
        height: 58px;
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
    .auto-style8 {
        width: 595px;
    }
        .auto-style9 {
            width: 595px;
            height: 31px;
        }
        .auto-style10 {
            width: 452px;
            height: 31px;
        }
        .auto-style11 {
            width: 683px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9">
        </td>
        <td class="auto-style10">
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#0099CC" Text="User Register"></asp:Label>
        </td>
        <td class="auto-style11">
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Name"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtName" runat="server" Width="203px"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Age"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtAge" runat="server" Width="58px"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age Should be between 18 and 80" MinimumValue="18" Type="Integer" ForeColor="#0099CC" MaximumValue="80"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Address"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="78px" Width="213px"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label9" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Pincode"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPincode" ErrorMessage="Enter a Valid Pincode" ForeColor="#0099CC" ValidationExpression="[6]\d{5}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Phone"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Valid Phone No." ForeColor="#0099CC" ValidationExpression="[6789]\d{9}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Email"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtEmail" runat="server" Width="206px"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Mail Id" ForeColor="#0099CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Gender"></asp:Label>
        <td class="auto-style7">
            <asp:RadioButtonList ID="rbGender" runat="server" Font-Size="Small" ForeColor="#0099CC">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rbGender" ErrorMessage="RequiredFieldValidator" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Username"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtUsername" runat="server" AutoPostBack="True" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Password"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Confirm Password"></asp:Label>
        </td>
         <td class="auto-style6">
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password Mismatch" ForeColor="#0099CC"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="btnRegister" runat="server" Text="Register" Font-Bold="True" OnClick="btnRegister_Click" ForeColor="#0099CC" />
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
