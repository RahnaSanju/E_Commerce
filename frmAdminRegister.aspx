<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAdminRegister.aspx.cs" Inherits="Project.frmAdminRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<h1 align="center" ForeColor="#0099CC">Administrator Registration Form</h1>--%>
    <table class="auto-style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#0099CC" Text="Admin Register"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="211px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="64px" Width="219px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Phone"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Valid Phone No." ForeColor="#0099CC" ValidationExpression="[6789]\d{9}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Email"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtEmail" runat="server" Width="210px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Mail Id" ForeColor="#0099CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Username"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtUsername" runat="server" AutoPostBack="True" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Confirm Password"></asp:Label>
        </td>
         <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password Mismatch" ForeColor="#0099CC"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnRegister" runat="server" Text="Register" Font-Bold="True" OnClick="btnRegister_Click" ForeColor="#0099CC" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
