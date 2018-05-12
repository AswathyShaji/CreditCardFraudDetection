using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class Guest_Company : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            obj.FillDrop(ddlstate, "state_name", "state_id", "tbl_state");
            
        }
    }
    
    protected void clearform()
    {

        txtcname.Text = "";
        txtuname.Text = "";
        txtpwd.Text = "";
        txtretype.Text = "";
        txtpno.Text = "";
        txtemail.Text = "";
        ddldistrict.ClearSelection();
        ddlplace.ClearSelection();
        ddlstate.ClearSelection();
        txtaddress.Text = "";
       
       
        lblmsg.Text = "";
        lblsub.Text = "";

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnchk_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_company where comp_username='" + txtuname.Text + "'";

        DataTable dt = new DataTable();
        dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            lblmsg.Text = "username already exist";
            txtuname.Text = "";
        }
        else
        {
            lblmsg.Text = "username available";

        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //lblretype.Text = "";
       
        lblmsg.Text = "";
        lblsub.Text = "";
        string fname = Path.GetFileName(proof1.PostedFile.FileName.ToString());
        proof1.SaveAs(Server.MapPath("proof/" + fname));
        string fname1 = Path.GetFileName(proof2.PostedFile.FileName.ToString());
        proof2.SaveAs(Server.MapPath("proof/" + fname1));
        string fname2 = Path.GetFileName(flupphoto.PostedFile.FileName.ToString());
        flupphoto.SaveAs(Server.MapPath("photo/" + fname2));
        string ins = "insert into tbl_company(comp_name,comp_username,comp_password,comp_phone,comp_email,place_id,comp_address,comp_proof1,comp_proof2,comp_status,comp_photo) values('" + txtcname.Text + "','" + txtuname.Text + "','" + txtpwd.Text + "','" + txtpno.Text + "','" + txtemail.Text + "'," + ddlplace.SelectedValue + ",'" + txtaddress.Text + "','" + fname + "','" + fname1 + "',0,'" + fname2 + "')";
        obj.ExecuteCommand(ins);
        Response.Write("<script>alert('Inserted sucessfully')</script>");

        clearform();
        
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clearform();
       
    }
    //protected void txtretype_TextChanged(object sender, EventArgs e)
    //{
    //    //if (txtretype.Text != txtpwd.Text)
    //    //{
    //    //    lblretype.Text = "password does not match please retype";
    //    //}
    //}
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj.FillDrop(ddlplace, "place_name", "place_id", "tbl_place", "district_id=" + ddldistrict.SelectedValue + "");
    }
    protected void txtretype_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_district", "state_id=" + ddlstate.SelectedValue + "");
    }
}