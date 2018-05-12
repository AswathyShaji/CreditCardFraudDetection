using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Company_ChangePassword : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string str = "select * from tbl_company where comp_password='"+txtcpwd.Text+"' and comp_id=" + Session["userid"] + "";
        DataTable dt = obj.GetDataTable(str);
        if (dt.Rows.Count > 0)
        {
            string up = "update tbl_company set comp_password='" + txtnpwd.Text + "' where comp_id=" + Session["userid"] + "";
            obj.ExecuteCommand(up);
            lblmessage.Text = "Password Changed...";
        }
        else
        {
            lblmessage.Text = "Invalid Entry...";
        }

    }
    protected void txtrpwd_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Home.aspx");
    }
}