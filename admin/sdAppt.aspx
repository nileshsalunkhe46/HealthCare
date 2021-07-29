<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="sdAppt.aspx.cs" Inherits="admin_sdAppt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="index-style-a1">
    <center> 
    <asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="All Appointments" 
            Font-Bold="True"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            
            
            SelectCommand="SELECT [username], [date], [gender], [time], [fname], [mname], [lname], [altmob], [address], [bgrp], [email] FROM [appointmentsx] ORDER BY [date]"></asp:SqlDataSource>
           
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            GroupItemCount="3" >
            <AlternatingItemTemplate>
                <td runat="server" style="color: #284775;">
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
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />&nbsp;
                    <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />&nbsp;
                    <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
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
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="color: #000080;">
                    username:
                    <asp:TextBox ID="usernameTextBox" runat="server" 
                        Text='<%# Bind("username") %>' />
                    <br />
                    date:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                    <br />
                    gender:
                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                    <br />
                    time:
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                    <br />
                    fname:
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    mname:
                    <asp:TextBox ID="mnameTextBox" runat="server" Text='<%# Bind("mname") %>' />
                    <br />
                    lname:
                    <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                    <br />
                    altmob:
                    <asp:TextBox ID="altmobTextBox" runat="server" Text='<%# Bind("altmob") %>' />
                    <br />
                    address:
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                    <br />
                    bgrp:
                    <asp:TextBox ID="bgrpTextBox" runat="server" Text='<%# Bind("bgrp") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table 
                    
                    
                    style="border-color: #999999; border-style: none; border-width: 1px; border-collapse: collapse; background-color: #FFFFFF;" 
                    runat="server">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    username:
                    <asp:TextBox ID="usernameTextBox" runat="server" 
                        Text='<%# Bind("username") %>' />
                    <br />
                    date:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                    <br />
                    gender:
                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                    <br />
                    time:
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                    <br />
                    fname:
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    mname:
                    <asp:TextBox ID="mnameTextBox" runat="server" Text='<%# Bind("mname") %>' />
                    <br />
                    lname:
                    <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                    <br />
                    altmob:
                    <asp:TextBox ID="altmobTextBox" runat="server" Text='<%# Bind("altmob") %>' />
                    <br />
                    address:
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                    <br />
                    bgrp:
                    <asp:TextBox ID="bgrpTextBox" runat="server" Text='<%# Bind("bgrp") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="color: #333333;">
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
                    <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                    <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
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

                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="font-weight: bold;color: #000080;">
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
                    <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                    <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    <br />
                    Mobile:
                    <asp:Label ID="altmobLabel" runat="server" Text='<%# Eval("altmob") %>' />
                    <br />
                    Address:
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                    <br />
                    Blood Group:
                    <asp:Label ID="bgrpLabel" runat="server" Text='<%# Eval("bgrp") %>' />
                </td>
            </SelectedItemTemplate>
</asp:ListView>
<br /><br />
&nbsp;&nbsp;&nbsp;
</center>
</div>
</asp:Content>

