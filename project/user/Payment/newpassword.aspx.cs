using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Payment_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Sorry your current transaction have some problem.Check your mail for new password')</script>");
    }
    protected void btnpayment_Click(object sender, EventArgs e)
    {
        string sel1 = "select * from tbl_newpassword where pswd_new='" + txtpassword.Text + "' and a_cardnumber='" + Session["accno"] + "'";
        DataTable dt1 = obj.GetDataTable(sel1);
        if (dt1.Rows.Count > 0)
        {

            string str = "select * from tbl_account_details where a_cardnumber='" + Session["accno"] + "' and a_amount>=" + Session["amount"] + "";
            DataTable dt = obj.GetDataTable(str);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Third.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('incorrect password')</script>");
        }
    }
}