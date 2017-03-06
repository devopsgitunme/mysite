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

public partial class Student_ChangePhoto : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Photos/") + FileUpload1.FileName);
            string path = Server.MapPath("~/Photos/") + FileUpload1.FileName;
            cmd = new SqlCommand("update StudentReg set Photo='" + FileUpload1.FileName + "',Changephoto='1' where RegisterNumber='" + Session["RegNum"].ToString() + "'", con);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            cmd.ExecuteNonQuery();
            Image2.ImageUrl = "~/Photos/" + FileUpload1.FileName;
        }
    }
}
