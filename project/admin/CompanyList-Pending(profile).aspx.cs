using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CompanyList_Pending_profile_ : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldet();
        }
    }
    protected void filldet()
    {
        string s = "select * from tbl_state s,tbl_district d,tbl_place p,tbl_company de where s.state_id=d.state_id and p.district_id=d.district_id and de.place_id=p.place_id and de.comp_id='" + Request.QueryString["idno"] + "'";
        obj.FillDetailsView(s, DetailsView1);
    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "dw1")
        {
            string name = e.CommandArgument.ToString();

            Response.AppendHeader("content-disposition", "attachment;comp_proof1=" + name + "");
            Response.TransmitFile(Server.MapPath("~/Guest/proof/" + name));
            Response.End();

        }
        if (e.CommandName == "dw2")
        {
            string name = e.CommandArgument.ToString();

            Response.AppendHeader("content-disposition", "attachment;comp_proof2=" + name + "");
            Response.TransmitFile(Server.MapPath("~/Guest/proof/" + name));
            Response.End();

        }
        if (e.CommandName == "ac")
        {
            string id = e.CommandArgument.ToString();

            string up = "update tbl_company set comp_status=1 where comp_id='" + id + "'";
            obj.ExecuteCommand(up);
            Response.Redirect("CompanyList-Pending.aspx");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/AdminHome.aspx");
    }
}