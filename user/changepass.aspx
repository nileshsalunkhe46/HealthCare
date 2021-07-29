<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="user_changepass" %>

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
            <asp:TextBox ID="txtpass1" runat="server" Width="63%" TextMode="Password" ></asp:TextBox><br /><br />
</div>
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
    <br />
<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btnX" 
                onclick="btnUpdate_Click" />
</div>
</asp:Content>

