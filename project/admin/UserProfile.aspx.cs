using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static string pin;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            obj.FillDrop(DropDownList1, "profile_status", "profile_id", "tbl_profile");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel = "select * from tbl_profile p ,tbl_userprofile u,tbl_userregistration r where u.profile_id=p.profile_id and r.uid=u.user_id and p.profile_id='" + DropDownList1.SelectedValue + "'";
        obj.FillGridView(sel, GridView1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}