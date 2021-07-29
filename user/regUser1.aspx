<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="regUser1.aspx.cs" Inherits="user_regUser1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="regform" method="post">
        <asp:Label ID="lblwelcome" runat="server" class="title-name" Font-Bold="False" 
                    Font-Names="helevetica,centaur" Font-Size="Medium" ForeColor="#1D3667" 
                    Text="Welcome:     "></asp:Label>
                &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [mname], [fname], [lname], [altmob] FROM [register]"></asp:SqlDataSource>
<br />
<div class="index-style-a" >
    <div class="title-adjust">
        <center>
        
                
        <asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Personal Details" 
            Font-Bold="True"></asp:Label>
                <br />
                <br />
         
        </center>
     </div>
        
        <br />
        
        <div class="form-reg1"  align="center" >
        <div style="margin-left:20px;">
            <asp:Label ID="lblfname" runat="server" Text="First Name" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="txtfname" ErrorMessage="*Enter First Name" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        </div>
        <div style="margin-left:20px;">
            <asp:Label ID="lblmname" runat="server" Text="Middle Name" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="txtmname" ErrorMessage="*Enter Middle Name" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <br />
        
        </div>
        <br />
        <div style="margin-left: 20px">
            <asp:Label ID="lbllname" runat="server" Text="Last Name" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtlname" runat="server" class="mob" 
                Height="40px" Width="500px"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ControlToValidate="txtlname" ErrorMessage="*Enter Last Name" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <br />
        <br />
        </div>
        <div style="margin-left: 20px">
            <asp:Label ID="lblaltmob" runat="server" Text="Mobile No.(Alternate)" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtaltmob" runat="server" class="mob" placeholder="Optional"
                Height="40px" Width="500px"></asp:TextBox>
            <br />
            
        &nbsp;<br />
        </div>

        <div style="margin-left: 20px">
            <asp:Button ID="forward1" runat="server" Text=">" CssClass="forward" 
                Font-Bold="True" Font-Size="X-Large" Height="58px" Width="62px" 
                onclick="forward1_Click"/>
            <br />
            
        &nbsp;<br />
        </div>
        <br />
        </div>



         
       
       
       
       
</div>

      
        
        
    




    </form>  

    </form>

</asp:Content>

