using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class guest_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void butncancel_Click(object sender, EventArgs e)
    {
        txtpassword.Text = "";
        txtusername.Text = "";
    }
    protected void butnlogin_Click(object sender, EventArgs e)
    {
        string sel1 = "select * from tbl_admin where ad_uname='" + txtusername.Text + "' and ad_pswd='" + txtpassword.Text + "'";
        DataTable dt1 = obj.GetDataTable(sel1);

        string sel = "select * from tbl_userregistration where uusername='" + txtusername.Text + "' and upassword='" + txtpassword.Text + "'";
        DataTable dt = obj.GetDataTable(sel);


        string sel2 = "select * from tbl_company where comp_username='" + txtusername.Text + "' and comp_password='" + txtpassword.Text + "' and comp_status='1'";
        DataTable dt2 = obj.GetDataTable(sel2);

        if (dt1.Rows.Count > 0)
        {
            Session["userid"] = dt1.Rows[0]["admin_id"].ToString();
            Response.Redirect("~/admin/AdminHome.aspx");
        }
       
        else if (dt.Rows.Count > 0)
        {

            Session["userid"] = dt.Rows[0]["uid"].ToString();
            Session["name"] = dt.Rows[0]["ufname"].ToString();
            Session["username"] = txtusername.Text;

            DataTable dtCart = new DataTable();
            DataColumn clm = new DataColumn("id", typeof(Int32));
            dtCart.Columns.Add(clm);
            clm = new DataColumn("filename", typeof(string));
            dtCart.Columns.Add(clm);
            clm = new DataColumn("album", typeof(string));
            dtCart.Columns.Add(clm);
            clm = new DataColumn("album_id", typeof(Int32));
            dtCart.Columns.Add(clm);
            clm = new DataColumn("qty", typeof(Int32));
            dtCart.Columns.Add(clm);
            clm = new DataColumn("unitprice", typeof(double));
            dtCart.Columns.Add(clm);
            clm = new DataColumn("total", typeof(double));
            dtCart.Columns.Add(clm);
            clm = new DataColumn("company", typeof(string));
            dtCart.Columns.Add(clm);
            dtCart.AcceptChanges();

            Session["cartid"] = 0;
            Session["cart"] = dtCart;
            Response.Redirect("~/user/userhome.aspx");
        }

        else if (dt2.Rows.Count > 0)
        {
            Session["userid"] = dt2.Rows[0]["comp_id"].ToString();
            Response.Redirect("~/Company/Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid username or password')</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/guest/ForgotPassword.aspx");
    }
}