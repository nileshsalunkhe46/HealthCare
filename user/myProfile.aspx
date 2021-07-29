<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="myProfile.aspx.cs" Inherits="user_myProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="index-style-a1">
        <center>
        
                
        <asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Your Profile" 
            Font-Bold="True"></asp:Label>
         
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT * FROM [profile] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="txtusername" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
         
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT * FROM [pprofile] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="txtusername" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
         
        </center>

        <div style="margin-left:20px; font-style: inherit;">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BorderColor="White" BorderStyle="None" BorderWidth="0px" 
                DataSourceID="SqlDataSource1" Height="50px" Width="268px" 
                EmptyDataText="Your Profile Doesn't Exit! Plese press below Update Button to Update Profile!">
                <CommandRowStyle BorderColor="White" BorderStyle="None" BorderWidth="0px" 
                    Font-Bold="True" Font-Names="Gulim" Font-Size="Medium" />
                <EmptyDataRowStyle BorderColor="#66FF33" BorderStyle="Solid" BorderWidth="2px" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="Red" />
                <Fields>
                    <asp:BoundField DataField="username" HeaderText="Username" 
                        SortExpression="username">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fname" HeaderText="First Name" 
                        SortExpression="fname">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="mname" HeaderText="Middle Name" 
                        SortExpression="mname">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="altmob" HeaderText="Alternate Mobile" 
                        SortExpression="altmob">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="Address" 
                        SortExpression="address">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="bgrp" HeaderText="Blood Group" SortExpression="bgrp">
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob">
                    <ItemStyle BorderStyle="None" Font-Size="Medium" />
                    </asp:BoundField>
                </Fields>
            </asp:DetailsView>
     
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                BorderColor="White" BorderStyle="None" BorderWidth="0px" 
                DataSourceID="SqlDataSource2" Height="50px" Width="268px" 
                
                EmptyDataText="Your Profile Doesn't Exit! Plese press below Update Button to Update Profile!" 
                HorizontalAlign="Justify">
                <CommandRowStyle BorderColor="White" BorderStyle="None" BorderWidth="0px" 
                    Font-Bold="True" Font-Names="Gulim" Font-Size="Medium" />
                <EmptyDataRowStyle BorderColor="#66FF33" BorderStyle="Solid" BorderWidth="2px" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="Red" />
                <Fields>
                    <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age">
                    <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>

                    <asp:BoundField DataField="addr1" HeaderText="Address" 
                        SortExpression="addr1">
                        <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="addr2" HeaderText=" " 
                        SortExpression="addr2">
                        <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="addr3" HeaderText=" " SortExpression="addr3">
                    <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                        SortExpression="pincode">
                        <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="aller" HeaderText="Have any Allergies" 
                        SortExpression="aller">
                        <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="allergies" HeaderText="Mention Allergies" 
                        SortExpression="allergies">
                        <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="bp" HeaderText="Blood Pressure" SortExpression="bp">
                    <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="cholestrol" HeaderText="High Cholestrol" 
                        SortExpression="cholestrol" >
                    <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ecg" HeaderText="Abnormal ECG" SortExpression="ecg" >
                    <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="history" HeaderText="History" 
                        SortExpression="history" >
                    <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="refrence" HeaderText="Doctor Refered By" 
                        SortExpression="refrence" >
                    <ItemStyle Font-Bold="True" Font-Size="Medium" />
                    </asp:BoundField>
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
        </div>
        <div style="margin-left:20px;">
          
            <table align="right">
              <tr>
                <td><asp:Button ID="btnProfile" runat="server" Text="Update" CssClass="btn" 
                onclick="btnUpdate_Click" PostBackUrl="~/user/profile.aspx" /></td>
              </tr>
             </table>
         </div>
    
</div>
</asp:Content>

