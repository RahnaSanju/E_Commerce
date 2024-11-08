<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="Project.frmLogin" %>
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
            width: 533px;
        }
    .auto-style4 {
            height: 18px;
            width: 533px;
        }
    .auto-style5 {
        width: 533px;
    }
        .auto-style6 {
            height: 18px;
            text-align: center;
        }
        .auto-style8 {
            height: 18px;
            width: 197px;
        }
        .auto-style9 {
            width: 197px;
        }
        .auto-style13 {
            height: 18px;
            width: 39px;
        }
        .auto-style14 {
            height: 18px;
            text-align: center;
            width: 39px;
        }
        .auto-style16 {
            width: 39px;
        }
        .auto-style17 {
            width: 99%;
        }
        .auto-style18 {
            height: 30px;
        }
        .auto-style19 {
            height: 30px;
            width: 23px;
        }
        .auto-style20 {
            width: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
           <td class="auto-style13">
                &nbsp;</td>
           <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
           <td class="auto-style14">
               &nbsp;</td>
           <td class="auto-style6" colspan="3">
               <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0099CC" Text="Login Details"></asp:Label>
            </td>
           <td class="auto-style6">
               &nbsp;</td>
        </tr>
        <tr>
           <td class="auto-style13">
            </td>
           <td class="auto-style8">
            </td>
            <td class="auto-style4">
            </td>
            <td class="auto-style2">
            </td>
            <td class="auto-style2">
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style8">
                </td>
             <td class="auto-style4">
                 <table class="auto-style17">
                     <tr>
                         <td class="auto-style19">
                             &nbsp;</td>
                         <td class="auto-style18">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Username"></asp:Label>
                         </td>
                         <td class="auto-style18">
                <asp:TextBox ID="txtUsername" runat="server" Width="218px"></asp:TextBox>
                         </td>
                         <td class="auto-style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style20">&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style20">
                             &nbsp;</td>
                         <td>
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#0099CC" Text="Password"></asp:Label>
                         </td>
                         <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="217px"></asp:TextBox>
                         </td>
                         <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="Password Cannot be Empty" ForeColor="#0099CC"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style20">&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 </td>
            <td class="auto-style2">
                </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
               &nbsp;</td>
           <td class="auto-style6" colspan="3">
               <asp:Button ID="btnSignin" runat="server" Text="Sign in" Font-Bold="True" OnClick="btnSignin_Click" ForeColor="#0099CC" />
            </td>
           <td class="auto-style6">
               &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8"></td>
            <td class="auto-style4"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
           <td class="auto-style14">
               &nbsp;</td>
           <td class="auto-style6" colspan="3">
                <asp:Label ID="lblDisplay" runat="server" ForeColor="#0099CC"></asp:Label>
            </td>
           <td class="auto-style6">
               &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
               &nbsp;</td>
           <td class="auto-style6" colspan="3">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099CC" Font-Size="Small">New to electronix?</asp:Label>
            </td>
           <td class="auto-style6">
               &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
               &nbsp;</td>
           <td class="auto-style6" colspan="3">
                <asp:Button ID="btnSignup" runat="server" Text="Sign up" Font-Bold="True" ForeColor="#0099CC" CausesValidation="False" OnClick="btnSignup_Click" />
            </td>
           <td class="auto-style6">
               &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
