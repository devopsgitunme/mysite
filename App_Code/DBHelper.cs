using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBHelper
/// </summary>
public class DBHelper
{
    public static DataSet GetData(string stmt)
    {
        SqlConnection con = new SqlConnection("Data Source=NANI;DataBase=OurSite;Integrated security=true");
        SqlDataAdapter sda = new SqlDataAdapter(stmt,con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        return ds;
    }
    public static int InsertData(string stmt)
    {
        SqlConnection con = new SqlConnection("Data Source=NANI;DataBase=OurSite;Integrated security=true");
        SqlCommand cmd = new SqlCommand(stmt, con);
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int i = cmd.ExecuteNonQuery();
        return i;
    }
}
