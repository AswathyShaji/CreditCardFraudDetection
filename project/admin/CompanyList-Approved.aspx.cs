using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CompanyList_Approved : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldet();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "vm")
        {
            int idno = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("CompanyList-Approved(Profile).aspx?idno=" + idno + "");
        }
    }
    protected void filldet()
    {
        string s = "select * from tbl_company where comp_status=1";
        obj.FillGridView(s, GridView1);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}