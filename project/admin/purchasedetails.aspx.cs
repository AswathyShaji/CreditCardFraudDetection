using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!Page.IsPostBack)
        {
            filldetails();
        }
    }
    protected void filldetails()
    {
        string s = "select * from tbl_purchase_head h, tbl_purchase_details d, tbl_product p where h.ph_id=d.ph_id and d.product_id=p.product_id and h.ph_id=" + Request.QueryString["idno"] + "";
        obj.FillGridView(s, GridView1);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}
    
