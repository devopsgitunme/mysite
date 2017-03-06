<%@ Page Language="C#" MasterPageFile="~/Student/StudentProfile.master" AutoEventWireup="true" CodeFile="ChangePhoto.aspx.cs" Inherits="Student_ChangePhoto" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td style="width: 72px">
            &nbsp;</td>
        <td style="width: 359px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 72px">
            &nbsp;</td>
        <td style="width: 359px">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="266px" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 72px">
            &nbsp;</td>
        <td style="width: 359px">
            <asp:Image ID="Image2" runat="server" Height="224px" Width="248px" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Upload" 
                Width="80px" onclick="Button2_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 72px">
            &nbsp;</td>
        <td style="width: 359px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

