<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="doctor_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="index-style-a1">
    <center>
<asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Scheduled Appointments" 
            Font-Bold="True"></asp:Label>
            </center>

    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            Username:
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            <br />
            Date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
            Gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            Time:
            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
            <br />
            Name:
            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
&nbsp;
            <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
&nbsp;<asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
            <br />
            Mobile:
            <asp:Label ID="altmobLabel" runat="server" Text='<%# Eval("altmob") %>' />
            <br />
            Address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            <br />
            Blood Group:
            <asp:Label ID="bgrpLabel" runat="server" Text='<%# Eval("bgrp") %>' />
            <br />
            Email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT * FROM [appointmentsx]">
    </asp:SqlDataSource>

</div>


</asp:Content>

