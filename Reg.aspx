<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 163px;
        }
        .style6
        {
            width: 504px;
        }
        .style7
        {
            height: 39px;
        }
        .style8
        {
            width: 504px;
            height: 39px;
        }
        .style9
        {
            width: 163px;
            height: 39px;
        }
        .style10
        {
            height: 23px;
        }
        .style11
        {
            width: 504px;
            height: 23px;
        }
        .style12
        {
            width: 163px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="font-size: large">
    <tr>
        <td class="style10">
            </td>
        <td class="style11">
                                </td>
        <td class="style12">
            </td>
        <td class="style10">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                CausesValidation="False" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>&nbsp;</td>
        <td class="style10">
                                </td>
    </tr>
    <tr>
        <td class="style7">
        </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
        </td>
        <td class="style7">
            Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtFname" ErrorMessage="*" SetFocusOnError="True">*</asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtFname" runat="server" Width="125px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtFname" ErrorMessage="*"></asp:RequiredFieldValidator>
            <%--<asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkText="First Name" TargetControlID="txtFname" Enabled="true">
            </asp:TextBoxWatermarkExtender>--%>
         &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLname" runat="server" Width="125px"></asp:TextBox>
           <%-- <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" Enabled="true" WatermarkText="Last Name" TargetControlID="txtLname">
            </asp:TextBoxWatermarkExtender>--%>
        </td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="style7">
            Register Numberegister Number<asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                runat="server" ControlToValidate="txtHno" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtHno" runat="server" ontextchanged="txtno_TextChanged" 
                Width="275px"></asp:TextBox>
        </td>
        <td class="style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
&nbsp;Choose your username<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ControlToValidate="txtUname" 
                ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtUname" runat="server" ontextchanged="TextBox2_TextChanged" 
                Width="275px"></asp:TextBox>
            @it.com</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            Password<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" Width="275px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            Confirm Password<asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtCPassword" 
                ErrorMessage="Password Must Match"></asp:CompareValidator>
            <br />
            <asp:TextBox ID="txtCPassword" runat="server" TextMode="Password" Width="275px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            Gender<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="ddlGender" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="ddlGender" runat="server" Height="22px" Width="275px">
                <asp:ListItem>I am</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            Date Of Birth<br />
            <asp:DropDownList ID="ddlYear" runat="server" Height="22px" 
                Width="111px">
            </asp:DropDownList>
            &nbsp;&nbsp;<asp:DropDownList ID="ddlMonth" runat="server" 
                Height="22px" Width="110px">
                <asp:ListItem>&lt;---Month---&gt;</asp:ListItem>
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
            &nbsp;
            <asp:DropDownList ID="ddlDay" runat="server" Width="110px">
            </asp:DropDownList>
&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            E-mail<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" Width="275px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            Phone Number<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                runat="server" ControlToValidate="txtPhno" 
                ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtPhno" runat="server" Width="275px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            Address<br />
            <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine" Width="275px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            Select Batch<asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                runat="server" ControlToValidate="ddlBatch" 
                ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="ddlBatch" runat="server" Height="20px" Width="149px">
                <asp:ListItem>&lt;---Select Batch---&gt;</asp:ListItem>
                <asp:ListItem>2008-2012</asp:ListItem>
                <asp:ListItem>2009-2013</asp:ListItem>
                <asp:ListItem>2010-2014</asp:ListItem>
                <asp:ListItem>2011-2015</asp:ListItem>
                <asp:ListItem>2012-2016</asp:ListItem>
                <asp:ListItem>2013-2017</asp:ListItem>
                <asp:ListItem>2014-2018</asp:ListItem>
                <asp:ListItem>2015-2019</asp:ListItem>
                <asp:ListItem>2016-2020</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            <asp:Label ID="lblCaptcha" runat="server" BackColor="#FFFFCC" Font-Italic="True" 
                Font-Size="X-Large" style="font-size: x-large; border: thin #663300 ridge" 
                Text="   " Width="150px" Height="35px" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtcaptcha" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                Height="25px" ImageUrl="~/Images/images (2).jpg" onclick="ImageButton1_Click" 
                Width="34px" />
            <br />
            Enter above code<br />
            <asp:TextBox ID="txtcaptcha" runat="server" Width="200px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree to 3-Idots " 
                oncheckedchanged="CheckBox1_CheckedChanged" />
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" 
                NavigateUrl="~/Terms and Conditions.aspx">Terms &amp; Conditions</asp:HyperLink>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            <asp:Button ID="Btn_Register" runat="server" onclick="Btn_Register_Click" 
                Text="Register Me" Width="100px" CausesValidation="False" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                PostBackUrl="~/Login.aspx">click here</asp:LinkButton>
            <asp:Label ID="lblmsg1" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

