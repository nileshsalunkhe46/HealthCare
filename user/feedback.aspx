<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="user_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="index-style-a">
<center>
  <asp:Label ID="Labelc" runat="server" Font-Names="centaur" 
            Font-Size="XX-Large" Text="Feedback" 
            Font-Bold="True"></asp:Label>
 </center>

        <div style="margin-left:20px; font-style: inherit;">
            <b><span style="font-size: medium;">Username:</span></b>
            <br />
        <asp:TextBox ID="txtusername" runat="server" Width="63%" readonly="True" ></asp:TextBox>
        </div>
        <div style="margin-left:20px; font-style: inherit;">
            <b><span style="font-size: medium;">Feedback:</span></b>
            <br />
            <asp:TextBox ID="txtFeedback" runat="server" Height="30%" TextMode="MultiLine" 
                Width="63%"></asp:TextBox>
&nbsp;<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*Required" ForeColor="Red" ControlToValidate="txtFeedback"></asp:RequiredFieldValidator>
        </div>
        <div style="margin-left:20px; font-style: inherit;">
        <asp:Button ID="btnSch" runat="server" Text="Submit" 
               CssClass="btn" Width="10%" onclick="btnSch_Click1" />
               </div>
</div>

</asp:Content>

