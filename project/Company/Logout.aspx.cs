using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Session.Abandon();

            string nextpage = "../Guest/Login.aspx";
            Response.Write("<script language='javascript'>");
            Response.Write("{");
            Response.Write("var backlen=history.length;");
            Response.Write("history.go(-backlen);");
            Response.Write("window.location.href='" + nextpage + "';");
            Response.Write("}");
            Response.Write("</script>");

        }
    }
}