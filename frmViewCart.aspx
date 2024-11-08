<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmViewCart.aspx.cs" Inherits="Project.frmViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    .auto-style2 {
        text-align: left;
    }
    .auto-style3 {
        text-align: center;
    }
        .auto-style4 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="cart_id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5" Width="1001px">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Remove from cart">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkBtnDelete" runat="server" CommandArgument='<%# Eval("cart_id") %>' OnCommand="lnkBtnDelete_Command" Text="Click to Remove"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="prod_id" HeaderText="Product Code" />
                        <asp:BoundField DataField="Prod_Name" HeaderText="Product Name" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="subtotal" HeaderText="Subtotal" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmUserHome.aspx">Go back to Home Page</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btnConfirmOrder" runat="server" Font-Bold="True" ForeColor="#0099CC" OnClick="btnConfirmOrder_Click" Text="Confirm Order" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblDisplay" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
