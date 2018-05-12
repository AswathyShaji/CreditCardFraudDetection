using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class guest_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillstate();
        }     
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void butnsubmit_Click(object sender, EventArgs e)
    {

    }
    public void fillstate()
    {
        obj.FillDrop(ddlstate, "state_name", "state_id", "tbl_state");
    }
    public void filldistrict()
    {
        obj.FillDrop(ddldistrict, "district_name", "district_id", "tbl_district", "state_id='" + ddlstate.SelectedValue + "'");
    }
    public void fillplace()
    {
        obj.FillDrop(ddlplace, "place_name", "place_id", "tbl_place", "district_id='" + ddldistrict.SelectedValue + "'");
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        filldistrict();
    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillplace();
    }
    protected void butnsubmit_Click1(object sender, EventArgs e)
    {
        string var = Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());
        FileUpload1.SaveAs(Server.MapPath("~/guest/userimages/" + var));
        string ins = "insert into tbl_userregistration(ufname,ulname,uaddress,ugender,uemail,ucontact,uusername,upassword,uquestion,uanswer,uimage,place_id,a_cardnumber) values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtaddress.Text + "','" + rdbtngender.SelectedValue + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + ddlquestion.SelectedValue + "','" + txtanswer.Text + "','" + var + "','" + ddlplace.SelectedValue + "','" + txtaccno.Text + "')";
        obj.ExceuteCommand(ins);
        txtfname.Text = "";
        txtlname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtanswer.Text = "";
        txtcnfrmpassword.Text = "";
        ddlplace.ClearSelection();
        ddlquestion.ClearSelection();
        ddlstate.ClearSelection();
        ddldistrict.ClearSelection();
        rdbtngender.ClearSelection();
        txtaccno.Text = "";
        Response.Write("<script>alert('Inserted sucessfully')</script>");
    }
    protected void butncancel_Click(object sender, EventArgs e)
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtanswer.Text = "";
        txtcnfrmpassword.Text = "";
        ddlplace.ClearSelection();
        ddlquestion.ClearSelection();
        ddlstate.ClearSelection();
        ddldistrict.ClearSelection();
        rdbtngender.ClearSelection();
        txtaccno.Text = "";
        lblcard.Text = "";
    }
    protected void txtaccno_TextChanged(object sender, EventArgs e)
    {
        string sel = "select * from tbl_account_details where a_cardnumber='" + txtaccno.Text + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            lblcard.Text = "";
        }
        else
        {
            lblcard.Text="invalid card number";
            
        }
       
    }
    protected void btnchk_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_userregistration where uusername='" + txtusername.Text + "'";

        DataTable dt = new DataTable();
        dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            lblmsg.Text = "username already exist";
            txtusername.Text = "";
        }
        else
        {
            lblmsg.Text = "username available";

        }
    }
}