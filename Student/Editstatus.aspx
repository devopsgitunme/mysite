<%@ Page Language="C#" MasterPageFile="~/Student/StudentProfile.master" AutoEventWireup="true" CodeFile="Editstatus.aspx.cs" Inherits="Student_Editstatus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1" bgcolor="#F2F2F2">
        <tr>
            <td style="width: 197px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 197px">
                &nbsp;</td>
            <td>
                <asp:RadioButton ID="rbEdu" runat="server" GroupName="status" 
                     style="font-size: larger" 
                    Text="Education" oncheckedchanged="rbEdu_CheckedChanged" 
                    AutoPostBack="True" ForeColor="#5B5B5B" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbJob" runat="server" GroupName="status" 
                     style="font-size: larger" Text="Job" 
                    oncheckedchanged="rbJob_CheckedChanged1" AutoPostBack="True" 
                    ForeColor="#5B5B5B" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbOther" runat="server" GroupName="status" 
                    oncheckedchanged="rbOther_CheckedChanged" style="font-size: larger" 
                    Text="Other" AutoPostBack="True" ForeColor="#5B5B5B" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
    <table class="style1" bgcolor="#F2F2F2">
        <tr>
            <td style="width: 196px">
                &nbsp;</td>
            <td style="width: 103px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">
                &nbsp;</td>
            <td style="width: 103px">
                <asp:Label ID="lblDrop" runat="server" style="font-size: large" Text="Label" 
                    ForeColor="#5B5B5B"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlDrop" runat="server" Height="24px" Width="100px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 196px">
                &nbsp;</td>
            <td style="width: 103px">
                <asp:Label ID="lblName" runat="server" style="font-size: large" Text="Label" 
                    ForeColor="#5B5B5B"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 196px">
                &nbsp;</td>
            <td style="width: 103px">
                <asp:Label ID="lblPosition" runat="server" style="font-size: large" 
                    Text="Label" ForeColor="#5B5B5B"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPosition" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 196px">
                &nbsp;</td>
            <td style="width: 103px">
                &nbsp;</td>
            <td>
            <asp:Button ID="btnSave" runat="server" BackColor="#4D7EC4" Font-Bold="True" 
                ForeColor="White" Height="30px" onclick="Button2_Click" Text="Save Changes" 
                Width="110px" BorderColor="#4586D7" BorderStyle="Ridge" />
&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

