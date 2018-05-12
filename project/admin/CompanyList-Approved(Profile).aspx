<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="CompanyList-Approved(Profile).aspx.cs" Inherits="Admin_CompanyList_Approved_Profile_" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 164px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="47px" Width="255px" OnItemCommand="DetailsView1_ItemCommand">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    
                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src="../Guest/photo/<%#Eval("comp_photo")%>" width="75" height="75" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="comp_name" HeaderText="Name" />
                    <asp:BoundField DataField="state_name" HeaderText="State" />
                    <asp:BoundField DataField="district_name" HeaderText="District" />
                    <asp:BoundField DataField="place_name" HeaderText="Place" />
                    <asp:BoundField DataField="comp_phone" HeaderText="Contact" />
                    <asp:BoundField DataField="comp_email" HeaderText="Email" />
                    <asp:BoundField DataField="comp_address" HeaderText="Address" />
                    <asp:TemplateField HeaderText="Proof1">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("comp_proof1") %>' CommandName="dw1" Text="download"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Proof2">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("comp_proof2") %>' CommandName="dw2">download</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Close" CausesValidation="False" />
            </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

