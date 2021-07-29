<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.master" AutoEventWireup="true" CodeFile="presc.aspx.cs" Inherits="doctor_presc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="index-style-a" style="width:70%;">
<center>

             <asp:Panel ID="Panel1" runat="server">

<asp:Label ID="Label1" runat="server" Font-Names="helevetica,centaur" 
            Font-Size="XX-Large" ForeColor="#1D3667" Text="Dhanwantari Ayurveda" 
            Font-Bold="True" class="title-name"></asp:Label>
            <br /><br />
<asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Rx Prescription" 
            Font-Bold="True" ></asp:Label>
            </center>
            <div style="margin-left:20px; font-style: inherit;"id="printarea">
            <b><span style="font-size: medium;">Name:</span></b>
            <br />
        <asp:TextBox ID="txtName" runat="server" Width="63%"></asp:TextBox>
                <br /><br />
        </div>
        
        <div style="margin-left:20px; font-style: inherit;">
            <table cellpadding="10px" class="tabX">
            <tr>
            <th colspan="2">Rx</th>
            <th colspan="2">Dosage</th>
            <th colspan="2">Before/After</th>
            <th>Time</th>
            </tr>
            <tr>
            <td><asp:TextBox ID="txtRx" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="TextDos" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" name="meal" 
                    Text="Before Meal" Checked="True" GroupName="x"/>
                <asp:RadioButton ID="RadioButton2" runat="server" name="meal" Text="After Meal" 
                    GroupName="x"/></td>
                    <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" value="Morning"/>Morning
                <asp:CheckBox ID="CheckBox2" runat="server" value="Afternoon"/>Afternoon
                <asp:CheckBox ID="CheckBox3" runat="server" value="Evening"/>Evening
            </td>
            </tr>
            <tr>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton3" runat="server" name="meal" 
                    Text="Before Meal" Checked="True" GroupName="x"/>
                <asp:RadioButton ID="RadioButton4" runat="server" name="meal" Text="After Meal" 
                    GroupName="x"/></td>
                    <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" value="Morning"/>Morning
                <asp:CheckBox ID="CheckBox5" runat="server" value="Afternoon"/>Afternoon
                <asp:CheckBox ID="CheckBox6" runat="server" value="Evening"/>Evening
            </td>
            </tr>
            <tr>
            <td><asp:TextBox ID="TextBox3" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="TextBox4" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton5" runat="server" name="meal" 
                    Text="Before Meal" Checked="True" GroupName="x"/>
                <asp:RadioButton ID="RadioButton6" runat="server" name="meal" Text="After Meal" 
                    GroupName="x"/></td>
                    <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox7" runat="server" value="Morning"/>Morning
                <asp:CheckBox ID="CheckBox8" runat="server" value="Afternoon"/>Afternoon
                <asp:CheckBox ID="CheckBox9" runat="server" value="Evening"/>Evening
            </td>
            </tr>
            <tr>
            <td><asp:TextBox ID="TextBox5" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="TextBox6" runat="server" Height="30%" TextMode="SingleLine" Width="250px"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton7" runat="server" name="meal" 
                    Text="Before Meal" Checked="True" GroupName="x"/>
                <asp:RadioButton ID="RadioButton8" runat="server" name="meal" Text="After Meal" 
                    GroupName="x"/></td>
                    <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox10" runat="server" value="Morning"/>Morning
                <asp:CheckBox ID="CheckBox11" runat="server" value="Afternoon"/>Afternoon
                <asp:CheckBox ID="CheckBox12" runat="server" value="Evening"/>Evening
            </td>
            </tr>
            </table>

&nbsp;<br />
        </div>
        <div style="margin-left:20px; font-style: inherit;">
               &nbsp;<asp:Button ID="Button1" runat="server" CssClass="index-button" 
                Text="Print" onclick="Button1_Click"/>
               </div>
             </asp:Panel>
               </div>


</asp:Content>

