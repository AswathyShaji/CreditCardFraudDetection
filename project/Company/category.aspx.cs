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
            fillbrand();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_category c,tbl_brand b where c.brand_id=b.brand_id";
        obj.FillGridView(sel, gridcategory);
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
         if (f == 1)
        {
            string up = "update tbl_category set category_name='" + txtcategory.Text + "' where category_id='" + eid + "'";
            obj.ExceuteCommand(up);
            txtcategory.Text = "";
            ddlbrand.ClearSelection();
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string ins = "insert into tbl_category(brand_id,category_name) values('" + ddlbrand.SelectedValue + "','" + txtcategory.Text + "')";
            obj.ExceuteCommand(ins);
            Response.Write("<script>alert('inserted successfully')</script>");
            txtcategory.Text = "";
            ddlbrand.ClearSelection();
            fillgrid();
        }
    }
    protected void gridcategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_category c,tbl_brand b where c.brand_id=b.brand_id and c.category_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            txtcategory.Text = dt.Rows[0]["category_name"].ToString();
            ddlbrand.SelectedValue = dt.Rows[0]["brand_id"].ToString();
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_category where category_id='" + eid + "'";
            obj.ExceuteCommand(del);
            txtcategory.Text = "";
            ddlbrand.ClearSelection();
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }
    public void fillbrand()
    {
        obj.FillDrop(ddlbrand, "brand_name", "brand_id", "tbl_brand");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtcategory.Text = "";
        ddlbrand.ClearSelection();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Home.aspx");
    }
} 