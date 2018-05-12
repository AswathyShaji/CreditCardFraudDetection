<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Company_EditProfile" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style1 {
            width: 100%;
        }
        .auto-style19 {
        width: 129px;
    }
        .auto-style14 {
            width: 200px;
        }
        .auto-style22 {
        width: 129px;
        height: 23px;
    }
        .auto-style17 {
            width: 200px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style21 {
        height: 26px;
        width: 129px;
    }
        .auto-style16 {
            height: 26px;
            width: 200px;
        }
        .auto-style2 {
            height: 26px;
        }
        </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style19">Company Name</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcname" runat="server" Width="160px" BorderWidth="1px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcname" ErrorMessage="Enter the shop name" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">State</td>
            <td class="auto-style17">
                <asp:DropDownList ID="ddlstate" runat="server" Height="18px" Width="165px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlstate" ErrorMessage="Select a State" InitialValue="..Select.." ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">District</td>
            <td class="auto-style17">
                <asp:DropDownList ID="ddldistrict" runat="server" Height="18px" Width="165px" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddldistrict" ErrorMessage="Select a district" InitialValue="..Select.." ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Place</td>
            <td class="auto-style16">
                <asp:DropDownList ID="ddlplace" runat="server" Height="16px" Width="165px" >
                </asp:DropDownList>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlplace" ErrorMessage="Select a place" InitialValue="..Select.." ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Contact No</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtpno" runat="server" Width="160px" BorderWidth="1px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpno" ErrorMessage="Enter phone number" ValidationExpression="([+][0-9]{10,12})" ValidationGroup="vgroup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Email</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtemail" runat="server"  Width="160px" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter e-mail Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgroup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Address</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtaddress" runat="server" Height="32px" Width="160px" BorderWidth="1px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter address" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Photo</td>
            <td class="auto-style14">
                <asp:FileUpload ID="flupphoto" runat="server" />
                <asp:Image ID="Image1" runat="server" Width="75px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" Width="94px" ValidationGroup="vgroup" BorderWidth="1px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="84px" OnClick="btncancel_Click" BorderWidth="1px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style17">
                <asp:Label ID="lblsub" runat="server"></asp:Label>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" style="height: 26px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

