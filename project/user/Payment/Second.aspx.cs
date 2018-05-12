using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Default : System.Web.UI.Page
{
    cls_credit obj = new cls_credit();
    public static string pin;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            lblCardNumber.Text  = Session["accno"].ToString();

            lbl_Payto.Text ="Admin ImagePortal";
            lbl_Amount.Text = Session["amount"].ToString();
        }
    }

    protected void lblCopyIt_Click(object sender, EventArgs e)
    {
        //Code to copy address from table
        string str = "select (u.ufname+' '+u.ulname) as name,* from tbl_userregistration u,tbl_place p,tbl_district d,tbl_state s where s.state_id=d.state_id and p.district_id=d.district_id and p.place_id=u.place_id and u.uid=" + Session["userid"] + "";
        DataTable dt = obj.GetDataTable(str);
        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["name"].ToString();
            txtAddress.Text = dt.Rows[0]["uaddress"].ToString();
            txtPlace.Text = dt.Rows[0]["place_name"].ToString();
            txtState.Text = dt.Rows[0]["state_name"].ToString();
            txtEmail.Text = dt.Rows[0]["uemail"].ToString();
            txtPhone.Text = dt.Rows[0]["ucontact"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str2 = "select COUNT(uid) as cid from tbl_purchase_head where uid='" + Session["userid"] + "'";
        DataTable dt2 = obj.GetDataTable(str2);
        if (Convert.ToInt32(dt2.Rows[0]["cid"]) > 10)
        {
            string str1 = "select * from tbl_account_details a,tbl_validamount v where a.a_cardnumber=v.a_cardnumber and a.a_cardnumber='" + Session["accno"] + "' and v.valid_amount>=" + lbl_Amount.Text + "";
            DataTable dt1 = obj.GetDataTable(str1);
            if (dt1.Rows.Count > 0)
            {
                string str = "select * from tbl_account_details where a_cardnumber='" + Session["accno"] + "' and a_amount>=" + lbl_Amount.Text + "";
                DataTable dt = obj.GetDataTable(str);
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("Third.aspx");
                }
                else
                {
                    Response.Write("<script>alert('not enough money')</script>");
                }
            }
      else {
          
                string ins = "insert into tbl_newpassword(pswd_new,a_cardnumber)values('" + GetISB().ToString() + "','" + Session["accno"] + "')";
                obj.ExceuteCommand(ins);
                Mail();
                //Response.Write("<script>alert('Sorry your current transaction have some problem.Check your mail for new password')</script>");
                Response.Redirect("/user/Payment/newpassword.aspx");
            }
        }
        else
        {
            string str = "select * from tbl_account_details where a_cardnumber='" + Session["accno"] + "' and a_amount>=" + lbl_Amount.Text + "";
            DataTable dt = obj.GetDataTable(str);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Third.aspx");
            }
            else
            {
                Response.Write("<script>alert('not enough money')</script>");
            }
           
        }

    }
    private void Mail()
    {
        string selEmail = "select a_email from tbl_account_details where a_cardnumber='" + Session["accno"] + "'";
        DataTable dtEmail = obj.GetDataTable(selEmail);
        string EmailID = "";
        if (dtEmail.Rows.Count > 0)
        {
            EmailID = dtEmail.Rows[0]["a_email"].ToString();

            ////Email Sendind Code

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(EmailID);
            mail.From = new MailAddress("creditcardfrauddetecion007@gmail.com");
            mail.Subject = "Ur card is blocked!!";

            string Body = "your new password is \r\n " + GetISB().ToString();
            mail.Body = Body;

            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("creditcardfrauddetecion007@gmail.com", "9605333151");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mail);
           // Label1.Text = "Password send to u r mail...";
        }

    }
    private string GetISB()
    {
        string allowedChars = "";

         allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
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
        return ("NWPSWD" + passwordString);

    }
    
}