<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CONTACT.aspx.cs" Inherits="LuxeComasterpage.CONTACT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-size: small;
    }
        #Text7 {
            height: 145px;
            width: 287px;
        }
        .auto-style2 {
            width: 289px;
            height: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2> Be LUXE with us </h2>
    <span class="auto-style1">
        First Name: <input id="Text1" type="text" /><br />
    </span><br />
    <span class="auto-style1">
     Last Name: <input id="Text2" type="text" /><br />
    <br />
     Username:
    <input id="Text5" type="text" /><br />
    <br />
    Password:
    <input id="Text6" type="text" /><br />
    </span><br />
    <span class="auto-style1">     
        Email:<input id="Text3" type="text" /><br />
    </span><br />  
    <span class="auto-style1">     
        Phone No: <input id="Text4" type="text" /></span><br />
    <br class="auto-style1" />
  
    <br />
   
    <input id="Submit1" type="submit" value="submit" /><br />
    <br />
    <br />
    <br />
    <br />
    
 
</asp:Content>
