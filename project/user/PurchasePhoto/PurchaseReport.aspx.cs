using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_PurchaseReport : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldet();
        }
    }
    protected void filldet()
    {
        string s = "select * from tbl_purchase_head where uid='" + Session["userid"] + "'";
        obj.FillGridView(s,GridView1);
    }
}