<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAddCategory.aspx.cs" Inherits="Project.frmAddCategory1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<center><asp:Label ID="lblHeading" runat="server" align="center" Font-Bold="true" ForeColor="#0099CC" Font-Size="Larger">ADD CATEGORY</asp:Label></center>--%>
    <table class="auto-style1">
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
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" OnTextChanged="txtName_TextChanged" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Insert a picture" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Category Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="109px" Width="282px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
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
            <asp:Button ID="btnInsert" runat="server" Text="Insert" Font-Bold="True" OnClick="btnInsert_Click" ForeColor="#0099CC" />
        </td>
        <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/frmAdminHome.aspx">Go back to Home Page</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        <td>
            <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
        </td>
        <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
