<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server" Visible="False">

<div class="index-style-a1">
        <center>
        
                
         <br />
            &nbsp;<b><span style="font-size: medium;">Scheduled Appintment only when you have updated your Profile details</span></b><asp:SqlDataSource 
                ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [profile] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="txtusername" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
         
        </center>

        <div style="margin-left:20px; font-style: inherit;">
            <b><span style="font-size: medium;">For </span></b>&nbsp;<br />
        
            
            &nbsp;
                    
        <asp:TextBox ID="txtusername" runat="server" Width="62%" readonly="True" ></asp:TextBox>
            <br /><br />
        </div>

        </div>
        
           <br />
        
     
        


<div class="index-style-a1">
       <div style="margin-left:20px; font-style: inherit;">
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />

        &nbsp;

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               SelectCommand="SELECT [age], [addr1], [addr2], [addr3], [pincode], [aller], [allergies], [bp], [cholestrol], [ecg], [history], [refrence] FROM [pprofile] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="txtusername" 
                        Type="String" />
                </SelectParameters>
           </asp:SqlDataSource>

            <br />
                <br />
                <asp:Button ID="btnSch" runat="server" Text="Schedule Appointment" 
               CssClass="btn" Width="204px" onclick="btnSch_Click" />
                <br />
           <br />

            <br />

        </div>    
       </div>
       
</asp:Content>

