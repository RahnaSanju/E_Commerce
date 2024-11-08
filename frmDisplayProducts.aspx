<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmDisplayProducts.aspx.cs" Inherits="Project.frmDisplayProducts" %>
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
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("prod_id") %>' Height="160px" ImageUrl='<%# Eval("prod_image") %>' OnCommand="ImageButton1_Command" Width="144px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Prod_name") %>'></asp:Label>
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
