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

public partial class Student_BasicView : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    string lang;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1985; i <= 2000; i++)
            {
                ddlYear.Items.Add(i.ToString());
                ddlYear.DataBind();
            }
            for (int j = 1; j <= 31; j++)
            {
                ddlDay.Items.Add(j.ToString());
                ddlDay.DataBind();
            }
        }
        try
        {
            cmd = new SqlCommand("select * from StudentReg where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
                ddlGnder.SelectedItem.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
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
            string dob = ddlDay.SelectedItem.Value + "-" + ddlMonth.SelectedItem.Value + "-" + ddlYear.SelectedItem.Value;

            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected == true)
                {
                    lang += li.Text + ",";
                }
            }
            string str = lang;
            string s1 = str.Remove(str.Length - 1, 1);
            s1 = s1.Insert(s1.Length, ".");
            cmd = new SqlCommand("update StudentReg set FullName='" + txtName.Text + "',Gender='" + ddlGnder.SelectedItem.Value + "',DOB='" + dob + "',Languages='" + s1 + "',AboutMe='" + txtAboutMe.Text + "' where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Your changes have been saved.";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
