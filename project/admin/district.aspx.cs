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
            fillstate();
        }

    }
    protected void butnsave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tbl_district set district_name='" + txtdistrict.Text + "' where district_id='" + eid + "'";
            obj.ExceuteCommand(up);
            txtdistrict.Text = "";
            ddlstate.ClearSelection();
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string ins = "insert into tbl_district(state_id,district_name) values('" + ddlstate.SelectedValue + "','" + txtdistrict.Text + "')";
            obj.ExceuteCommand(ins);
            txtdistrict.Text = "";
            ddlstate.ClearSelection();
            Response.Write("<script>alert('inserted successfully')</script>");
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_district d,tbl_state s where d.state_id=s.state_id";
        obj.FillGridView(sel, griddistrict);
    }
    public void fillstate()
    {
        obj.FillDrop(ddlstate, "state_name", "state_id", "tbl_state");
    }

    protected void griddistrict_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_district d,tbl_state s where d.state_id=s.state_id and district_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            txtdistrict.Text = dt.Rows[0]["district_name"].ToString();
            ddlstate.Text = dt.Rows[0]["state_id"].ToString();
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_district where district_id='" + eid + "'";
            obj.ExceuteCommand(del);
            txtdistrict.Text = "";
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }
    protected void butncancel_Click(object sender, EventArgs e)
    {
        txtdistrict.Text = "";
        ddlstate.ClearSelection();
    }

    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}