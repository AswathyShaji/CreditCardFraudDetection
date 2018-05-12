<%@ Page Title="" Language="C#" MasterPageFile="~/guest/guestmaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="guest_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 130px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="width: 102px">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: 'Times New Roman', Times, serif; width: 102px;">User Name</td>
            <td colspan="2">
                <asp:TextBox ID="txtusername" runat="server" Width="225px" Font-Bold="True" Font-Names="Times New Roman" Height="24px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter username" Font-Bold="True" Font-Names="Times New Roman"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: 'times New Roman', Times, serif; width: 102px;">Password</td>
            <td colspan="2">
                <asp:TextBox ID="txtpassword" runat="server" Width="225px" Font-Bold="True" Font-Names="Times New Roman" Height="23px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter password" Font-Bold="True" Font-Names="Times New Roman"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 102px">&nbsp;</td>
            <td colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red">Forgot Password??</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 102px">&nbsp;</td>
            <td style="width: 75px">
                <asp:Button ID="butnlogin" runat="server" Text="LOGIN" Font-Bold="True" Font-Names="Times New Roman" Height="26px" OnClick="butnlogin_Click" />
            </td>
            <td style="width: 86px">
                <asp:Button ID="butncancel" runat="server" Text="CANCEL" Font-Bold="True" Font-Names="Times New Roman" OnClick="butncancel_Click" Height="26px" Width="68px" CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 102px">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 102px">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

