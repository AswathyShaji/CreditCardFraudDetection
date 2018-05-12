<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.master" AutoEventWireup="true" CodeFile="UserViewProfile.aspx.cs" Inherits="user_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" style="margin-right: 0px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="ufname" HeaderText="First Name" />
                        <asp:BoundField DataField="ulname" HeaderText="Last Name" />
                        <asp:BoundField DataField="uaddress" HeaderText="Address" />
                        <asp:BoundField DataField="state_name" HeaderText="State" />
                        <asp:BoundField DataField="district_name" HeaderText="District" />
                        <asp:BoundField DataField="place_name" HeaderText="Place" />
                        <asp:BoundField DataField="ugender" HeaderText="Gender" />
                        <asp:BoundField DataField="uemail" HeaderText="Email" />
                        <asp:BoundField DataField="ucontact" HeaderText="Contact" />
                        <asp:BoundField DataField="uusername" HeaderText="Username" />
                        <asp:BoundField DataField="uquestion" HeaderText="Security Question" />
                        <asp:BoundField DataField="uanswer" HeaderText="Answer" />
                        <asp:TemplateField>
                            <ItemTemplate>
                               <img src="../guest/userimages/<%#Eval("uimage") %>" width="100" height="100" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

