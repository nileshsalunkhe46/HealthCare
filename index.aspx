<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div class="index-style">
    <div class="title-adjust">
        <asp:Label ID="Label2" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Here are the services that we provide " 
            Font-Bold="True"></asp:Label>
     </div>
        
        <div>
        <div class="index-menu">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/primary.jpg" CssClass="image"/>
                <asp:Label ID="Labela" runat="server" Text="Primary Care" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
            
        </div>
        
        <div class="index-menu">
         <asp:Image ID="Image2" runat="server" ImageUrl="~/images/special.jpg" CssClass="image" />
                <asp:Label ID="Label1" runat="server" Text="Specialty Care" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
                    </div>
         
         <div class="index-menu">
         <asp:Image ID="Image6" runat="server" ImageUrl="~/images/emergency.jpg" CssClass="image"/>
                <asp:Label ID="Label6" runat="server" Text="Emergency Care" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>
        </div>
            <br /><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Register with us " 
                Font-Names="centaur" Font-Size="X-Large"></asp:Label><br />
                <asp:Button ID="Button1" runat="server" Text="Register" PostBackUrl="~/registeruser.aspx" 
                CssClass="index-button" />
                <br /><br />
            <br />
        </div>
        
        
    </div>
</center>
        
    
</asp:Content>
