using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class admin_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static int eid, f;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            fillbrand();
            fillgrid();
        }     
    }
    public void fillcategory()
    {
        obj.FillDrop(ddlcategory, "category_name", "category_id", "tbl_category", "brand_id='" + ddlbrand.SelectedValue + "'");
    }
    public void fillsubcategory()
    {
        obj.FillDrop(ddlsubcategory, "subcategory_name", "subcategory_id", "tbl_subcategory","category_id='" + ddlcategory.SelectedValue + "'" );
    }
    public void fillbrand()
    {
        obj.FillDrop(ddlbrand, "brand_name", "brand_id", "tbl_brand");
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string var = Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());
        if (f == 1)
        {
            if (var != "")
            {
                FileUpload1.SaveAs(Server.MapPath("../admin/productImages/" + var));
                string up = "update tbl_product set subcategory_id='" + ddlsubcategory.SelectedValue + "' ,brand_id='" + ddlbrand.SelectedValue + "',product_name='" + txtproduct.Text + "',product_quantity='" + txtquantity.Text + "',product_price='" + txtprice.Text + "',product_image='" + var + "' ,product_descripion='" + txtdescription.Text + "' where product_id='" + eid + "'";
                obj.ExceuteCommand(up);
                Response.Write("<script>alert('updated successfully')</script>");
                fillgrid();
                f = 0;
            }
            else
            {
                string up = "update tbl_product set subcategory_id='" + ddlsubcategory.SelectedValue + "' ,brand_id='" + ddlbrand.SelectedValue + "',product_name='" + txtproduct.Text + "',product_quantity='" + txtquantity.Text + "',product_price='" + txtprice.Text + "',product_descripion='" + txtdescription.Text + "' where product_id='" + eid + "'";
                obj.ExceuteCommand(up);
                Response.Write("<script>alert('updated successfully')</script>");
                fillgrid();
                f = 0;
            }
        }
        else
        {
            FileUpload1.SaveAs(Server.MapPath("../admin/productImages/" + var));
            string ins = "insert into tbl_product(subcategory_id,brand_id,product_name,product_quantity,product_price,product_image,product_descripion,comp_id) values('" + ddlsubcategory.SelectedValue + "','" + ddlbrand.SelectedValue + "','" + txtproduct.Text + "','" + txtquantity.Text + "','" + txtprice.Text + "','" + var + "','" + txtdescription.Text + "','"+Session["userid"]+"')";
            obj.ExceuteCommand(ins);
            Response.Write("<script>alert('inserted successfully')</script>");
        }
        txtproduct.Text = "";
        txtquantity.Text = "";
        txtprice.Text = "";
        txtdescription.Text = "";
        ddlsubcategory.ClearSelection();
        ddlbrand.ClearSelection();
        ddlcategory.ClearSelection();
        fillgrid();
    }
    protected void ddlsubcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtproduct.Text = "";
        txtquantity.Text = "";
        txtprice.Text = "";
        txtdescription.Text = "";
        ddlsubcategory.ClearSelection();
        ddlbrand.ClearSelection();
        ddlcategory.ClearSelection();
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillsubcategory();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            string sel = "select * from tbl_product p, tbl_category c,tbl_subcategory s,tbl_brand b where p.brand_id=b.brand_id and p.subcategory_id=s.subcategory_id and c.category_id=s.category_id and p.product_id='" + eid + "'";
            DataTable dt = obj.GetDataTable(sel);
            ddlcategory.SelectedValue = dt.Rows[0]["category_id"].ToString();
            obj.FillDrop(ddlsubcategory, "subcategory_name", "subcategory_id", "tbl_subcategory");
            ddlsubcategory.SelectedValue = dt.Rows[0]["subcategory_id"].ToString();
            ddlbrand.SelectedValue = dt.Rows[0]["brand_id"].ToString();
            txtproduct.Text = dt.Rows[0]["product_name"].ToString();
            txtquantity.Text = dt.Rows[0]["product_quantity"].ToString();
            txtprice.Text = dt.Rows[0]["product_price"].ToString();
            txtdescription.Text = dt.Rows[0]["product_descripion"].ToString();
            Image1.ImageUrl = "../admin/productImages/" + dt.Rows[0]["product_image"].ToString();
            f = 1;
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_product where product_id='" + eid + "'";
            obj.ExceuteCommand(del);
            Response.Write("<script>alert('item deleted')</script>");
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_product p, tbl_category c,tbl_subcategory s,tbl_brand b where p.brand_id=b.brand_id and p.subcategory_id=s.subcategory_id and c.category_id=s.category_id and p.comp_id='" + Session["userid"] + "'";
        obj.FillGridView(sel, GridView1);
    }
    protected void ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillcategory();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Home.aspx");
    }
}