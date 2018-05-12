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
        if (!IsPostBack)
        {
            string sel = "select * from tbl_profile";
            obj.FillGridView(sel, GridView1);
        }

    }
    protected void btnsav_Click(object sender, EventArgs e)
    {
        string ins="insert into tbl_profile (profile_minamnt,profile_maxamnt,profile_status) values('"+ttxtmin.Text+"','"+txtmax.Text+"','"+ttxtst.Text+"')";
            obj.ExceuteCommand(ins);
            string sel = "select * from tbl_profile";
            Response.Write("<script>alert('Inserted successfully')</script>");
            obj.FillGridView(sel, GridView1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}