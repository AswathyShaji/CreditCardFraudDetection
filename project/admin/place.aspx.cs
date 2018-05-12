using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_Default2 : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static int eid, f;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
            fillstate();
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tbl_place set district_id='"+ddldistrict.SelectedValue+"' ,place_name='" + txtplace.Text + "' where place_id='" + eid + "'";
            obj.ExceuteCommand(up);
            txtplace.Text = "";
            ddlstate.ClearSelection();
            ddldistrict.ClearSelection();
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string ins = "insert into tbl_place(district_id,place_name) values('" + ddldistrict.SelectedValue + "','" + txtplace.Text + "')";
            obj.ExceuteCommand(ins);
            txtplace.Text = "";
            ddlstate.ClearSelection();
            ddldistrict.ClearSelection();
            Response.Write("<script>alert('inserted successfully')</script>");
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_district d,tbl_state s,tbl_place p where s.state_id=d.state_id and p.district_id=d.district_id";
        obj.FillGridView(sel, gridplace);
    }
    public void fillstate()
    {
        obj.FillDrop(ddlstate, "state_name", "state_id", "tbl_state");
    }
    public void filldistrict()
    {
        obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_district", "state_id='" + ddlstate.SelectedValue + "'");

    }
    protected void gridplace_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_district d,tbl_state s,tbl_place p where s.state_id=d.state_id and p.district_id=d.district_id and place_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            txtplace.Text = dt.Rows[0]["place_name"].ToString();
            ddlstate.Text = dt.Rows[0]["state_id"].ToString();
            filldistrict();
            ddldistrict.Text = dt.Rows[0]["district_id"].ToString();
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_place where place_id='" + eid + "'";
            obj.ExceuteCommand(del);
            txtplace.Text = "";
            Response.Write("<script>alert('item deleted')</script>");      
            fillgrid();
        }
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        filldistrict();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
       
    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btncancel_Click1(object sender, EventArgs e)
    {
        txtplace.Text = "";
        ddlstate.ClearSelection();
        ddldistrict.ClearSelection();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}