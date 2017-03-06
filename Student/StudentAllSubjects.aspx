<%@ Page Language="C#" MasterPageFile="~/Student/StudentMaster.master" AutoEventWireup="true" CodeFile="StudentAllSubjects.aspx.cs" Inherits="StudentAllSubjects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../StyleSheet.css"rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style5
        {
            font-size: xx-large;
        }
        .style6
        {
            width: 285px;
        }
    .style7
    {
        width: 285px;
        height: 38px;
    }
    .style8
    {
        height: 38px;
    }
    </style>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style5">Here you can select subject these are in alphabetical order</span>&nbsp;</td>
                
        </tr>
        
    </table>
    <br />
    <table class="style1">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="A"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8">
                <asp:HyperLink ID="HyperLink42" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/AppliedPhysics.aspx" 
                    style="font-size: large">Applied Physics</asp:HyperLink>
            </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink43" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" 
                    NavigateUrl="~/Student/AdvancedDataStructuresAndAlgorithms.aspx" 
                    style="font-size: large">Advanced Datastructures and Algorithms</asp:HyperLink>
&nbsp;<%--<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#663300" 
                    PostBackUrl="~/Student/AdvancedDataStructuresAndAlgorithms.aspx">Advanced 
                Data Structures and Algorithms</asp:LinkButton>--%>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink44" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/AutomataCompilerDesign.aspx" 
                    style="font-size: large">Automata and Compiler Design</asp:HyperLink>
&nbsp;<%--<asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#663300" 
                    PostBackUrl="~/Student/AutomataCompilerDesign.aspx">Automata and 
                Compiler Design</asp:LinkButton>--%>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="B"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/BEE.aspx" style="font-size: large">Basic 
                Electical Engineering</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/Biometrics.aspx" 
                    style="font-size: large">Biometrics</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="C"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/CDS.aspx" style="font-size: large">C 
                Programming and Data Structures</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/CG.aspx" style="font-size: large">Computer 
                Graphics</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/CN.aspx" style="font-size: large">Computer 
                Networks</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/CO.aspx" style="font-size: large">Computer 
                Organization</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="D"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink7" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/DCS.aspx" style="font-size: large">Data 
                Communication System</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink8" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/DBMS.aspx" style="font-size: large">Database 
                Management Systems</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink9" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/DWDM.aspx" style="font-size: large">Data 
                Warehousing and data Mining</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink10" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/DP.aspx" style="font-size: large">Design 
                Patterns</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink11" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/DLD.aspx" style="font-size: large">Digital 
                logic design</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink12" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/DD.aspx" style="font-size: large">Distributed 
                databases</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="E"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/E-Com.aspx" style="font-size: large">E-Commerce</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/EDC.aspx" style="font-size: large">Electronic 
                devices and circuits</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink15" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/ESystems.aspx" 
                    style="font-size: large">Embeded Systems</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink16" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/EStudies.aspx" 
                    style="font-size: large">Environmental Studies</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="H"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink17" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/HCI.aspx" style="font-size: large">Human 
                Computer Interface</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="I"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink18" runat="server" Font-Underline="False" 
                    ForeColor="#004F4F" NavigateUrl="~/Student/IP.aspx" style="font-size: large">Image 
                Processing</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink19" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/IRS.aspx" 
                    style="font-size: large">Information Retrival Systems</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink20" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/IS.aspx">Information 
                Security</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="M"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink21" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MS.aspx">Management 
                Science</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink22" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MEFA.aspx">Managerial 
                Economics and Financial Analysis</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink23" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MFCS.aspx">Mathematical 
                Foundation of Computer Science</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink24" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MM.aspx">Mathematical 
                Methods</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink25" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/M1.aspx">Mathematics-I</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink26" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MPI.aspx">Microprocessors 
                and Interfacing</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink27" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MWT.aspx">Middleware 
                Technologies</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink28" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MC.aspx">Mobile 
                Computing</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink29" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MAD.aspx">Multimedia 
                and Application Development</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink30" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/MD.aspx">Multimedia 
                Databases</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="N"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink31" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/NMS.aspx">Network 
                Management Science</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink32" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/NP.aspx">Network 
                Programming</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="O"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink33" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/OOAD.aspx">Object 
                Oriented Analysis and Design</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink34" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/OOP.aspx">Object 
                Oriented Programming</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink35" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/OS.aspx">Operating 
                Systems</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="P"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink36" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/PS.aspx">Probability 
                and Statistics</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="S"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink37" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/SE.aspx">Software 
                Engineering</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink38" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/STM.aspx">Software 
                Testing Methodologies</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink39" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/SPM.aspx">Software 
                Project Management</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="U"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink40" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/UNIX.aspx">Unix 
                and Shell Programming</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#CC66FF" style="font-size: x-large" Text="W"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink41" runat="server" Font-Size="Large" 
                    Font-Underline="False" ForeColor="#004F4F" NavigateUrl="~/Student/WT.aspx">Web 
                Technologies</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

