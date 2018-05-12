<%@ Page Title="" Language="C#" MasterPageFile="~/user/Payment/Payment.master" AutoEventWireup="true" CodeFile="newpassword.aspx.cs" Inherits="user_Payment_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 164px;
        }
        .auto-style19 {
            width: 164px;
            height: 26px;
        }
        .auto-style20 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="width: 32%">
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">Enter New Password</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter new password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                <asp:Button ID="btnpayment" runat="server" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnpayment_Click" Text="Make Payment" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

