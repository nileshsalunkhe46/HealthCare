<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="plist.aspx.cs" Inherits="admin_plist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="index-style-a">
   <center> 
   <asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Patient List" 
            Font-Bold="True"></asp:Label>
            </center>
            <center>
      <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                </td>
                <td>
                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                </td>
                <td>
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                </td>
                <td>
                    <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                </td>
                <td>
                    <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                </td>
                <td>
                    <asp:Label ID="altmobLabel" runat="server" Text='<%# Eval("altmob") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="bgrpLabel" runat="server" Text='<%# Eval("bgrp") %>' />
                </td>
                <td>
                    <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="usernameTextBox" runat="server" 
                        Text='<%# Bind("username") %>' />
                </td>
                <td>
                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                </td>
                <td>
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mnameTextBox" runat="server" Text='<%# Bind("mname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="altmobTextBox" runat="server" Text='<%# Bind("altmob") %>' />
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="bgrpTextBox" runat="server" 
                        Text='<%# Bind("bgrp") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="usernameTextBox" runat="server" 
                        Text='<%# Bind("username") %>' />
                </td>
                <td>
                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                </td>
                <td>
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mnameTextBox" runat="server" Text='<%# Bind("mname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="altmobTextBox" runat="server" Text='<%# Bind("altmob") %>' />
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="bgrpTextBox" runat="server" 
                        Text='<%# Bind("bgrp") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                </td>
                <td>
                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                </td>
                <td>
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                </td>
                <td>
                    <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                </td>
                <td>
                    <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                </td>
                <td>
                    <asp:Label ID="altmobLabel" runat="server" Text='<%# Eval("altmob") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="bgrpLabel" runat="server" Text='<%# Eval("bgrp") %>' />
                </td>
                <td>
                    <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">
                                    username</th>
                                <th runat="server">
                                    gender</th>
                                <th runat="server">
                                    fname</th>
                                <th runat="server">
                                    mname</th>
                                <th runat="server">
                                    lname</th>
                                <th runat="server">
                                    altmob</th>
                                <th runat="server">
                                    address</th>
                                <th runat="server">
                                    bgrp</th>
                                <th runat="server">
                                    dob</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server">
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
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                </td>
                <td>
                    <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                </td>
                <td>
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                </td>
                <td>
                    <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                </td>
                <td>
                    <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                </td>
                <td>
                    <asp:Label ID="altmobLabel" runat="server" Text='<%# Eval("altmob") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="bgrpLabel" runat="server" Text='<%# Eval("bgrp") %>' />
                </td>
                <td>
                    <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [profile]"></asp:SqlDataSource>
   </center> 
 
</div>
</asp:Content>

