<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="ProfileofUser.aspx.cs" Inherits="admin_Default" %>

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
            <td>Maximum Amount</td>
            <td>
                <asp:TextBox ID="txtmax" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Minimum Amount</td>
            <td>
                <asp:TextBox ID="ttxtmin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Status</td>
            <td>
                <asp:TextBox ID="ttxtst" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnsav" runat="server" OnClick="btnsav_Click" Text="SAVE" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="profile_minamnt" HeaderText="Min Amount" />
                        <asp:BoundField DataField="profile_maxamnt" HeaderText="Max Amount" />
                        <asp:BoundField DataField="profile_status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

