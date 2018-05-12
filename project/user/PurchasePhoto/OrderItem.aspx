<%@ Page Title="" Language="C#" MasterPageFile="~/User/PurchasePhoto/Purchasemaster.master" AutoEventWireup="true" CodeFile="OrderItem.aspx.cs" Inherits="User_PurchasePhoto_OrderItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>Cart</legend>
        <br />
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <table border="3" class="auto-style1">
                        <tr>
                            <td colspan="4" style="text-align: center; font-weight: 700; ">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: 700; width: 249px">Item</td>
                            <td style="font-weight: 700; text-align: center; width: 121px;">Quantity</td>
                            <td style="text-align: center; width: 109px;"><b>Unit Price</b></td>
                            <td style="text-align: center"><b>Total</b></td>
                        </tr>
                        <tr>
                            <td style="width: 249px">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="width: 92px">
                                            <asp:Image ID="Image1" runat="server" Height="88px" Width="92px" />
                                        </td>
                                        <td style="vertical-align:top;">
                                            <asp:Label ID="lblProduct" runat="server" style="font-size: large; font-weight: 700; text-decoration: underline;"></asp:Label>
                                            <br />
                                            <br />
                                            <asp:Label ID="lbldesc" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="vertical-align:middle; text-align: center; width: 121px;">
                                <asp:TextBox ID="txtCat" runat="server" AutoPostBack="True" Height="26px" OnTextChanged="txtCat_TextChanged" style="font-size: large; text-align: center" Width="79px">1</asp:TextBox>
                            </td>
                            <td style="vertical-align:middle; text-align: center; width: 109px; font-weight: 700;">
                                <img alt="" src="Cart_Icons/Indian_Rupee_symbol.png" style="width: 14px; height: 16px" /><asp:Label ID="lblUnit" runat="server" style="font-size: large; font-weight: 700;"></asp:Label>
                                /-</td>
                            <td style="vertical-align:middle; text-align: center; font-weight: 700;">
                                <img alt="" src="Cart_Icons/Indian_Rupee_symbol.png" style="width: 14px; height: 16px" /><asp:Label ID="lblTot" runat="server" style="font-size: large; font-weight: 700;"></asp:Label>
                                <span style="font-weight: normal"><strong>/-</strong></span></td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: right;">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="text-align: left">Category :
                                            <asp:Label ID="lblCat" runat="server" style="font-weight: 700"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Place Order" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </fieldset> 
</asp:Content>

