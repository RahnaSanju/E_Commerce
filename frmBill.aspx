<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBill.aspx.cs" Inherits="Project.frmBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 113px;
        }
        .auto-style3 {
            width: 130px;
        }
        .auto-style4 {
            width: 126px;
        }
        .auto-style5 {
            width: 663px;
        }
        .auto-style6 {
            width: 174px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 413px;
        }
        .auto-style10 {
            width: 663px;
            text-align: left;
        }
        .auto-style11 {
            width: 663px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <%--<center><h3><b>Bill Receipt</b></h3></center>--%>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11" colspan="3"><asp:Label ID="Label5" runat="server" Font-Bold="True" Text="BILL" Font-Underline="True"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Billing Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Bill No."></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblBillNo" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Bill Date"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblBillDate" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblPincode" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Grand Total: "></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblBillTotal" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblPhone" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:Button ID="btnPayment" runat="server" CssClass="auto-style7" OnClick="btnPayment_Click" Text="Make Payment" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:Label ID="lblDisplay" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
