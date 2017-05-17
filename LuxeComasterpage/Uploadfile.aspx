<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Uploadfile.aspx.cs" Inherits="LuxeComasterpage.Uploadfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="Upload" runat="server" />

    <asp:Button ID="UploadBtn" runat="server" Text="Upload Photo" OnClick="UploadBtn_Click" />

    <asp:Image ID="Photo" runat="server" />
</asp:Content>
