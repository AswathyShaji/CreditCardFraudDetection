<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="user_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
            font-weight: 700;
        }
        .auto-style3 {
            width: 293px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;&nbsp;Brand&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlbrand" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlbrand_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;
            </td>
            <td style="font-weight: 700" class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; Category&nbsp;&nbsp; <asp:DropDownList ID="ddlcategory" runat="server" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subcategory<asp:DropDownList ID="ddlsubcategory" runat="server">
                </asp:DropDownList>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="btnfilter" runat="server" OnClick="btnfilter_Click" Text="Filter" Width="127px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">
                <asp:MultiView ID="MultiView1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:View ID="View1" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
                                                    <ItemTemplate>
                                                         <img src="../admin/productImages/<%#Eval("product_image") %>" width="100" height="100" />
                                                         <br />
                                                         <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="vm" Text='<%# Eval("product_name") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                                                         <br />
                                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_price") %>'></asp:Label>
                                                         <br />
                                                         <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("product_id") %>' Font-Bold="True" Font-Names="Times New Roman" Text="Order Now" CommandName="on" />
                                                    </ItemTemplate>
                                                </asp:DataList>
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
                                    </table>
                                </asp:View>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:View ID="View2" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                                                    <Fields>
                                                        <asp:BoundField DataField="category_name" HeaderText="Category" />
                                                        <asp:BoundField DataField="subcategory_name" HeaderText="Subcategory" />
                                                        <asp:BoundField DataField="brand_name" HeaderText="Brand" />
                                                        <asp:BoundField DataField="product_name" HeaderText="Product" />
                                                        <asp:BoundField DataField="product_quantity" HeaderText="Quantity" />
                                                        <asp:BoundField DataField="product_price" HeaderText="Price" />
                                                        <asp:BoundField DataField="product_descripion" HeaderText="Description" />
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                
                                                                  <img src="../admin/productImages/<%#Eval("product_image") %>" width="100" height="100" />
                                                                
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Fields>
                                                </asp:DetailsView>
                                                <br />
                                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Previous Page</asp:LinkButton>
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
                                    </table>
                                </asp:View>
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
                    </table>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>

