<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LuxeComasterpage.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
    <h4> &nbsp;&nbsp;&nbsp;Register with Luxe & Co
        </h4>
    <h4>  

    <br />
      <asp:Label ID="LabelUsername" runat="server" Text="Username:"></asp:Label>
      <asp:TextBox ID="textUsername" runat="server" Width="150px"></asp:TextBox>
    
    
    <br />
    
    
    <br />
     <asp:Label ID="Labelmail" runat="server" Text="Email:"></asp:Label>
      <asp:TextBox ID="textEmail" runat="server" Width="150px"></asp:TextBox>
    <br />
    <br />
      <asp:Label ID="LabelPw" runat="server" Text="Password:"></asp:Label>
      <asp:TextBox ID="textPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
        </h4>
    <h4> 
    <br />

    <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />

    <br />
    <asp:Literal ID="LtrError" runat="server"></asp:Literal>
        </h4>

    
</asp:Content>
