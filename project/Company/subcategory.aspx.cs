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
            fillbrand();
            fillgrid();
            
        }

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tbl_subcategory set subcategory_name='" + txtsubcategory.Text + "' where subcategory_id='" + eid + "'";
            obj.ExceuteCommand(up);
            txtsubcategory.Text = "";
            ddlbrand.ClearSelection();
            ddlcategory.ClearSelection();
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string ins = "insert into tbl_subcategory(category_id,subcategory_name) values('" + ddlcategory.SelectedValue + "','" + txtsubcategory.Text + "')";
            obj.ExceuteCommand(ins);
            txtsubcategory.Text = "";
            ddlbrand.ClearSelection();
            ddlcategory.ClearSelection();
            Response.Write("<script>alert('inserted successfully')</script>");
            fillgrid();
        }
    }
    protected void gridsubcategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_subcategory s,tbl_category c,tbl_brand b where s.category_id=c.category_id and c.brand_id=b.brand_id and s.subcategory_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            ddlbrand.SelectedValue = dt.Rows[0]["brand_id"].ToString();
            ddlcategory.SelectedValue = dt.Rows[0]["category_id"].ToString();
            txtsubcategory.Text = dt.Rows[0]["subcategory_name"].ToString();
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_subcategory where subcategory_id='" + eid + "'";
            obj.ExceuteCommand(del);
            txtsubcategory.Text = "";
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_subcategory s,tbl_category c,tbl_brand b where s.category_id=c.category_id and c.brand_id=b.brand_id";
        obj.FillGridView(sel, gridsubcategory);
    }
    public void fillcategory()
    {
        obj.FillDrop(ddlcategory, "category_name", "category_id", "tbl_category", "brand_id='" + ddlbrand.SelectedValue + "'");
        
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtsubcategory.Text = "";
        ddlbrand.ClearSelection();
        ddlcategory.ClearSelection();
    }
    protected void ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillcategory();
    }
    public void fillbrand()
    {
        obj.FillDrop(ddlbrand, "brand_name", "brand_id", "tbl_brand");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Home.aspx");
    }
}