<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CONTACT.aspx.cs" Inherits="LuxeComasterpage.CONTACT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <h4> Be LUXE with us </h4>

    <h4 class="auto-style1">
         <asp:Label ID="lblFirstname" runat="server" Text="First Name: "></asp:Label>
    <br />
        <asp:TextBox ID="txtFirst" runat="server" Width="234px" OnTextChanged="txtFirst_TextChanged"></asp:TextBox>
    
        </h4>
<h4 class="auto-style1">
    
         <asp:RequiredFieldValidator ID="ReqValFirst" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="txtFirst" ForeColor="Red"></asp:RequiredFieldValidator>
    
    <br />
    
    <br />
        <asp:Label ID="lblLastname" runat="server" Text="Last Name:"></asp:Label>
    <br />
        <asp:TextBox ID="txtLast" runat="server" Width="234px"></asp:TextBox>

        </h4>
<h4 class="auto-style1">
         <asp:RequiredFieldValidator ID="ReqValLast" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="txtLast" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />

     <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
     <br />
        <asp:TextBox ID="txtEmail" runat="server" Width="234px" OnTextChanged="txtEmail_TextChanged" TextMode="Email"></asp:TextBox>

        </h4>
<h4 class="auto-style1">
         <asp:RequiredFieldValidator ID="ReqValEmail" runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
        <asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label> 
     <br />
        
        <asp:TextBox ID="txtPhone" runat="server" Width="234px" TextMode="Phone"></asp:TextBox>

        </h4>
<h4 class="auto-style1">
         <asp:RequiredFieldValidator ID="ReqValPhone" runat="server" ErrorMessage="Please enter your phone number" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />

        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
    <br />
      
        <asp:TextBox ID="TxtSubject" runat="server" Width="232px"></asp:TextBox>

        </h4>
<h4 class="auto-style1">
         <asp:RequiredFieldValidator ID="ReqValSub" runat="server" ErrorMessage="Please fill in the subject" ControlToValidate="TxtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
    <br />
       <asp:TextBox ID="TxtMessage" runat="server" Height="88px" Width="235px"></asp:TextBox>

        </h4>
<h4 class="auto-style1">
         <asp:RequiredFieldValidator ID="ReqValMsg" runat="server" ErrorMessage="Please fill in the message content" ControlToValidate="TxtMessage" ForeColor="Red"></asp:RequiredFieldValidator>
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
