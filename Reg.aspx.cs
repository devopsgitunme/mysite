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

public partial class Reg : System.Web.UI.Page
{
    BAL bal = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton2.Visible = false;
        if (!IsPostBack)
        {
            lblCaptcha.Text = bal.CreateRandomPassword(8);
            ddlYear.Items.Add("<---Year--->");
            ddlDay.Items.Add("<---Day--->");
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
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    //protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //ddlMonth.Visible = true;
    //    //if (!IsPostBack)
    //    //{
    //    //    for (int j = 1; j <= 12; j++)
    //    //    {
    //    //        ddlMonth.Items.Add(j.ToString());
    //    //        ddlMonth.DataBind();
    //    //    }
    //    //}
    //    //Calendar1.VisibleDate = new DateTime(Convert.ToInt32(ddlYear.SelectedItem.Value),Convert.ToInt32(ddlMonth.SelectedItem.Value),1);
    //}
    //protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //Calendar1.VisibleDate = new DateTime(Convert.ToInt32(ddlYear.SelectedItem.Value),Convert.ToInt32(ddlMonth.SelectedItem.Value), 1);
    //    //Calendar1.Visible = true;
    //}
    //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    //{
    //    //txtDOB.Visible = true;
    //    //txtDOB.Text = Calendar1.SelectedDate.ToShortDateString();
    //    //Calendar1.Visible = false;
    //}
    protected void Btn_Register_Click(object sender, EventArgs e)
    {
        try
        {
            int i;
            if (CheckBox1.Checked == true)
            {
                #region btncode
                string dob = ddlDay.SelectedItem.Value + "-" + ddlMonth.SelectedItem.Value + "-" + ddlYear.SelectedItem.Value;
                string fullname = txtFname.Text + " " + txtLname.Text;
                if (lblCaptcha.Text == txtcaptcha.Text)
                {
                    i = bal.reg(dob, fullname, ddlGender.SelectedItem.Value, txtHno.Text, txtUname.Text+"@it.com", txtPassword.Text, txtEmail.Text, txtPhno.Text, txtAdd.Text, ddlBatch.SelectedItem.Value, Convert.ToBoolean(1), Convert.ToBoolean(0));
                    if (i > 0)
                    {
                        lblmsg.Text = "registration success Please ";
                        lblmsg1.Text = " to login";
                        LinkButton2.Visible = true;
                        txtFname.Text = "";
                        txtLname.Text = "";
                        txtAdd.Text = "";
                        txtcaptcha.Text = "";
                        txtCPassword.Text = "";
                        txtEmail.Text = "";
                        txtHno.Text = "";
                        txtPassword.Text = "";
                        txtPhno.Text = "";
                        txtUname.Text = "";
                        ddlBatch.SelectedIndex = 0;
                        ddlGender.SelectedIndex = 0;
                        ddlYear.SelectedIndex = 0;
                    }
                    else
                    {
                        lblmsg.Text = " this  register number is already used";
                        lblmsg1.Visible = false;
                        LinkButton2.Visible = false;
                    }
                }
                else
                {
                    lblmsg.Text = "capcture code does not match";
                    lblCaptcha.Text = bal.CreateRandomPassword(8);
                }
                #endregion
            }
            else
            {
                Response.Write("<script>alert('Plese agree the terms and conditions')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message+"')</script>");
        }
    }
    protected void txtno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
            //if (CheckBox1.Checked == true)
            //{
            //    Btn_Register.Enabled = true;
            //}
            //else
            //{
            //    Btn_Register.Enabled = false;
            //}
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        lblCaptcha.Text = bal.CreateRandomPassword(8);
    }
}
