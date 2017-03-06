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

public partial class StudentMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbProfName.Text = Session["studNmae"].ToString();
        string gender = Session["Gender"].ToString();
        string chPhoto = Session["Changephoto"].ToString();
        if (chPhoto == "False")
        {
            if (gender == "Male")
            {
                Image1.ImageUrl = "~/Photos/Male.gif";
            }
            else
            {
                Image1.ImageUrl = "~/Photos/Female.gif";
            }
        }
        else
        {
            string photo = Session["Photo"].ToString();
            string path = "~/Photos/" + photo;
            Image1.ImageUrl = path;
        }
    }
    protected void lbProfName_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/ViewProfile.aspx");
    }
}
