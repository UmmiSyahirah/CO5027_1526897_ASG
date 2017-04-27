<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Privatepage.aspx.cs" Inherits="LuxeComasterpage.Privatepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Successfully login, you may browse our website.</p>
    <div style="margin-left: 520px">
        <asp:Button ID="BtnLogOut" runat="server" Text="Log Out" OnClick="BtnLogOut_Click" />
        <br />
        <br />
    </div>
</asp:Content>
