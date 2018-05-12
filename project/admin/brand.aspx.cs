using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static int eid, f;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_brand";
        obj.FillGridView(sel, gridbrand);
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tbl_brand set brand_name='" + txtbrand.Text + "' where brand_id='" + eid + "'";
            obj.ExceuteCommand(up);
            txtbrand.Text = "";
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string ins = "insert into tbl_brand(brand_name) values('" + txtbrand.Text + "')";
            obj.ExceuteCommand(ins);
            txtbrand.Text = "";
            Response.Write("<script>alert('inserted successfully')</script>");
            fillgrid();
        }
    }
    protected void gridbrand_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_brand where brand_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            txtbrand.Text = dt.Rows[0]["brand_name"].ToString();
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_brand where brand_id='" + eid + "'";
            obj.ExceuteCommand(del);
            txtbrand.Text = "";
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtbrand.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}