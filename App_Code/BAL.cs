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
using System.Net;
using System.Net.Mail;

public class BAL
{
    DataSet ds = new DataSet();

    public DataSet login(string uname, string pwd)
    {
        return DBHelper.GetData("select * from StudentReg where UserName='"+uname+"' and Password='"+pwd+"'");
    }
    public string CreateRandomPassword(int pwdlen)
    {
        string ac = "123456789qwertyupasdfghjkzxcvbnmQWERTYUPASDFGHJKZXCVBNM";
        Random rand = new Random();
        char[] c = new char[pwdlen];
        int acCount = ac.Length;
        for (int i = 0; i < pwdlen; i++)
        {
            c[i] = ac[(int)(acCount * rand.NextDouble())];
        }
        return new string(c);
    }
    public int reg(string dob, string fullname,string ddlGender,string regno,string uname,string pwd,string Email,string phno,string Address,string YearOfBatch,bool status,bool ChangePhoto)
    {
        string photo;
        if (ddlGender == "Male")
        {
            photo = "Male.gif";
        }
        else
        {
            photo = "Female.gif";
        }
        return DBHelper.InsertData("insert into StudentReg(FullName,RegisterNumber,UserName,Password,DOB,Gender,Email,PhoneNo,Address,YearOfBatch,Status,Photo,Changephoto) values ('"+fullname+"','"+regno+"','"+uname+"','"+pwd+"','"+dob+"','"+ddlGender+"','"+Email+"','"+phno+"','"+Address+"','"+YearOfBatch+"','"+status+"','"+photo+"','"+ChangePhoto+"')");
    }
    public DataSet ChangePassword(string uname)
    {
        return DBHelper.GetData("select Email,PhoneNo from StudentReg where UserName='" + uname + "'");
    }
    public int UpdatePwd(string uname, string pwd)
    {
        return DBHelper.InsertData("update StudentReg set Password='" + pwd + "',Status='False' where UserName='" + uname + "'");
    }
    public void SendMail(string MailId, string Subject, string Body)
    {
        SmtpClient serverobj = new SmtpClient();
        serverobj.Host = "smtp.gmail.com";
        serverobj.Credentials = new NetworkCredential("dineshkumar.movva7@gmail.com", "nanisiri");
        MailMessage msgobj = new MailMessage();
        serverobj.EnableSsl = true;
        msgobj.From = new MailAddress("dineshkumar.movva7@gmail.com", "3-Idiots");
        msgobj.To.Add(MailId);
        msgobj.Subject = Subject;
        msgobj.Body = Body;
        serverobj.Send(msgobj);
    }
    public DataSet GetUname(string regno)
    {
        return DBHelper.GetData("select Email,UserName,PhoneNo from StudentReg where RegisterNumber='" + regno + "'");
    }
}
