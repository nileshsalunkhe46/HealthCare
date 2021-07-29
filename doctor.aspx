<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctor.aspx.cs" Inherits="doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<div>
        <div class="index-menu"  style="width:45%;background-color:White;border-radius:20px;">
           <asp:Label ID="Label2" runat="server" Text="Admin Login" Font-Bold="True" 
        Font-Names="Centaur" Font-Size="XX-Large"></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Text="Username: " Font-Names="Centaur" Font-Size="X-Large" ></asp:Label>
            <asp:TextBox ID="admUser" runat="server" Width="350px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="admUser" 
                ValidationGroup="group1"></asp:RequiredFieldValidator><br />
                <asp:Label ID="Label5" runat="server" Text="Password: " Font-Names="Centaur" Font-Size="X-Large" ></asp:Label>&nbsp;
             <asp:TextBox ID="admPass" runat="server" Width="350px" Height="40px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="admPass" 
                ValidationGroup="group1"></asp:RequiredFieldValidator><br /><br />
                <asp:Button ID="admLog" runat="server" Text="Admin Login" 
                 CssClass="index-button" onclick="admLog_Click" 
                ValidationGroup="group1" />

                
                 
        </div>
        
         &nbsp;&nbsp;
         <div class="index-menu" style="width:45%;background-color:White;border-radius:20px;">
         <asp:Label ID="Label1" runat="server" Text="Doctor Login" Font-Bold="True" 
        Font-Names="Centaur" Font-Size="XX-Large"></asp:Label><br />
            
        
        
        
         <asp:Label ID="Label4" runat="server" Text="Username: " Font-Names="Centaur" Font-Size="X-Large" ></asp:Label>
            <asp:TextBox ID="docUser" runat="server" Width="350px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ErrorMessage="*Required" Font-Bold="True" ForeColor="Red" 
                 ControlToValidate="docUser" ValidationGroup="group2"></asp:RequiredFieldValidator><br />
                 <asp:Label ID="Label6" runat="server" Text="Password: " Font-Names="Centaur" Font-Size="X-Large" ></asp:Label>&nbsp;
             <asp:TextBox ID="docPass" runat="server" Width="350px" Height="40px" 
                 TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="*Required" ForeColor="Red" ControlToValidate="docPass" 
                 ValidationGroup="group2"></asp:RequiredFieldValidator><br /><br />
                <asp:Button ID="docLog" runat="server" Text="Doctor Login" 
                  CssClass="index-button" ValidationGroup="group2" 
                 onclick="docLog_Click" />
                
        </div>
           
            
        </div>
</center>
</asp:Content>

