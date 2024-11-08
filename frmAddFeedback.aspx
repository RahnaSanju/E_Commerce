<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmAddFeedback.aspx.cs" Inherits="Project.frmAddFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style19">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style20">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Feedback Form"></asp:Label>
            </td>

        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtFeedback1" runat="server" Height="132px" Width="654px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="btnSend" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnSend_Click" Text="Send" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="lblDisplay" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
</asp:Content>
