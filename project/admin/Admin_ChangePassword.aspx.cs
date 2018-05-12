using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string str = "select * from tbl_admin where ad_pswd='" + txtcpwd.Text + "' and admin_id=" + Session["userid"] + "";
        DataTable dt = obj.GetDataTable(str);
        if (dt.Rows.Count > 0)
        {
            string up = "update tbl_admin set ad_pswd='" + txtnpwd.Text + "' where admin_id=" + Session["userid"] + "";
            obj.ExceuteCommand(up);
            lblmessage.Text = "Password Changed...";
        }
        else
        {
            lblmessage.Text = "Invalid Entry...";
        }
    }
    protected void txtcpwd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}