<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAddProduct.aspx.cs" Inherits="Project.frmAddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCategory" runat="server" Height="16px" Width="271px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Category Name Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" Width="270px" OnTextChanged="txtName_TextChanged" TabIndex="1"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Name Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
             <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Price"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPrice" runat="server" AutoPostBack="True" Width="73px" TabIndex="2"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter a Valid Price" ValidationExpression="([0-9])[0-9]*[.]?[0-9]*" ForeColor="#0099CC"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="57px" Width="275px" TabIndex="3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Stock"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtStock" runat="server" AutoPostBack="True" Width="73px" TabIndex="4"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter a Valid Number" ValidationExpression="([0-9])[0-9]*" ForeColor="#0099CC"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Product Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" TabIndex="5" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Insert a picture" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
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
            <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnInsert" runat="server" Text="Insert" Font-Bold="True" ForeColor="#0099CC" OnClick="btnInsert_Click" />
        </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/frmAdminHome.aspx">Go back to Home Page</asp:LinkButton>
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
            <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
        </td>
        <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
