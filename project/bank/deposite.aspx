<%@ Page Title="" Language="C#" MasterPageFile="~/bank/bankmasterPage.master" AutoEventWireup="true" CodeFile="deposite.aspx.cs" Inherits="bank_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Card Number</td>
            <td>
                <asp:TextBox ID="txtcardnumber" runat="server" Height="28px" Font-Bold="True" Font-Names="Times New Roman" AutoPostBack="True" OnTextChanged="txtcardnumber_TextChanged" Width="181px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name</td>
            <td>
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:Label ID="lbladdress" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">State</td>
            <td>
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">District</td>
            <td>
                <asp:Label ID="lbldistrict" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Place</td>
            <td>
                <asp:Label ID="lblplace" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Contact</td>
            <td>
                <asp:Label ID="lblcontact" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:Label ID="lblemail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Photo</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="73px" Width="83px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Amount</td>
            <td>
                <asp:TextBox ID="txtamount" runat="server" Height="28px" Font-Bold="True" Font-Names="Times New Roman" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnok" runat="server" Height="28px" OnClick="Button1_Click" Text="Ok" Width="38px" Font-Bold="True" Font-Names="Times New Roman" />
                <asp:Button ID="btncancel" runat="server" Height="28px" Text="Cancel" Font-Bold="True" Font-Names="Times New Roman" Width="60px" OnClick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

