<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.master" AutoEventWireup="true" CodeFile="EditUserProfile.aspx.cs" Inherits="user_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 126px;
        }
        .auto-style7 {
            width: 571px;
        }
        .auto-style3 {
            width: 126px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            width: 571px;
        }
        .auto-style4 {
            height: 23px;
        }
        </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">First Name</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtfname" runat="server" Width="194px" Font-Bold="True" Font-Names="Times New Roman" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtlname" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="23px" Width="198px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtaddress" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="48px" TextMode="MultiLine" OnTextChanged="txtaddress_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">State</td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlstate" runat="server" Height="55px" Width="203px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">District</td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddldistrict" runat="server" Width="201px" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Place</td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlplace" runat="server" Width="203px" Height="31px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Gender</td>
            <td class="auto-style7">
                <asp:RadioButtonList ID="rdbtngender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Contact</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtcontact" runat="server" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="23px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtemail" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="30px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">User Name</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtusername" runat="server" Width="202px" Font-Bold="True" Font-Names="Times New Roman" Height="28px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Photo</td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="25px" Width="210px" />
                <asp:Image ID="Image1" runat="server" Width="75px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="butnedit" runat="server" Text="Save" Font-Bold="True" Font-Names="Times New Roman" Height="31px" OnClick="butnsubmit_Click1" Width="53px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

