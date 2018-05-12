using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static int eid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sel = "select (u.ufname+' '+u.ulname) as name,u. * from tbl_userregistration u ";
            DataTable dt = obj.GetDataTable(sel);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "uid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
            //obj.FillDrop(DropDownList1, "ufname+' '+ ulname", "uid", "tbl_userregistration");
        }
    }
    public void fillgrid()
    {
        string sel = "select top 10 * from tbl_purchase_head h,tbl_userregistration u where h.uid=u.uid and u.uid='"+DropDownList1.SelectedValue+"' order by h.ph_id desc";
        obj.FillGridView(sel, GridView1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sel1 = "select a_cardnumber from tbl_validamount where a_cardnumber ='" +txtcardnumber.Text+ "'";
        DataTable dt1 = obj.GetDataTable(sel1);
        if (dt1.Rows.Count > 0)
        {
            Response.Write("<script>alert('Already exist')</script>");
        }
        else
        {
            string str7 = "select COUNT(uid) as cid from tbl_purchase_head where uid='" + Session["userid"] + "'";
            DataTable dt7 = obj.GetDataTable(str7);
            if (Convert.ToInt32(dt7.Rows[0]["cid"]) > 10)
            {
                string sel = "select AVG( ph_grandtotal) as avrg from tbl_purchase_head h,tbl_userregistration u where h.uid=u.uid and u.uid='" + DropDownList1.SelectedValue + "'";
                DataTable dt = obj.GetDataTable(sel);
                lblvalidamount.Text = dt.Rows[0]["avrg"].ToString();
                string ins = "insert into tbl_validamount(a_cardnumber,valid_amount) values('" + txtcardnumber.Text + "','" + lblvalidamount.Text + "')";
                obj.ExceuteCommand(ins);


                //string sel1 = "select * from tbl_profile";
                //DataTable dt1 = new DataTable();
                //dt1 = obj.GetDataTable(sel1);
                if (Convert.ToDouble(lblvalidamount.Text) <= 12000)
                {
                    string ins1 = "insert into tbl_userprofile(user_id,profile_id) values('" + DropDownList1.SelectedValue + "','" + 1 + "')";
                    obj.ExceuteCommand(ins1);
                    fill();
                }
                else if (Convert.ToDouble(lblvalidamount.Text) >= 12001 && Convert.ToDouble(lblvalidamount.Text) <= 20000)
                {
                    string ins1 = "insert into tbl_userprofile(user_id,profile_id) values('" + DropDownList1.SelectedValue + "','" + 2 + "')";
                    obj.ExceuteCommand(ins1);
                    fill();
                }
                else if (Convert.ToDouble(lblvalidamount.Text) >= 20001)
                {
                    string ins1 = "insert into tbl_userprofile(user_id,profile_id) values('" + DropDownList1.SelectedValue + "','" + 3 + "')";
                    obj.ExceuteCommand(ins1);
                    fill();
                }
            }
            else
            {
                Response.Write("<script>alert('not possible')</script>");
            }
        }
    }
    protected void txtcardnumber_TextChanged(object sender, EventArgs e)
    {
        
    }
    public void fill()
    {
        string sel1 = "select * from tbl_profile p ,tbl_userprofile u where u.profile_id=p.profile_id and u.user_id='" + DropDownList1.SelectedValue + "'";
        DataTable dt1 = new DataTable();
        dt1 = obj.GetDataTable(sel1);
        lblstatus.Text = dt1.Rows[0]["profile_status"].ToString();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sel = "select * from tbl_userregistration where uid ='" + DropDownList1.SelectedValue+ "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {

            txtcardnumber.Text = dt.Rows[0]["a_cardnumber"].ToString();
            fillgrid();
            //string sel = "select * from tbl_account_details a,tbl_userregistration u where a.a_cardnumber= u.a_cardnumber and a.a_cardnumber='" + txtcardnumber.Text + "'";
            //DataTable dt = obj.GetDataTable(sel);
            //if (dt.Rows.Count > 0)
            //{
            //    // lblname.Text = dt.Rows[0]["a_fname"].ToString();
            //    eid = Convert.ToInt32(dt.Rows[0]["uid"]);
            //    fillgrid();
            //}
            //else
            //{
            //    Response.Write("<script>alert('incorrect card number')</script>");
            //}
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}