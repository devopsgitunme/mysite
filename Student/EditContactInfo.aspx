<%@ Page Language="C#" MasterPageFile="~/Student/StudentProfile.master" AutoEventWireup="true" CodeFile="EditContactInfo.aspx.cs" Inherits="Student_EditContactInfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1" bgcolor="#F2F2F2">
    <tr>
        <td style="width: 77px">
            &nbsp;</td>
        <td style="width: 102px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" style="height: 50px; width: 77px">
        </td>
        <td class="style8" style="height: 50px; width: 102px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="E-Mail:"></asp:Label>
        </td>
        <td class="style8" style="height: 50px">
            <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td class="style8" style="height: 50px">
        </td>
    </tr>
    <tr>
        <td style="height: 50px; width: 77px">
        </td>
        <td style="height: 50px; width: 102px">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="Mobile Phone:"></asp:Label>
        </td>
        <td style="height: 50px">
            <asp:TextBox ID="txtPhone" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td style="height: 50px">
        </td>
    </tr>
    <tr>
        <td style="height: 85px; width: 77px">
        </td>
        <td style="height: 85px; width: 102px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="Address:"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="City/Town:"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="Zipcode:"></asp:Label>
        </td>
        <td style="height: 85px">
            <asp:TextBox ID="txtAdd" runat="server" Height="25px" Width="200px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtCity" runat="server" Height="25px" Width="200px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtZip" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td style="height: 85px">
        </td>
    </tr>
    <tr>
        <td class="style8" style="height: 50px; width: 77px">
        </td>
        <td class="style8" style="height: 50px; width: 102px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="Website:"></asp:Label>
        </td>
        <td class="style8" style="height: 50px">
            <asp:TextBox ID="txtWebsite" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td class="style8" style="height: 50px">
        </td>
    </tr>
    <tr>
        <td style="width: 77px; height: 7px">
        </td>
        <td style="width: 102px; height: 7px">
        </td>
        <td style="height: 7px">
        </td>
        <td style="height: 7px">
        </td>
    </tr>
    <tr>
        <td style="width: 77px">
            &nbsp;</td>
        <td style="width: 102px">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" BackColor="#4D7EC4" Font-Bold="True" 
                ForeColor="White" Height="30px" onclick="Button2_Click" Text="Save Changes" 
                Width="110px" BorderColor="#4586D7" BorderStyle="Ridge" />
&nbsp;&nbsp;
            <asp:Label ID="lblmsg" runat="server" ForeColor="#5B5B5B"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

