<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="frmDispIndProduct.aspx.cs" Inherits="Project.frmDispIndProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 323px;
        }
        .auto-style3 {
            width: 509px;
        }
        .auto-style5 {
            width: 44px;
        }
        .auto-style6 {
            width: 48px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 200px;
        }
        .auto-style13 {
            width: 1887px;
        }
        .auto-style15 {
            width: 1887px;
            height: 43px;
        }
        .auto-style16 {
            width: 509px;
            height: 43px;
        }
        .auto-style17 {
            height: 43px;
        }
        .auto-style18 {
            margin-bottom: 0px;
        }
        .auto-style19 {
            width: 1887px;
            height: 18px;
        }
        .auto-style20 {
            width: 509px;
            height: 18px;
        }
        .auto-style21 {
            height: 18px;
        }
        .auto-style22 {
            width: 1887px;
            height: 23px;
        }
        .auto-style23 {
            width: 509px;
            height: 23px;
        }
        .auto-style24 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="imgProduct" runat="server" Height="378px" Width="310px" />
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="lblName" runat="server" Font-Size="Small" ForeColor="#0099CC"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="lblDescription" runat="server" Font-Size="Small" ForeColor="#0099CC"></asp:Label>
                        </td>
                        <td class="auto-style23">
                            </td>
                        <td class="auto-style23">
                            </td>
                        <td class="auto-style24"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="lblPrice0" runat="server" Font-Size="Small" ForeColor="#0099CC">Rs. </asp:Label>
                            <asp:Label ID="lblPrice" runat="server" Font-Size="Small" ForeColor="#0099CC"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Button ID="btnDec" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0099CC" Height="33px" OnClick="btnDec_Click" Text="-" Width="28px" />
                                    </td>
                                    <td class="auto-style6">
                                        <asp:Label ID="lblQuantity" runat="server" Font-Size="XX-Small" ForeColor="#0099CC"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnInc" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0099CC" Height="33px" OnClick="btnInc_Click" Text="+" Width="28px" CssClass="auto-style7" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style16">
                            </td>
                        <td class="auto-style16">
                            </td>
                        <td class="auto-style17"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19"></td>
                        <td class="auto-style20"></td>
                        <td class="auto-style20"></td>
                        <td class="auto-style21"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    </table>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Button ID="btnAddtoCart" runat="server" Font-Bold="True" ForeColor="#0099CC" Text="Add to Cart" Width="185px" OnClick="btnAddtoCart_Click" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnViewCart" runat="server" Font-Bold="True" ForeColor="#0099CC" Text="View Cart" Width="184px" OnClick="btnViewCart_Click" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnContShopping" runat="server" Font-Bold="True" ForeColor="#0099CC" Text="Continue Shopping" Width="185px" OnClick="btnContShopping_Click" CssClass="auto-style18" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
