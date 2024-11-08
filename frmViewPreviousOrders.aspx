<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmViewPreviousOrders.aspx.cs" Inherits="Project.frmViewPreviousOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 18px;
        }
        .auto-style3 {
            text-align: center;
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
            <td colspan="2" class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Previous Orders" Font-Size="Large" ForeColor="#0099CC"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblDisplay" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmUserRegisterUpdate.aspx">Go back to Previous Page</asp:LinkButton>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
