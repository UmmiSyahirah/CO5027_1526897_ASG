﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LuxeComasterpage.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <h4> ONLY FOR ADMINISTRATOR </h4>

    <h4>
    
   <asp:Label ID="labelUsername" runat="server" Text="Username:"></asp:Label>
   <asp:TextBox ID="textUsername" runat="server"></asp:TextBox>

    <br />

    <br />
    <asp:Label ID="labelPassword" runat="server" Text="Password:"></asp:Label>
   <asp:TextBox ID="textPassword" runat="server"></asp:TextBox>

    <br />
    <br />
    <asp:Button ID="btnLogin" runat="server" Text="Sign In" OnClick="btnLogin_Click" />
    <br />
    <br />
     
        
    <asp:Literal ID="LitText" runat="server"></asp:Literal>

    <br />
           </h4>
        

    <a href="https://validator.w3.org/nu/?doc=http%3A%2F%2F1526897.studentwebserver.co.uk%2Fco5027%2FLogin.aspx">HTML Validation</a>
</asp:Content>
