 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="index-style-a" >
    <div class="title-adjust">
        <center>
        
                
        <asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Login Here" 
            Font-Bold="True"></asp:Label>
         
        </center>
     </div>
        
        <br />
        
        <div class="form-reg1"  align="center" >
        <div style="margin-left:20px;">
            <asp:Label ID="lblfname" runat="server" Text="Username" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="*Enter Username" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        </div>
        <div style="margin-left:20px;">
            <asp:Label ID="lblmname" runat="server" Text="Password" Font-Size="Large" 
                Font-Bold="True" Font-Names="Open Sans Condensed Light"></asp:Label><br />
            <asp:TextBox ID="txtpassword" runat="server" CssClass="mob" TextMode="Password"></asp:TextBox>
            <br />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="txtpassword" ErrorMessage="*Enter Password" 
        Font-Names="Arial Rounded MT Bold" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <br />
        
        </div>
        

        <div style="margin-left: 20px; height: 56px;">
        <table>
           <tr>
           <td><asp:Button ID="btnsub" runat="server" Text="Submit" CssClass="btn" 
                 onclick="btnsub_Click" /></td>
                 <td>&nbsp;</td>
                 <td><asp:Button ID="btnres" runat="server" CssClass="btnX" Text="Reset" 
                 UseSubmitBehavior="False" onclick="btnres_Click" /></td>
                 </tr>
                 </table>  
        <p>Forgot password?<asp:HyperLink ID="HyperLink2" runat="server" 
                NavigateUrl="~/forgetpassword.aspx">Click here!</asp:HyperLink></p>

           
            <br />
            
        &nbsp;<br /><br /><br /><br />
        </div>
        <br />
        </div>



         
       
       
       
       
</div>


</asp:Content>

