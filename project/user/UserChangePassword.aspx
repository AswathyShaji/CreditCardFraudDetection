<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.master" AutoEventWireup="true" CodeFile="UserChangePassword.aspx.cs" Inherits="user_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Current Password</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtcpwd" runat="server" BorderWidth="1px" OnTextChanged="txtcpwd_TextChanged" TextMode="Password" Width="155px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcpwd" ErrorMessage="Enter the current password " ValidationGroup="vgroup"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">New Password</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtnpwd" runat="server" BorderWidth="1px" TextMode="Password" Width="155px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnpwd" ErrorMessage="Enter the new password" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Retype Password</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtrpwd" runat="server" BorderWidth="1px" TextMode="Password" Width="155px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpwd" ControlToValidate="txtrpwd" ErrorMessage="Retype  password" ValidationGroup="vgroup"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">
            <asp:Button ID="btnupdate" runat="server" BorderWidth="1px" OnClick="btnupdate_Click" Text="Update" ValidationGroup="vgroup" />
            <asp:Label ID="lblmessage" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

