<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.master" AutoEventWireup="true" CodeFile="changpass.aspx.cs" Inherits="doctor_changpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="index-style-a1" style="width: 50%">
<center>
<asp:Label ID="lblCpass" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Change Password" Font-Bold="true"></asp:Label>
<br />
</center>
 <div style="margin-left:20px; font-style: inherit;">
            <b><span style="font-size: medium;">Username:</span></b>
            <br />
            <asp:TextBox ID="txtusername" runat="server" Width="63%" readonly="True" ></asp:TextBox><br /><br />
</div>

<div style="margin-left:20px; font-style: inherit;">
            <b><span style="font-size: medium;">Old Password:</span></b>
            <br />
            <asp:TextBox ID="txtpass" runat="server" Width="63%" TextMode="Password" ></asp:TextBox><br /><br />
</div>

<div style="margin-left:20px; font-style: inherit;">
            <b><span style="font-size: medium;">New Password:</span></b>
            <br />
            <asp:TextBox ID="txtpass1" runat="server" Width="63%" TextMode="Password"></asp:TextBox><br /><br />
</div>
<br />
    <br />
<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btnX" 
                onclick="btnUpdate_Click" />
</div>
</asp:Content>




