<%@ Page Language="C#" MasterPageFile="~/Student/StudentProfile.master" AutoEventWireup="true" CodeFile="BasicEdit.aspx.cs" Inherits="Student_BasicView" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1" bgcolor="#F2F2F2">
    <tr>
        <td style="width: 73px; height: 14px;">
            </td>
        <td style="width: 108px; height: 14px;">
            </td>
        <td style="height: 14px">
            </td>
        <td style="height: 14px">
            </td>
    </tr>
    <tr>
        <td style="height: 50px; width: 73px">
        </td>
        <td style="height: 50px; width: 108px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="Name:"></asp:Label>
        </td>
        <td style="height: 50px">
            <asp:TextBox ID="txtName" runat="server" Width="250px" Height="25px"></asp:TextBox>
        </td>
        <td style="height: 50px">
        </td>
    </tr>
    <tr>
        <td class="style8" style="height: 50px; width: 73px">
        </td>
        <td class="style8" style="height: 50px; width: 108px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="I Am:"></asp:Label>
        </td>
        <td class="style8" style="height: 50px">
            <asp:DropDownList ID="ddlGnder" runat="server" Height="20px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style8" style="height: 50px">
        </td>
    </tr>
    <tr>
        <td style="height: 50px; width: 73px">
        </td>
        <td style="height: 50px; width: 108px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="Birth Day:"></asp:Label>
        </td>
        <td style="height: 50px">
            <asp:DropDownList ID="ddlMonth" runat="server" 
                Height="20px" onselectedindexchanged="ddlMonth_SelectedIndexChanged" 
                Width="78px">
                <asp:ListItem Value="1">Jan</asp:ListItem>
                <asp:ListItem Value="2">Feb</asp:ListItem>
                <asp:ListItem Value="3">Mar</asp:ListItem>
                <asp:ListItem Value="4">Apr</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">Jun</asp:ListItem>
                <asp:ListItem Value="7">Jul</asp:ListItem>
                <asp:ListItem Value="8">Aug</asp:ListItem>
                <asp:ListItem Value="9">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:DropDownList ID="ddlDay" runat="server" Height="20px">
            </asp:DropDownList>
&nbsp;
            <asp:DropDownList ID="ddlYear" runat="server" Height="20px">
            </asp:DropDownList>
        </td>
        <td style="height: 50px">
        </td>
    </tr>
    <tr>
        <td class="style8" style="height: 50px; width: 73px">
        </td>
        <td class="style8" style="height: 50px; width: 108px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="Languages:"></asp:Label>
        </td>
        <td class="style8" style="height: 50px">
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>English</asp:ListItem>
                <asp:ListItem>Telugu</asp:ListItem>
                <asp:ListItem>Hindi</asp:ListItem>
            </asp:CheckBoxList>
        </td>
        <td class="style8" style="height: 50px">
        </td>
    </tr>
    <tr>
        <td class="style8" style="height: 50px; width: 73px">
        </td>
        <td class="style8" style="height: 50px; width: 108px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#5B5B5B" 
                Text="About Me:"></asp:Label>
        </td>
        <td class="style8" style="height: 50px">
            <asp:TextBox ID="txtAboutMe" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
        <td class="style8" style="height: 50px">
        </td>
    </tr>
    <tr>
        <td style="width: 73px; height: 5px">
        </td>
        <td style="height: 5px; width: 108px">
        </td>
        <td style="height: 5px">
        </td>
        <td style="height: 5px">
        </td>
    </tr>
    <tr>
        <td style="width: 73px">
            &nbsp;</td>
        <td style="width: 108px">
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

