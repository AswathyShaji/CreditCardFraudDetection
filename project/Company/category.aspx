<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 121px;
        }
        .auto-style4 {
            height: 23px;
            width: 121px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: 'times New Roman', Times, serif; width: 108px;">Brand</td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlbrand" runat="server" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: 'times New Roman', Times, serif; width: 108px;">Category</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcategory" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="28px" Width="126px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Category" ControlToValidate="txtcategory"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="SAVE" OnClick="btnsave_Click" />
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="CANCEL" OnClick="btncancel_Click" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>
                <asp:GridView ID="gridcategory" runat="server" AutoGenerateColumns="False" OnRowCommand="gridcategory_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="brand_name" HeaderText="Brand" />
                        <asp:BoundField DataField="category_name" HeaderText="Category" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("category_id") %>' Font-Bold="True" Font-Names="Times New Roman" Text="EDIT" CommandName="edt" CausesValidation="False" />
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("category_id") %>' Font-Bold="True" Font-Names="Times New Roman" Text="DELETE" CommandName="del" CausesValidation="False" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 108px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

