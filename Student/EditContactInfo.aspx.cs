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

public partial class Student_EditContactInfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("select * from StudentReg where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                
                txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtPhone.Text = ds.Tables[0].Rows[0]["PhoneNo"].ToString();               
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string address = txtAdd.Text + "," + txtCity.Text + "," + txtZip.Text + ".";
            cmd = new SqlCommand("update StudentReg set Email='" + txtEmail.Text + "',PhoneNo='" + txtPhone.Text + "',Address='" + address + "',Website='" + txtWebsite.Text + "' where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Your changes have been saved.....!";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}
