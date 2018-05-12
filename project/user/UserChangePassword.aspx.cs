using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string str = "select * from tbl_userregistration where upassword='" + txtcpwd.Text + "' and uid=" + Session["userid"] + "";
        DataTable dt = obj.GetDataTable(str);
        if (dt.Rows.Count > 0)
        {
            string up = "update tbl_userregistration set upassword='" + txtnpwd.Text + "' where uid=" + Session["userid"] + "";
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
        Response.Redirect("~/user/userhome.aspx");
    }
}