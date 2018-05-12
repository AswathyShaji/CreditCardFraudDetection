using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Company_EditProfile : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    static string photo;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldetails();
            
        }
    }
    protected void filldetails()
    {

        string sel = "select * from tbl_company c,tbl_place p,tbl_district d where d.district_id=p.district_id and p.place_id=c.place_id and c.comp_id=" + Session["userid"] + "";
            DataTable dt = obj.GetDataTable(sel);
            txtcname.Text= dt.Rows[0]["comp_name"].ToString();
            txtpno.Text = dt.Rows[0]["comp_phone"].ToString();
            txtemail.Text = dt.Rows[0]["comp_email"].ToString();
            obj.FillDrop(ddlstate, "state_name", "state_id", "tbl_state");
            ddlstate.SelectedValue = dt.Rows[0]["state_id"].ToString();
            obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_district", "state_id=" + ddlstate.SelectedValue + "");
            ddldistrict.SelectedValue = dt.Rows[0]["district_id"].ToString();
            obj.FillDrop(ddlplace, "place_name", "place_id", "tbl_place", "district_id=" + ddldistrict.SelectedValue + "");
            ddlplace.SelectedValue = dt.Rows[0]["place_id"].ToString();
            Image1.ImageUrl = "~/guest/photo/" + dt.Rows[0]["comp_photo"].ToString();

            //photo = dt.Rows[0]["comp_photo"].ToString();
            txtaddress.Text = dt.Rows[0]["comp_address"].ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string fname2 = Path.GetFileName(flupphoto.PostedFile.FileName.ToString());
        if (fname2 != "")
        {
            flupphoto.SaveAs(Server.MapPath("~/guest/photo/" + fname2));
            File.Delete(Server.MapPath("~/guest/photo/" + photo));
            string up = "update tbl_company set comp_name='" + txtcname.Text + "',comp_phone='" + txtpno.Text + "',comp_email='" + txtemail.Text + "',place_id=" + ddlplace.SelectedValue + ",comp_address='" + txtaddress.Text + "',comp_photo='"+fname2+"' where comp_id=" + Session["userid"] + "";
            obj.ExecuteCommand(up);
            Response.Write("<script>alert('updated successfully')</script>");
        }
        else
        {
            string up = "update tbl_company set comp_name='" + txtcname.Text + "',comp_phone='" + txtpno.Text + "',comp_email='" + txtemail.Text + "',place_id=" + ddlplace.SelectedValue + ",comp_address='" + txtaddress.Text + "' where comp_id=" + Session["userid"] + "";
            obj.ExecuteCommand(up);
            Response.Write("<script>alert('updated successfully')</script>");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_district", "state_id=" + ddlstate.SelectedValue + "");
    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj.FillDrop(ddlplace, "place_name", "place_id", "tbl_place", "district_id=" + ddldistrict.SelectedValue + "");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Home.aspx");
    }
}