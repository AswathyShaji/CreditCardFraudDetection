using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class guest_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncheck_Click(object sender, EventArgs e)
    {
        //string sel = "select * from tbl_userregistration where uusername='" + txtusername.Text + "' and uquestion='" + lblsecurityquestion.Text + "' and uanswer='"+txtanswer.Text+"'";
        //DataTable dt = obj.GetDataTable(sel);

        //if (dt.Rows.Count > 0)
        //{
        //    lblpassword.Text = dt.Rows[0]["upassword"].ToString();

        //}
        //else
        //{
        //    Response.Write("<script>alert('invalid user')</script>");
        //}
        string sel = "select * from tbl_userregistration where uusername='" + txtusername.Text + "' and ucontact='" + txtanswer.Text + "'";
        DataTable dt = obj.GetDataTable(sel);

        string sel2 = "select * from tbl_company where comp_username='" + txtusername.Text + "' and comp_phone='" + txtanswer.Text + "'";
        DataTable dt2 = obj.GetDataTable(sel2);

        if (dt.Rows.Count > 0)
        {
            lblpassword.Text = dt.Rows[0]["upassword"].ToString();

        }
        else if (dt2.Rows.Count > 0)
        {
            lblpassword.Text = dt2.Rows[0]["comp_password"].ToString();

        }
        else
        {
            Response.Write("<script>alert('invalid user')</script>");
        }
    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
    //    string sel = "select * from tbl_userregistration where uusername='" + txtusername.Text + "'";
    //    DataTable dt = obj.GetDataTable(sel);
       
    //    if (dt.Rows.Count > 0)
    //    {
    //        lblsecurityquestion.Text = dt.Rows[0]["uquestion"].ToString();
            
    //    }
    //    else
    //    {
    //        lblsecurityquestion.Text = "invalid username";
    //    }
    }

}