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

public partial class Student_Editstatus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDrop.Visible = false;
        lblName.Visible = false;
        lblPosition.Visible = false;
        ddlDrop.Visible = false;
        txtName.Visible = false;
        txtPosition.Visible = false;
        btnSave.Visible = false;
    }
    
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void rbJob_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void rbEdu_CheckedChanged(object sender, EventArgs e)
    {
        lblDrop.Visible = true;
        lblName.Visible = true;
        lblPosition.Visible = true;
        ddlDrop.Visible = true;
        txtName.Visible = true;
        txtPosition.Visible = true;
        lblDrop.Text = "Designation:";
        lblName.Text = "College Name:";
        lblPosition.Text = "Branch:";
        btnSave.Visible = true;
        if (ddlDrop.Items.Count > 0)
        {
            ddlDrop.Items.Remove("Software");
            ddlDrop.Items.Remove("Administration");
            ddlDrop.Items.Remove("Teaching");
        }
        ddlDrop.Items.Add("B.Tech");
        ddlDrop.Items.Add("M.Tech");
        ddlDrop.Items.Add("MS");
        ddlDrop.Items.Add("ME");
        ddlDrop.Items.Add("MBA");
        lblmsg.Visible = false;
    }
    protected void rbJob_CheckedChanged1(object sender, EventArgs e)
    {
        lblDrop.Visible = true;
        lblName.Visible = true;
        lblPosition.Visible = true;
        ddlDrop.Visible = true;
        txtName.Visible = true;
        txtPosition.Visible = true;
        lblDrop.Text = "Type Of Job:";
        lblName.Text = "Working At:";
        lblPosition.Text = "Position:";
        btnSave.Visible = true;
        ddlDrop.Items.Remove("B.Tech");
        ddlDrop.Items.Remove("M.Tech");
        ddlDrop.Items.Remove("MS");
        ddlDrop.Items.Remove("ME");
        ddlDrop.Items.Remove("MBA");
        ddlDrop.Items.Add("Software");
        ddlDrop.Items.Add("Administration");
        ddlDrop.Items.Add("Teaching");
        txtName.Text = "";
        txtPosition.Text = "";
        lblmsg.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (rbEdu.Checked == true)
        {
            try
            {
                cmd = new SqlCommand("update StudentReg set CollegeName='" + txtName.Text + "',Degree='" + ddlDrop.SelectedItem.Value + "',Branch='" + txtPosition.Text + "' where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "Your changes have been saved.";
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;
            }
        }
        else if (rbJob.Checked == true)
        {
            try
            {
                cmd = new SqlCommand("update StudentReg set WorkingAt='" + txtName.Text + "',Postion='" + txtPosition.Text + "',TypeOfJob='" + ddlDrop.SelectedItem.Value + "' where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "Your changes have been saved.";
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;
            }
        }
        else
        {
            try
            {
                cmd = new SqlCommand("update StudentReg set WorkingAt='" + txtName.Text + "',Postion=NULL,TypeOfJob=NULL where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "Your changes have been saved.....!";
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;
            }
 
        }
    }
    protected void rbOther_CheckedChanged(object sender, EventArgs e)
    {
        lblName.Visible = true;
        lblName.Text = "Working As:";
        txtName.Visible = true;
        txtName.Text = "";
        btnSave.Visible = true;
        lblmsg.Visible = false;
    }
}
