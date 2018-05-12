using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            lblMurchant.Text = Session["name"].ToString();
            lblDate.Text = DateTime.Now.ToShortDateString();
            lblAmoubnt.Text = Session["amount"].ToString();
            lblTID.Text = "TID0003421ARD";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string strIsb = GetISB();

        string ins = "insert into tbl_purchase_head(uid,ph_grandtotal,ph_date,ph_billno) values('" + Session["userid"] + "','" + Session["amount"] + "','" + DateTime.Now.ToShortDateString() + "','" + strIsb + "')";
        obj.ExceuteCommand(ins);


        string sel = "select max(ph_id) as Purchase from tbl_purchase_head";
        DataTable dtMax = obj.GetDataTable(sel);
        Session["max_id"] = dtMax.Rows[0]["Purchase"];
        DataTable dt = (DataTable)Session["cart"];
        //int id = (int)Session["cart_id"];
        foreach (DataRow dr in dt.Rows)
        {


            string insPur = "insert into tbl_purchase_details (ph_id,product_id,pd_quantity,pd_total)values(" + Session["max_id"] + "," + Convert.ToInt32(dr["album_id"]) + "," + Convert.ToInt32(dr["qty"]) + "," + Convert.ToDouble(dr["total"]) + ")";
            obj.ExceuteCommand(insPur);


            string se = "select * from tbl_account_details where a_cardnumber='" + Session["accno"] + "'";
            DataTable d = obj.GetDataTable(se);
            if (dt.Rows.Count > 0)
            {
                string up = "update tbl_account_details set a_amount= a_amount - " + Session["amount"] + " where a_cardnumber='" + Session["accno"] + "' ";
                obj.ExceuteCommand(up);
                string up1 = "update tbl_product set product_quantity= product_quantity - " + Convert.ToInt32(dr["qty"]) + " where product_id=" + Convert.ToInt32(dr["album_id"]) + "";
                obj.ExceuteCommand(up1);

            }
            
          
        }


        Response.Redirect("~/user/userhome.aspx");


    }
    private string GetISB()
    {
        string allowedChars = "";

        // allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string passwordString = "";

        string temp = "";

        Random rand = new Random();
        for (int i = 0; i < 4; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordString += temp;
        }
        return ("M-" + passwordString);

    }
}