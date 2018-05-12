using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Session["accno"] = TextBox1.Text;
            Response.Redirect("Second.aspx");
        }
        else
        {
            Label1.Text = "Please accept the Terms & Conditions";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string sel = "select * from tbl_account_details a,tbl_userregistration u where u.a_cardnumber=a.a_cardnumber and a.a_cardnumber='" + TextBox1.Text + "' and u.uid='" + Session["userid"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            lblvalid.Text ="valid";
        }
        else
        {
            lblvalid.Text = "invalid cardnumber";
            lblvalid.ForeColor = System.Drawing.Color.Red;
        }

       
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}