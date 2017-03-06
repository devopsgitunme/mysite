using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    //SqlCommand cmd;
    //SqlDataAdapter sda;
    BAL bal = new BAL();
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //cmd = new SqlCommand("select * from StudentReg where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        //sda = new SqlDataAdapter(cmd);
        //ds = new DataSet();
        //sda.Fill(ds);
        ds = bal.login(TextBox1.Text, TextBox2.Text);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["RegNum"] = ds.Tables[0].Rows[0]["RegisterNumber"].ToString();
            Session["username"] = ds.Tables[0].Rows[0]["UserName"].ToString();
            Session["studNmae"] = ds.Tables[0].Rows[0]["FullName"].ToString();
            Session["Gender"] = ds.Tables[0].Rows[0]["Gender"].ToString();
            Session["Changephoto"] = ds.Tables[0].Rows[0]["Changephoto"].ToString();
            Session["Photo"] = ds.Tables[0].Rows[0]["Photo"].ToString();
            string state = ds.Tables[0].Rows[0]["Status"].ToString();
            if (state == "False")
            {
                Response.Redirect("~/Student/StudentChangepassword.aspx?RegNum=" + ds.Tables[0].Rows[0]["RegisterNumber"].ToString());
            }
            else
            {
                Response.Redirect("~/Student/StudentHome.aspx?RegNum=" + ds.Tables[0].Rows[0]["RegisterNumber"].ToString());
            }
        }
        else
        {
            lblmsg.Text = "Invalid Credentials...............!";
        }
    }
}
