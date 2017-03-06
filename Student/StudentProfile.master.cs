using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Student_StudentProfile : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUname.Text = Session["studNmae"].ToString();
        #region Comments
        //string gender = Session["Gender"].ToString();
        //string chPhoto = Session["Changephoto"].ToString();

        //if (chPhoto == "False")
        //{
        //    if (gender == "Male")
        //    {
        //        imgProfilePic.ImageUrl = "~/Photos/Male.gif";
        //    }
        //    else
        //    {
        //        imgProfilePic.ImageUrl = "~/Photos/Female.gif";
        //    }
        //}
        //else
        //{
        //    cmd = new SqlCommand("select * from StudentReg where RegisterNumber='" + Session["RegNum"] + "'", con);
        //    sda = new SqlDataAdapter(cmd);
        //    ds = new DataSet();
        //    sda.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        string photo = ds.Tables[0].Rows[0]["Photo"].ToString();
        //        string path = "~/Photos/" + photo;
        //        imgProfilePic.ImageUrl = path;
        //    }
        //}
        #endregion
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/ViewProfile.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string gender = Session["Gender"].ToString();
        //string chPhoto = Session["Changephoto"].ToString();
        cmd = new SqlCommand("select * from StudentReg where RegisterNumber='" + Session["RegNum"] + "'", con);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds);
        string photo = ds.Tables[0].Rows[0]["Photo"].ToString();
        string chphoto = ds.Tables[0].Rows[0]["Changephoto"].ToString();
        if (chphoto == "False")
        {
            if (gender == "Male")
            {
                imgProfilePic.ImageUrl = "~/Photos/" + photo;
            }
            else
            {
                imgProfilePic.ImageUrl = "~/Photos/" + photo;
            }
        }
        else
        {
            
            if (ds.Tables[0].Rows.Count > 0)
            {
                string path = "~/Photos/" + photo;
                imgProfilePic.ImageUrl = path;
            }
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string pho;
        string gender = Session["Gender"].ToString();
        if (gender == "Male")
        {
            pho = "Male.gif";
        }
        else
        {
            pho = "Female.gif";
        }
        cmd = new SqlCommand("update StudentReg set Photo='" + pho + "',Changephoto='0' where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        cmd.ExecuteNonQuery();
        imgProfilePic.ImageUrl = "~/Photos/" + pho;
    }
}
