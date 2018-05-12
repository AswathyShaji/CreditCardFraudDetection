using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class user_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldetails();
        }
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    public void filldetails()
    {
        string sel = "select * from tbl_userregistration u, tbl_district d,tbl_state s,tbl_place p where s.state_id=d.state_id and p.district_id=d.district_id and u.place_id=p.place_id and u.uid='"+Session["userid"]+"'";
        obj.FillDetailsView(sel, DetailsView1);
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/userhome.aspx");
    }
}