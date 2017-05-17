<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="LuxeComasterpage.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="ProductDataSource" ShowFooter="True">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ProductID" InsertVisible="False" SortExpression="ProductID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                </ItemTemplate>

               <FooterTemplate>
                   <asp:LinkButton OnClick="LinkBtnInsert_Click" ID="LinkBtnInsert" runat="server">Insert</asp:LinkButton>
               </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredValidator" runat="server" ErrorMessage="Name of product is REQUIRED!" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                <asp:TextBox ID="ProductTxtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredValidator" runat="server" ErrorMessage="Name of product is REQUIRED!" ControlToValidate="ProductTxtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductStock" SortExpression="ProductStock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductStock") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredValidator1" runat="server" ErrorMessage="Stock of product is REQUIRED!" ControlToValidate="TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductStock") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="ProductTxtStock" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredValidator1" runat="server" ErrorMessage="Stock of product is REQUIRED!" ControlToValidate="ProductTxtStock" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ProductPrice" SortExpression="ProductPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredValidator2" runat="server" ErrorMessage="Price of product is REQUIRED!" ControlToValidate="TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="ProductTxtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredValidator2" runat="server" ErrorMessage="Price of product is REQUIRED!" ControlToValidate="ProductTxtPrice" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Uploadfile.aspx?Id={0}" InsertVisible="False" Text="Set Image" />
        </Columns>
</asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="red" runat="server" />
<asp:SqlDataSource ID="ProductDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526897_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND [ProductStock] = @original_ProductStock AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))" InsertCommand="INSERT INTO [Product] ([ProductName], [ProductStock], [ProductPrice]) VALUES (@ProductName, @ProductStock, @ProductPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [ProductStock] = @ProductStock, [ProductPrice] = @ProductPrice WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND [ProductStock] = @original_ProductStock AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ProductID" Type="Int32" />
        <asp:Parameter Name="original_ProductName" Type="String" />
        <asp:Parameter Name="original_ProductStock" Type="Int32" />
        <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductStock" Type="Int32" />
        <asp:Parameter Name="ProductPrice" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductStock" Type="Int32" />
        <asp:Parameter Name="ProductPrice" Type="Decimal" />
        <asp:Parameter Name="original_ProductID" Type="Int32" />
        <asp:Parameter Name="original_ProductName" Type="String" />
        <asp:Parameter Name="original_ProductStock" Type="Int32" />
        <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
