using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class user_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static int eid, f;
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
            obj.FillDrop(ddlstate, "state_name", "state_id", "tbl_state"); 
            filldata();
        }     
    }
    protected void txtaddress_TextChanged(object sender, EventArgs e)
    {

    }
    public void filldata()
    {
        string sel = "select * from tbl_userregistration u, tbl_district d,tbl_state s,tbl_place p where s.state_id=d.state_id and p.district_id=d.district_id and u.place_id=p.place_id and u.uid='" + Session["userid"] + "'";
            DataTable dt = obj.GetDataTable(sel);
            txtfname.Text = dt.Rows[0]["ufname"].ToString();
            txtlname.Text = dt.Rows[0]["ulname"].ToString();
            txtaddress.Text = dt.Rows[0]["uaddress"].ToString();
            rdbtngender.SelectedValue = dt.Rows[0]["ugender"].ToString();
            txtemail.Text = dt.Rows[0]["uemail"].ToString();
            txtcontact.Text = dt.Rows[0]["ucontact"].ToString();
            txtusername.Text = dt.Rows[0]["uusername"].ToString();
            ddlstate.SelectedValue = dt.Rows[0]["state_id"].ToString();
            obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_district", "state_id='" + ddlstate.SelectedValue + "'");
            ddldistrict.SelectedValue = dt.Rows[0]["district_id"].ToString();
            obj.FillDrop(ddlplace, "place_name", "place_id", "tbl_place", "district_id='" + ddldistrict.SelectedValue + "'");
            ddlplace.SelectedValue = dt.Rows[0]["place_id"].ToString();
            Image1.ImageUrl = "~/guest/userimages/" + dt.Rows[0]["uimage"].ToString();
            
        }
    protected void butnsubmit_Click1(object sender, EventArgs e)
    {
        string var = Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());
        if (var != "")
        {
            FileUpload1.SaveAs(Server.MapPath("/guest/userimages/" + var));
            string up = "update tbl_userregistration set ufname='" + txtfname.Text + "' ,ulname='" + txtlname.Text + "',uaddress='" + txtaddress.Text + "',ugender='" + rdbtngender.SelectedValue + "',uemail='" + txtemail.Text + "',ucontact='" + txtcontact.Text + "',uusername='" + txtusername.Text + "',place_id='" + ddlplace.SelectedValue + "',uimage='"+var+"' where uid='" + Session["userid"] + "'";
            obj.ExceuteCommand(up);
            Response.Write("<script>alert('updated successfully')</script>");
            Response.Redirect("~/user/userhome.aspx");
        }
        else
        {
            string up = "update tbl_userregistration set ufname='" + txtfname.Text + "' ,ulname='" + txtlname.Text + "',uaddress='" + txtaddress.Text + "',ugender='" + rdbtngender.SelectedValue + "',uemail='" + txtemail.Text + "',ucontact='" + txtcontact.Text + "',uusername='" + txtusername.Text + "',place_id='" + ddlplace.SelectedValue + "' where uid='" + Session["userid"] + "'";
            obj.ExceuteCommand(up);
        }
        txtfname.Text = "";
        txtlname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtusername.Text = "";
        ddlstate.ClearSelection();
        ddldistrict.ClearSelection();
        rdbtngender.ClearSelection();
        Response.Write("<script>alert('updated successfully')</script>");
        Response.Redirect("~/user/userhome.aspx");
    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj.FillDrop(ddlplace, "place_name", "place_id", "tbl_place", "district_id='" + ddldistrict.SelectedValue + "'");
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_district", "state_id='" + ddlstate.SelectedValue + "'");
    }
} 
        