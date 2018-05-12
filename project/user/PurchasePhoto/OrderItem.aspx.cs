using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PurchasePhoto_OrderItem : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            FillOrder();
        }

    }
    private void FillOrder()
    {

        string str = "select * from tbl_product p,tbl_category c,tbl_subcategory s where p.subcategory_id=s.subcategory_id and s.category_id=c.category_id and p.product_id=" + Request.QueryString["ItemID"] + " ";
        DataTable dt = obj.GetDataTable(str);
        lblProduct.Text = dt.Rows[0]["product_name"].ToString();
        lblCat.Text = dt.Rows[0]["category_name"].ToString();
        lblUnit.Text = dt.Rows[0]["product_price"].ToString();
        double tot = (Convert.ToDouble(dt.Rows[0]["product_price"]) * Convert.ToDouble(txtCat.Text));
        lblTot.Text = tot.ToString() + ".00";
        Image1.ImageUrl = "~/admin/productImages/" + dt.Rows[0]["product_image"].ToString();
        lbldesc.Text = dt.Rows[0]["product_descripion"].ToString();
        Session["pdtid"] = dt.Rows[0]["product_id"].ToString();


    }
    protected void txtCat_TextChanged(object sender, EventArgs e)
    {
        double Price = Convert.ToDouble(txtCat.Text);
        double Value = Convert.ToDouble(lblUnit.Text);
        double SubTotal = (Price * Value);
        lblTot.Text = SubTotal.ToString();
        string sel = "select product_quantity from tbl_product where product_id=" + Request.QueryString["ItemID"] + " and product_quantity<'"+txtCat.Text+"'  ";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Out of stock')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        dt = (DataTable)Session["cart"];
        DataRow row = dt.NewRow();
        row["id"] = Convert.ToInt32(Session["cartid"]);
        row["filename"] = Image1.ImageUrl.ToString();
        row["album"] = lblProduct.Text.ToString();
        row["album_id"] = Session["pdtid"];
        row["qty"] = Convert.ToInt32(txtCat.Text);
        row["unitprice"] = Convert.ToDouble(lblUnit.Text);
        row["total"] = Convert.ToDouble(lblTot.Text);
        dt.Rows.Add(row);
        dt.AcceptChanges();
        Session["cart"] = dt;
        int i = Convert.ToInt32(Session["cartid"]);
        i++;
        Session["cartid"] = i;
        Response.Redirect("CartPhoto.aspx");

    }
    private void GetTempGrid()
    {

        //DataTable dt = new DataTable();
        //dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
        //                    new DataColumn("product", typeof(string)),
        //                    new DataColumn("quantity",typeof(int)),new DataColumn("total",typeof(int)), });
        //dt.Rows.Add(1);
        //dt.Rows.Add(2);
        //dt.Rows.Add(3);
        //dt.Rows.Add(4);

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/CartPhoto.aspx");
    }
}