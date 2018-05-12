<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="subcategory.aspx.cs" Inherits="admin_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 169px;
        }
        .auto-style3 {
            width: 169px;
            height: 34px;
        }
        .auto-style4 {
            height: 34px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Brand</td>
            <td>
                <asp:DropDownList ID="ddlbrand" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlbrand_SelectedIndexChanged" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Category Name</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlcategory" runat="server" Width="126px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Subcategory Name</td>
            <td>
                <asp:TextBox ID="txtsubcategory" runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="24px" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter category" ControlToValidate="txtsubcategory"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="SAVE" OnClick="btnsave_Click" />
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="CANCEL" OnClick="btncancel_Click" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="gridsubcategory" runat="server" AutoGenerateColumns="False" OnRowCommand="gridsubcategory_RowCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="brand_name" HeaderText="Brand" />
                        <asp:BoundField DataField="category_name" HeaderText="Category" />
                        <asp:BoundField DataField="subcategory_name" HeaderText="Subcategory" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("subcategory_id") %>' Font-Bold="True" Font-Names="Times New Roman" Text="EDIT" CommandName="edt" CausesValidation="False" />
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("subcategory_id") %>' Font-Bold="True" Font-Names="Times New Roman" Text="DELETE" CommandName="del" CausesValidation="False" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

