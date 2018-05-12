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
        string sel = "select * from tbl_state";
        obj.FillGridView(sel, gridstate);
    }
    protected void butnsave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tbl_state set state_name='" + txtstate.Text + "' where state_id='" + eid + "'";
            obj.ExceuteCommand(up);
            txtstate.Text = "";
            Response.Write("<script>alert('updated successfully')</script>");
            fillgrid();
            f = 0;
        }
        else
        {
            string ins = "insert into tbl_state(state_name) values('" + txtstate.Text + "')";
            obj.ExceuteCommand(ins);
            txtstate.Text = "";
            Response.Write("<script>alert('inserted successfully')</script>");
            fillgrid();
        }
    }
    protected void butncancel_Click(object sender, EventArgs e)
    {
        txtstate.Text = "";
    }
    protected void gridstate_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_state where state_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            txtstate.Text = dt.Rows[0]["state_name"].ToString();
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_state where state_id='" + eid + "'";
            obj.ExceuteCommand(del);
            txtstate.Text = "";
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }


    protected void gridstate_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}