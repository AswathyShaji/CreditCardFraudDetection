using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static int eid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldet();
        }
    }
    protected void filldet()
    {
        string s = "select * from tbl_purchase_head p,tbl_userregistration u where p.uid=u.uid ";
        obj.FillGridView(s, GridView1);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "no")
        {
            Response.Redirect("~/admin/purchasedetails.aspx?idno='" + eid + "'");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}