<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Company_ChangePassword" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 150px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 150px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            width: 218px;
        }
        .auto-style8 {
            height: 24px;
            width: 218px;
        }
        .auto-style9 {
            height: 26px;
            width: 218px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Current Password</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtcpwd" runat="server" Width="155px" BorderWidth="1px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcpwd" ErrorMessage="Enter the current password" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">New Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtnpwd" runat="server" Width="155px" TextMode="Password" BorderWidth="1px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnpwd" ErrorMessage="Enter the new password" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Retype Password</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtrpwd" runat="server" Width="155px" OnTextChanged="txtrpwd_TextChanged" TextMode="Password" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpwd" ControlToValidate="txtrpwd" ErrorMessage="Enter the password again" ValidationGroup="vgroup"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" BorderWidth="1px" ValidationGroup="vgroup" />
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

