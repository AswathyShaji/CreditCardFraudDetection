using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class user_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static int eid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            fillbrand();
        }
    }
   
    public void fillsubcategory()
    {
        obj.FillDrop(ddlsubcategory, "subcategory_name", "subcategory_id", "tbl_subcategory", "category_id='"+ddlcategory.SelectedValue+"'");
    }
    public void fillbrand()
    {
        obj.FillDrop(ddlbrand, "brand_name", "brand_id", "tbl_brand");
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillsubcategory();
    }
    protected void btnfilter_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    
        string sel = "select * from tbl_product p, tbl_category c,tbl_subcategory s,tbl_brand b where p.brand_id=b.brand_id and p.subcategory_id=s.subcategory_id and c.category_id=s.category_id and b.brand_id='"+ddlbrand.SelectedValue+"' and s.subcategory_id='"+ddlsubcategory.SelectedValue+"'";
        obj.FillDataList(sel, DataList1);
       

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "vm")
        {
            MultiView1.ActiveViewIndex = 1;
            filldetails();
        }
        if (e.CommandName == "on")
        {
            Response.Redirect("PurchasePhoto/OrderItem.aspx?ItemID='" + eid + "'");
        }
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //MultiView1.ActiveViewIndex = 1;
        //filldetails();
    }
    public void filldetails()
    {
        string sel = "select * from tbl_product p, tbl_category c,tbl_subcategory s,tbl_brand b where p.brand_id=b.brand_id and p.subcategory_id=s.subcategory_id and c.category_id=s.category_id and b.brand_id='"+ddlbrand.SelectedValue+"' and s.subcategory_id='"+ddlsubcategory.SelectedValue+"' and p.product_id='"+eid+"'";
        obj.FillDetailsView(sel, DetailsView1);
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    public void fillcategory()
    {
        obj.FillDrop(ddlcategory, "category_name", "category_id", "tbl_category", "brand_id='" + ddlbrand.SelectedValue + "'");
    }
    protected void ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillcategory();
    }
}