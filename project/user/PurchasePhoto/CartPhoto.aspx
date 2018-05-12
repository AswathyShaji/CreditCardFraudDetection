<%@ Page Title="" Language="C#" MasterPageFile="~/User/PurchasePhoto/Purchasemaster.master" AutoEventWireup="true" CodeFile="CartPhoto.aspx.cs" Inherits="User_PurchasePhoto_CartPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>Cart</legend>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" style="text-align: center" Width="729px">
                        <Columns>
                            <asp:TemplateField HeaderText="Item">
                                <ItemTemplate>
                                    <table class="auto-style1">
                                        <tr>
                                            <td style="width: 92px">
                                                <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("filename") %>' Width="50px" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" style="font-size: large" Text='<%# Eval("album") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle Width="400px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" style="font-size: large" Text='<%# Eval("qty") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Unit Price">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("unitprice") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sub Total">
                                <ItemTemplate>
                                    <asp:Label ID="lblsub" runat="server" style="font-size: large" Text='<%# Eval("total") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="rmv" Font-Underline="False" ForeColor="White" style="color: #FFFFFF"><img alt="" src="Cart_Icons/1392060524_shopping-cart-remove.png" style="width: 42px; height: 41px" /></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="100px" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <span style="color: #FF3300"><strong>Cart is emptyCart is empty</strong></span>
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="padding: inherit;">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <table class="auto-style1">
                                    <tr>
                                        <td colspan="2">
                                            <table class="auto-style1">
                                                <tr>
                                                    <td style="width: 582px; font-weight: 700; font-size: large; text-align: right; height: 51px;">Total Amount to Pay : </td>
                                                    <td style="height: 51px">
                                                        <img alt="" src="Cart_Icons/Indian_Rupee_symbol.png" style="width: 16px; height: 17px" /><asp:Label ID="lbltotal" runat="server" style="font-weight: 700; font-size: x-large"></asp:Label>
                                                        <strong>/-</strong></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="LinkButton2" runat="server" Height="29px" OnClick="LinkButton2_Click" Width="156px"><img height="35px" src="Cart_Icons/button_continue_shopping.png" width="150px" /></asp:LinkButton>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><img height="35px" src="Cart_Icons/checkout_icon.gif" width="150px" /></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    </fieldset> 
</asp:Content>

