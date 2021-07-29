
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registeruser.aspx.cs" Inherits="registeruser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript" type="text/javascript">

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<form id="regform" action="user/userindex.aspx" method="post">
<br />
<div class="index-style-a" >
    <div class="title-adjust">
        <center>
        <asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Register Here |" 
            Font-Bold="True"></asp:Label>
         <asp:HyperLink ID="HyperLink1" runat="server" style="text-decoration:none;color:Black;" NavigateUrl="~/login.aspx">
         
         <asp:Label ID="Label11" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Login" 
            Font-Bold="True"></asp:Label>
             </asp:HyperLink>
    
        </center>
     </div>
        
        <br />
        
        <div class="form-reg1" style="float:left;">
        <div style="margin-left:20px;">
            <asp:Label ID="username" runat="server" Text="Username" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter Username" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        </div>
        <div style="margin-left:20px;">
            <asp:Label ID="email" runat="server" Text="Email" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter valid email" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <br />
        
        </div>
        <br />
        <div style="margin-left: 20px">
            <asp:Label ID="pass" runat="server" Text="Password" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="mob" 
                Height="40px" Width="500px"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter Password" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <br />
        <br />
        </div>
        <div style="margin-left: 20px">
            <asp:Label ID="cpass" runat="server" Text="Confirm Password" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" CssClass="mob" 
                Height="40px" Width="500px"></asp:TextBox>
            <br />
            
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                ErrorMessage="*Password Mismatch" Font-Names="Arial Rounded MT Bold" 
                ForeColor="Red"></asp:CompareValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter Password" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        &nbsp;<br />
        <br />
        </div>
        
        </div>



         <div class="form-reg2"">
         <div style="margin-left:20px;" >
            <asp:Label ID="mobno" runat="server" Text="Mobile Number" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtmobile" runat="server" TextMode="SingleLine" CssClass="mob" 
                Height="40px" Width="500px" ViewStateMode="Disabled" MaxLength="10"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter valid email" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <br />
        <br />
        </div>
        <div>
            <asp:Label ID="sque" runat="server" Text="Security Question" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtseque" runat="server"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter Security Question" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        </div>
        <div>
            <asp:Label ID="sans" runat="server" Text="Security Answer" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtseqans" runat="server"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter Sequrity Answer" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <br />
        
        </div>
        <br />
        
        <p>Already have an account?<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/login.aspx">Login here!</asp:HyperLink></p>
          <table>
          <tr><td>   <asp:Button ID="btnres" runat="server" CssClass="btnX" Text="Reset" 
                 UseSubmitBehavior="False" onclick="btnres_Click" /></td>
                 <td>&nbsp;</td>
                 <td><asp:Button ID="btnsub" runat="server" Text="Submit" CssClass="btn" 
                 onclick="btnsub_Click" /></td>
                 </tr>
                 </table>
&nbsp;&nbsp;
             
            <br />
             <br />
             <br />
        </div>
       
       
       
       
</div>

      
        
        
    




    </form>  
</asp:Content>

