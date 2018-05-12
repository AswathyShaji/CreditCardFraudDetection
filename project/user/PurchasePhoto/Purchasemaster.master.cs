using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_Purchasemaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int idc = (int)Session["cartid"];
        if (idc > 0)
        {
            lblCount.Text = "(" + idc.ToString() + ")";
        }
        else
        {
            lblCount.Text = "";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/user/ViewProduct.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Response.Redirect("CartPhoto.aspx");

    }
    protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
