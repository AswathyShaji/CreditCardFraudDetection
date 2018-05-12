<%@ Page Title="" Language="C#" MasterPageFile="~/guest/guestmaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="guest_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 163px;
            font-weight: 700;
        }
        .auto-style3 {
            width: 163px;
            height: 32px;
            font-weight: 700;
        }
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            width: 163px;
            height: 29px;
            font-weight: 700;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: 'times New Roman', Times, serif">Username</td>
            <td style="width: 147px">
                <asp:TextBox ID="txtusername" runat="server" Height="26px" OnTextChanged="txtusername_TextChanged" Width="146px" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 'times New Roman', Times, serif">&nbsp;</td>
            <td class="auto-style4" style="width: 147px">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-family: 'times New Roman', Times, serif">Phone number</td>
            <td style="width: 147px">
                <asp:TextBox ID="txtanswer" runat="server" Height="23px" Width="146px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtanswer" ErrorMessage="Enter phone number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4" style="width: 147px">
                <asp:Button ID="btncheck" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="33px" OnClick="btncheck_Click" Text="Check" Width="68px" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" style="font-family: 'times New Roman', Times, serif">Password</td>
            <td class="auto-style6" style="width: 147px">
                <asp:Label ID="lblpassword" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

