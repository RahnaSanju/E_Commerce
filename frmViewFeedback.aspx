<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmViewFeedback.aspx.cs" Inherits="Project.frmViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            width: 456px;
        }
        .auto-style22 {
            width: 929px;
        }
        .auto-style23 {
            height: 18px;
        }
        .auto-style24 {
            width: 456px;
            height: 18px;
        }
        .auto-style25 {
            text-align: left;
        }
        .auto-style26 {
            width: 227px;
        }
        .auto-style27 {
            text-align: left;
            width: 227px;
        }
        .auto-style28 {
            text-align: center;
            width: 227px;
        }
        .auto-style30 {
            height: 18px;
            width: 131px;
        }
        .auto-style31 {
            width: 131px;
        }
        .auto-style32 {
            width: 64px;
        }
        .auto-style33 {
            height: 18px;
            width: 64px;
        }
        .auto-style34 {
            width: 27px;
        }
        .auto-style35 {
            height: 18px;
            width: 27px;
        }
        .auto-style36 {
            width: 227px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style19">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style20">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="User Feedbacks" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style25">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" PageIndex="5">
                            <Columns>
                                <asp:CommandField HeaderText="Reply" ShowSelectButton="True" />
                                <asp:BoundField DataField="Name" HeaderText="User Name" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:BoundField DataField="Feedback" HeaderText="Feedback" />
                            </Columns>
                        </asp:GridView>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="lblDisplay" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmAdminHome.aspx">Back to Home Page</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>


        <tr>
            <td>&nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table>
        <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style22">
                        <asp:Panel ID="Panel1" runat="server" Height="500px">
                            <table class="auto-style22">
                                <tr>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="From"></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">
                                        </td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label8" runat="server" Text="Name : "></asp:Label>
                                    </td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style24">
                                        <asp:Label ID="lblAdmName" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style23"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label9" runat="server" Text="Mail Id : "></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        <asp:Label ID="lblAdmMailId" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="To"></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label11" runat="server" Text="Name : "></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        <asp:Label ID="lblUsrName" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label12" runat="server" Text="Mail Id : "></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        <asp:Label ID="lblUsrMailId" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style30"></td>
                                    <td class="auto-style33"></td>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style24"></td>
                                    <td class="auto-style23"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label5" runat="server" Text="Subject :"></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="txtSubject" runat="server" Width="448px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">
                                        &nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label6" runat="server" Text="Reply : "></asp:Label>
                                    </td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="txtReply" runat="server" Height="140px" TextMode="MultiLine" Width="449px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        <asp:Button ID="btnSendMail" runat="server" OnClick="btnSendMail_Click" Text="Send Mail" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style34">&nbsp;</td>
                                    <td class="auto-style21">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td></td>
                </tr>
    </table>
   
</asp:Content>
