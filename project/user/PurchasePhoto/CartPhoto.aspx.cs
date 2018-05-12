using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_CartPhoto : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    static double total;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            FillCart();
            total = 0;
        }
    }
    private void FillCart()
    {
        DataTable dt = (DataTable)Session["cart"];
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lb = (Label)e.Row.FindControl("lblsub");
            total += Convert.ToDouble(lb.Text);
            lbltotal.Text = total.ToString();
            Session["amount"] = total.ToString();

        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "rmv")
        {
            DataTable dt = (DataTable)Session["cart"];
            int id = (int)Session["cartid"];

            foreach (DataRow rw in dt.Rows)
            {
                if (rw["id"].ToString() == e.CommandArgument.ToString())
                {
                    rw.Delete();
                    id--;

                }
            }
            dt.AcceptChanges();

            Session["cart"] = dt;
            Session["cartid"] = id;
            lbltotal.Text = "0";
            total = 0;
            FillCart();

        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {



    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/ViewProduct.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        string str = "select (u.ufname+' '+u.ulname) as name,* from tbl_userregistration u where u.uid='" + Session["userid"] + "'";
        DataTable dt = obj.GetDataTable(str);
        try
        {
            Session["name"] = dt.Rows[0]["name"].ToString();
            Response.Redirect("~/User/Payment/First.aspx");

        }
        catch (Exception)
        { }
    }
}