<%@ Page Title="" Language="C#" MasterPageFile="~/bank/bankmasterPage.master" AutoEventWireup="true" CodeFile="accountDetails.aspx.cs" Inherits="user_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 314px;
            margin-bottom: 6px;
        }
        .auto-style3 {
            width: 214px;
            height: 20px;
            font-weight: 700;
        }
        .auto-style4 {
            height: 20px;
            width: 947px;
        }
        .auto-style9 {
            width: 947px;
        }
        .auto-style14 {
            width: 214px;
        }
        .auto-style16 {
            width: 214px;
            height: 29px;
        }
        .auto-style17 {
            height: 29px;
            width: 947px;
        }
    *{color:#000!important;text-shadow:none!important;background:transparent!important;box-shadow:none!important}
        .auto-style18 {
            width: 214px;
            height: 40px;
        }
        .auto-style19 {
            height: 40px;
            width: 947px;
        }
        .auto-style20 {
            width: 208px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style18">First Name</td>
            <td class="auto-style19" colspan="2">
                <asp:TextBox ID="txtfname" runat="server" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="23px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter first name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Last Name</td>
            <td class="auto-style17" colspan="2">
                <asp:TextBox ID="txtlname" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="23px" Width="197px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter last name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Address</td>
            <td class="auto-style9" colspan="2">
                <asp:TextBox ID="txtaddress" runat="server" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Height="48px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">State</td>
            <td class="auto-style9" colspan="2">
                <asp:DropDownList ID="ddlstate" runat="server" Height="55px" Width="203px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">District</td>
            <td class="auto-style9" colspan="2">
                <asp:DropDownList ID="ddldistrict" runat="server" Width="201px" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the district" ControlToValidate="ddldistrict"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Place</td>
            <td class="auto-style9" colspan="2">
                <asp:DropDownList ID="ddlplace" runat="server" Width="201px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Enter the place" ControlToValidate="ddlplace"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Gender</td>
            <td class="auto-style20">
                <asp:RadioButtonList ID="rdbtngender" runat="server" RepeatDirection="Horizontal" Height="31px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            &nbsp;</td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="rdbtngender" ErrorMessage="Enter Gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" rowspan="2">Contact</td>
            <td class="auto-style20" rowspan="2">
                <asp:TextBox ID="txtcontact" runat="server" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Phone number is not valid" ValidationExpression="([+][0-9]{10,12})" ValidationGroup="vgroup" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Enter the phone number" ControlToValidate="txtcontact"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" rowspan="2">Email</td>
            <td class="auto-style20" rowspan="2">
                <asp:TextBox ID="txtemail" runat="server" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="30px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email ID is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ValidationGroup="vgroup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Enter e-mail ID" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Username</td>
            <td class="auto-style9" colspan="2">
                <asp:TextBox ID="txtusername" runat="server" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="23px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style9" colspan="2">
                <asp:Button ID="btnchk" runat="server" BorderColor="Black" Text="Check Availability" Width="120px" OnClick="btnchk_Click" style="margin-left: 0px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style9" colspan="2">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Password</td>
            <td class="auto-style9" colspan="2">
                <asp:TextBox ID="txtpassword" runat="server" OnTextChanged="TextBox6_TextChanged" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="23px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Confirm password</td>
            <td class="auto-style9" colspan="2">
                <asp:TextBox ID="txtcnfrmpassword" runat="server" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="23px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcnfrmpassword" ErrorMessage="Retype password" ValidationGroup="vgroup"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Securiy question</td>
            <td class="auto-style9" colspan="2">
                <asp:DropDownList ID="ddlquestion" runat="server" Width="202px">
                    <asp:ListItem>What was the name of your first primary school?</asp:ListItem>
                    <asp:ListItem>What is your pets name?</asp:ListItem>
                    <asp:ListItem>What is your favourite colour?</asp:ListItem>
                    <asp:ListItem>What was your first phone number?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Answer</td>
            <td class="auto-style9" colspan="2">
                <asp:TextBox ID="txtanswer" runat="server" Width="197px" Font-Bold="True" Font-Names="Times New Roman" Height="23px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtanswer" ErrorMessage="Enter answer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Photo</td>
            <td class="auto-style9" colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="25px" Width="210px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="FileUpload1" ErrorMessage="upload photo" ValidationGroup="vgroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Card Number</td>
            <td class="auto-style9" colspan="2">
                <asp:TextBox ID="txtcardnumber" runat="server" Height="23px" Width="197px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Amount</td>
            <td class="auto-style9" colspan="2">
                <asp:TextBox ID="txtamount" runat="server" Height="23px" Width="197px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtanswer" ErrorMessage="Enter amount"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style9" colspan="2">
                <asp:Button ID="butnsubmit" runat="server" Text="Save" Font-Bold="True" Font-Names="Times New Roman" Height="29px" OnClick="butnsubmit_Click1" />
                <asp:Button ID="butncancel" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Times New Roman" Height="30px" Width="64px" OnClick="butncancel_Click" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style9" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style9" colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

