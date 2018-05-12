using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mail;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for AgriAssist
/// </summary>
public class cls_credit
{
    SqlConnection con = new SqlConnection("Data Source=ASUS-PC;Initial Catalog=db_cdfd;Integrated Security=True");
    public cls_credit()
	{
        con.Open();
	}
    public void ExceuteCommand(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
    }
    public void ExecuteCommand(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
    }
    
    public DataTable selectQuery(string str)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        adp.Fill(dt);
        return dt;
    }
    public void FillGridView(string str, GridView grd)
    {
        DataTable dt = new DataTable();
        dt = selectQuery(str);
        grd.DataSource = dt;
        grd.DataBind();
    }
    public void FillDataList(string str, DataList grd)
    {
        DataTable dt = new DataTable();
        dt = selectQuery(str);
        grd.DataSource = dt;
        grd.DataBind();
    }
    public void fillDDL(DropDownList ddl, string txtField, string valFiled, string str)
    {
        DataTable dt = new DataTable();
        dt = selectQuery(str);
        ddl.DataSource = dt;
        ddl.DataTextField = txtField;
        ddl.DataValueField = valFiled;
        ddl.DataBind();
        ddl.Items.Insert(0, "--select--");
    }


    public void FillGridView(string sel, DetailsView detailsview)
    {
        DataTable dt = new DataTable();
        dt = selectQuery(sel);
        detailsview.DataSource = dt;
        detailsview.DataBind();
        //throw new NotImplementedException();
    }

    public DataTable GetDataTable(string h)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(h, con);
        adp.Fill(dt);
        return dt;
    }
    public void FillDetailsView(string str, DetailsView grd)
    {
        DataTable dt = new DataTable();
        dt = selectQuery(str);
        grd.DataSource = dt;
        grd.DataBind();
    }
    public void FillDrop(DropDownList drop, string display, string valfield, string tbl)
     {
        string str = "select " + display + "," + valfield + " from " + tbl + "";
        DataTable dt1 = GetDataTable(str);
        drop.DataSource = dt1;
        drop.DataTextField = display;
        drop.DataValueField = valfield;
        drop.DataBind();
        drop.Items.Insert(0, "--select--");
    }
    public void FillDrop(DropDownList dd1, string display, string valfield, string tbl, string condition1)
    {
        string str = "select " + display + "," + valfield + " from " + tbl + " where " + condition1 + "";
        DataTable dt1 = new DataTable();
        dt1 = GetDataTable(str);
        dd1.DataSource = dt1;
        dd1.DataTextField = display;
        dd1.DataValueField = valfield;
        dd1.DataBind();
        dd1.Items.Insert(0, "--select--");
    }
    public void FillCheck(CheckBoxList chk, string display, string valfield, string tbl)
    {
        string str = "select " + display + "," + valfield + " from " + tbl + "";
        DataTable dt1 = GetDataTable(str);
        chk.DataSource = dt1;
        chk.DataTextField = display;
        chk.DataValueField = valfield;
        chk.DataBind();
    }
    public void FillCheck(CheckBoxList chk, string display, string valfield, string tbl, string condition1)
    {
        string str = "select " + display + "," + valfield + " from " + tbl + " where " + condition1 + "";
        DataTable dt1 = GetDataTable(str);
        chk.DataSource = dt1;
        chk.DataTextField = display;
        chk.DataValueField = valfield;
        chk.DataBind();
    }

    //public bool SentMail(string strTo, string strFrom, string strSubject, string strBody)
    //{
    //    MailMessage mObj = new MailMessage();
    //    mObj.To.Add(strTo);
    //    mObj.From = new MailAddress(strFrom);
    //    mObj.Subject = strSubject;
    //    mObj.Body = strBody;
    //    SmtpClient objS = new SmtpClient();
    //    try
    //    {
    //        objS.Host = "localhost";
    //        objS.Send(mObj);
    //        return true;
    //    }
    //    catch (Exception)
    //    {

    //        return false;
    //    }


    //}
}