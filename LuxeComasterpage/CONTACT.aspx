<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CONTACT.aspx.cs" Inherits="LuxeComasterpage.CONTACT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <h4> Be LUXE with us </h4>
    <h4>
         <asp:Label ID="lblFirstname" runat="server" Text="First Name: "></asp:Label>
    <br />
        <asp:TextBox ID="txtFirst" runat="server" Width="234px"></asp:TextBox>
    
    <br />
    
    <br />
        <asp:Label ID="lblLastname" runat="server" Text="Last Name:"></asp:Label>
    <br />
        <asp:TextBox ID="txtLast" runat="server" Width="234px"></asp:TextBox>
    <br />

     <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
     <br />
        <asp:TextBox ID="txtEmail" runat="server" Width="234px"></asp:TextBox>
    <br />
    <br />
        <asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label> 
     <br />
        <asp:TextBox ID="txtPhone" runat="server" Width="234px"></asp:TextBox>
    <br />
    <br />

        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
    <br />
        <asp:TextBox ID="TxtSubject" runat="server" Width="232px"></asp:TextBox>
    <br />
    <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
    <br />
       <asp:TextBox ID="TxtMessage" runat="server" Height="88px" Width="235px"></asp:TextBox>
    <br />
    <br />
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit Form" OnClick="SubmitButton1_Click" />

    <br />
    <asp:Literal ID="litMessage" runat="server"></asp:Literal>

        </h4>

    <div id="maps"></div>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwkXlNqZlpZzY8nIZ6EJ77s-2VUJfp-qw&callback=initMaps">
    </script>
    <script src="maps.js"></script>

    <a href="https://validator.w3.org/nu/?doc=http%3A%2F%2F1526897.studentwebserver.co.uk%2Fco5027%2FCONTACT.aspx"> HTML Validation </a>
 
</asp:Content>
