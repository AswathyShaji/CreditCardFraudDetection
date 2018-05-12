using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillstate();
            txtcardnumber.Text = GetISB().ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
    private string GetISB()
    {
        string allowedChars = "";

        // allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string passwordString = "";

        string temp = "";

        Random rand = new Random();
        for (int i = 0; i < 4; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordString += temp;
        }
        return ("M-" + passwordString);

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
        FileUpload1.SaveAs(Server.MapPath("bankimages/" + var));
        string ins = "insert into tbl_account_details(a_fname,a_lname,a_address,a_gender,a_email,a_contact,a_username,a_password,a_question,a_answer,a_image,place_id,a_amount,a_cardnumber) values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtaddress.Text + "','" + rdbtngender.SelectedValue + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + ddlquestion.SelectedValue + "','" + txtanswer.Text + "','" + var + "','" + ddlplace.SelectedValue + "','" + txtamount.Text + "','" + txtcardnumber.Text + "')";
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
        txtamount.Text = "";
        txtcardnumber.Text = "";
        Response.Write("<script>alert('inserted successfully')</script>");
        txtcardnumber.Text = GetISB().ToString();
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
        txtamount.Text = "";
        txtcardnumber.Text = "";
        ddlplace.ClearSelection();
        ddlquestion.ClearSelection();
        ddlstate.ClearSelection();
        ddldistrict.ClearSelection();
        rdbtngender.ClearSelection();
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnchk_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_account_details where a_username='" + txtusername.Text + "'";

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