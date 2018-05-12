using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bank_Default : System.Web.UI.Page
{
     cls_credit obj = new cls_credit();
     public static int depo;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_account_details where a_cardnumber='" + txtcardnumber.Text + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
             depo = Convert.ToInt32( dt.Rows[0]["a_amount"]);
        }
        string ins = "insert into tbl_deposite(a_cardnumber,deposite_date,deposite_amount) values('" + txtcardnumber.Text + "','" + DateTime.Now.ToShortDateString() + "','" + txtamount.Text + "')";
        obj.ExceuteCommand(ins);
        string up = "update tbl_account_details set a_amount= a_amount + " + txtamount.Text + " where a_cardnumber='" + txtcardnumber.Text + "' ";
        obj.ExceuteCommand(up);
        Response.Write("<script>alert('success')</script>");
        txtcardnumber.Text = "";
        txtamount.Text = "";
        lbladdress.Text = "";
        lblcontact.Text = "";
        lbldistrict.Text = "";
        lblemail.Text = "";
        lblname.Text = "";
        lblplace.Text = "";
        lblstate.Text = "";
    
    }
    protected void txtcardnumber_TextChanged(object sender, EventArgs e)
    {
        string sel = "select (a.a_fname+' '+a.a_lname) as name, * from tbl_account_details a,tbl_place p,tbl_district d,tbl_state s where s.state_id=d.state_id and p.district_id=d.district_id and p.place_id=a.place_id and a.a_cardnumber='" + txtcardnumber.Text + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
             lblname.Text = dt.Rows[0]["name"].ToString();
             lbladdress.Text = dt.Rows[0]["a_address"].ToString();
             lblcontact.Text = dt.Rows[0]["a_contact"].ToString();
             lbldistrict.Text = dt.Rows[0]["district_name"].ToString();
             lblstate.Text = dt.Rows[0]["state_name"].ToString();
             lblplace.Text = dt.Rows[0]["place_name"].ToString();
             lblemail.Text = dt.Rows[0]["a_email"].ToString();
            Image1.ImageUrl = "/bank/bankimages/" + dt.Rows[0]["a_image"].ToString();
        }
        else
        {
            Response.Write("<script>alert('incorrect card number')</script>");
        }
       
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtcardnumber.Text = "";
        txtamount.Text = "";
        lbladdress.Text = "";
        lblcontact.Text = "";
        lbldistrict.Text = "";
        lblemail.Text = "";
        lblname.Text = "";
        lblplace.Text = "";
        lblstate.Text = "";
    
    }
}