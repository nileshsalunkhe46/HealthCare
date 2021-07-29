<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <div class="index-style-a">
    <b><span>Forgot Your Password?</span></b>
    <b><span>
        <br />
        Enter your Email to receive password!<br />
        </span></b>
        &nbsp;Email: 
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ForeColor="Red" 
            ErrorMessage="*Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnSubmit" CssClass="index-button" runat="server" Text="Submit" 
            onclick="btnSubmit_Click" />
    </div>
    </center>
</asp:Content>

