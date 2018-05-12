using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Company_ShowProfile : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldet();
        }
    }
    protected void filldet()
    {
        string s = "select * from tbl_state s,tbl_district d,tbl_place p,tbl_company de where s.state_id=d.state_id and p.district_id=d.district_id and de.place_id=p.place_id and de.comp_id='" + Session["userid"] + "'";
        obj.FillDetailsView(s, DetailsView1);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Home.aspx");
    }
}