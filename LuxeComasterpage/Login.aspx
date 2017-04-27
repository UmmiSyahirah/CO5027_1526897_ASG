<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LuxeComasterpage.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <h4>
            SIGN IN


   
    <br />
    &nbsp&nbsp<asp:Label ID="labelUsername" runat="server" Text="Username:"></asp:Label>
    &nbsp&nbsp<asp:TextBox ID="textUsername" runat="server"></asp:TextBox>

    <br />

    <br />
    &nbsp&nbsp<asp:Label ID="labelPassword" runat="server" Text="Password:"></asp:Label>
    &nbsp&nbsp<asp:TextBox ID="textPassword" runat="server"></asp:TextBox>

    <br />
    <br />
   &nbsp&nbsp<asp:Button ID="btnLogin" runat="server" Text="Sign In" OnClick="btnLogin_Click" />
    <br />
    <br />

    <p> Not Luxe Member? Click <a href="Register.aspx">here</a> to register </p>
        </h4>
    <asp:Literal ID="LitText" runat="server"></asp:Literal>
    
</asp:Content>
