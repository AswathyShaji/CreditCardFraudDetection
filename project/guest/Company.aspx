<%@ Page Title="" Language="C#" MasterPageFile="~/guest/guestmaster.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="Guest_Company" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style2 {
            width: 93px;
        }
        .auto-style3 {
            width: 94px;
        }
        .auto-style4 {
            width: 98px;
        }
        .auto-style5 {
            width: 100px;
        }
        .auto-style6 {
            width: 101px;
        }
        .auto-style7 {
            width: 111px;
        }
        .auto-style10 {
            width: 93px;
            height: 37px;
        }
        .auto-style11 {
            width: 111px;
            height: 22px;
        }
        .auto-style12 {
            width: 98px;
            height: 22px;
        }
        .auto-style14 {
            width: 111px;
            height: 20px;
        }
        .auto-style15 {
            width: 98px;
            height: 20px;
        }
        .auto-style17 {
            width: 98px;
            height: 19px;
        }
        .auto-style18 {
            width: 98px;
            height: 16px;
        }
    </style>
   
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="auto-style7" style="width: 137px">Company Name</td>
            <td colspan="2">
                <asp:TextBox ID="txtcname" runat="server" Width="160px" BorderWidth="1px" BorderColor="Black"></asp:TextBox>
            </td>
            <td class="auto-style10" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcname" ErrorMessage="Enter a valid company name" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style7" style="width: 137px">State</td>
            <td class="auto-style4" colspan="2">
                <asp:DropDownList ID="ddlstate" runat="server" BorderColor="Black" Width="165px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" BackColor="White" Height="50px">
                </asp:DropDownList>
            </td>
            <td class="auto-style2" style="width: 396px">
                </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">District</td>
            <td class="auto-style11" colspan="2">
                <asp:DropDownList ID="ddldistrict" runat="server" BorderColor="Black" Height="50px" Width="165px" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" AutoPostBack="True" EnableTheming="True" ForeColor="Black">
                </asp:DropDownList>
            </td>
            <td class="auto-style12" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the district" ControlToValidate="ddldistrict" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">Place</td>
            <td class="auto-style4" colspan="2">
                <asp:DropDownList ID="ddlplace" runat="server" BorderColor="Black" Height="50px" Width="165px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style2" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter the place" ControlToValidate="ddlplace" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">Username</td>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="txtuname" runat="server" BorderColor="Black" Width="160px" BorderWidth="1px"></asp:TextBox>
            </td>
            <td style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the user name" ControlToValidate="txtuname" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                <asp:Button ID="btnchk" runat="server" BorderColor="Black" Text="Check Availability" Width="133px" OnClick="btnchk_Click" style="margin-left: 0px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">Password</td>
            <td class="auto-style4" colspan="2">
                <asp:TextBox ID="txtpwd" runat="server" BorderColor="Black" TextMode="Password" Width="160px" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="auto-style2" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter password" ControlToValidate="txtpwd" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">Retype Password</td>
            <td class="auto-style4" colspan="2">
                <asp:TextBox ID="txtretype" runat="server" BorderColor="Black" OnTextChanged="txtretype_TextChanged" TextMode="Password" Width="160px" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="auto-style2" style="width: 396px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtretype" ErrorMessage="Retype password" ValidationGroup="vgroup"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" rowspan="2" style="width: 137px">Contact No</td>
            <td class="auto-style3" rowspan="2" colspan="2">
                <asp:TextBox ID="txtpno" runat="server" BorderColor="Black" Width="160px" BorderWidth="1px" Height="45px"></asp:TextBox>
            </td>
            <td style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Enter the phone number" ControlToValidate="txtpno" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 396px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpno" ErrorMessage="Phone number is not valid" ValidationExpression="([+][0-9]{10,12})" ValidationGroup="vgroup" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" rowspan="2" style="width: 137px">Email</td>
            <td class="auto-style4" rowspan="2" colspan="2">
                <asp:TextBox ID="txtemail" runat="server" BorderColor="Black" OnTextChanged="TextBox6_TextChanged" Width="160px" BorderWidth="1px" Height="35px"></asp:TextBox>
            </td>
            <td class="auto-style2" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Enter e-mail ID" ControlToValidate="txtemail" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style2" style="width: 396px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email ID is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ValidationGroup="vgroup" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style7" style="width: 137px">Address</td>
            <td class="auto-style14" colspan="2">
                <asp:TextBox ID="txtaddress" runat="server" BorderColor="Black" Height="32px" Width="160px" BorderWidth="1px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style15" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter the address" ControlToValidate="txtaddress" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style7" style="width: 137px">Photo</td>
            <td class="auto-style17" colspan="2">
                <asp:FileUpload ID="flupphoto" runat="server" BorderWidth="0px" BorderColor="Black" />
            </td>
            <td class="auto-style18" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="flupphoto" ErrorMessage="upload photo" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">Company proof1</td>
            <td class="auto-style6" colspan="2">
                <asp:FileUpload ID="proof1" BorderColor="Black" runat="server" BorderWidth="0px" />
&nbsp;</td>
            <td class="auto-style5" style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Upload proof1" ControlToValidate="proof1" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">Company proof2</td>
            <td class="auto-style3" colspan="2">
                <asp:FileUpload ID="proof2" runat="server" BorderWidth="0px" BorderColor="Black" />
            </td>
            <td style="width: 396px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Upload proof2" ControlToValidate="proof2" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">&nbsp;</td>
            <td class="auto-style3" style="width: 35px">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" Width="60px" BorderColor="Black" ValidationGroup="vgroup" BorderWidth="1px" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="60px" OnClick="btncancel_Click" BorderColor="Black" BorderWidth="1px" />
            </td>
            <td style="width: 396px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                &nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px"></td>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="lblsub" runat="server"></asp:Label>
            </td>
            <td class="auto-style12" style="width: 396px"></td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">&nbsp;</td>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">&nbsp;</td>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 137px">&nbsp;</td>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td style="width: 396px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

