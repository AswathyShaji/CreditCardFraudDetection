<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="admin_Default" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 238px;
        }
        .auto-style3 {
            width: 238px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            width: 238px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style7 {
            width: 238px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
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
            <td class="auto-style5">Brand Name</td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlbrand" runat="server" Width="79px" AutoPostBack="True" OnSelectedIndexChanged="ddlbrand_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Category</td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Subcategory</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlsubcategory" runat="server" OnSelectedIndexChanged="ddlsubcategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Product Name</td>
            <td>
                <asp:TextBox ID="txtproduct" runat="server" Height="23px" Width="197px" Font-Bold="True" Font-Names="Times New Roman"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter product name" ControlToValidate="txtproduct"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Quantity </td>
            <td>
                <asp:TextBox ID="txtquantity" runat="server" Height="23px" Width="197px" Font-Bold="True" Font-Names="Times New Roman"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter quantity" ControlToValidate="txtquantity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Price</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtprice" runat="server" Height="23px" Width="197px" Font-Bold="True" Font-Names="Times New Roman"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter price" ControlToValidate="txtprice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Image ID="Image1" runat="server" Height="73px" Width="83px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description</td>
            <td>
                <asp:TextBox ID="txtdescription" runat="server" Height="23px" Width="197px" Font-Bold="True" Font-Names="Times New Roman"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtdescription"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="SAVE" OnClick="btnsave_Click" style="height: 25px" />
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
                <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
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
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="edt" Font-Bold="True" Font-Names="Times New Roman" Text="Edit" CausesValidation="False" />
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="del" Font-Bold="True" Font-Names="Times New Roman" Text="Delete" CausesValidation="False" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

