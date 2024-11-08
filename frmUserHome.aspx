<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmUserHome.aspx.cs" Inherits="Project.frmUserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 35px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("cat_id") %>' Height="160px" ImageUrl='<%# Eval("cat_image") %>' OnCommand="ImageButton1_Command" Width="144px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("cat_name") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <table class="auto-style1">
                    <%--<tr>
                        <td>
                            <asp:Button ID="btnInsertPaymentDetails" runat="server" Font-Bold="True" ForeColor="#0099CC" Text="Insert Payment Details" OnClick="btnInsertPaymentDetails_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnViewCart" runat="server" Font-Bold="True" ForeColor="#0099CC" Text="View My Cart" OnClick="btnViewCart_Click" />
                        </td>
                    </tr>--%>
                   <%-- <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
                        </td>
                    </tr>--%>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
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
</asp:Content>
