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

public partial class Changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["studNmae"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string regnum = Session["RegNum"].ToString();
        cmd = new SqlCommand("update StudentReg set Password='" + txtNewpwd.Text + "',Status='True' where RegisterNumber='" + regnum + "'", con);
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            lblmsg.Text = "Password changed successfully..........!";
            txtcpwd.Text = "";
            txtNewpwd.Text = "";
        }
    }
}
