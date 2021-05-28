﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="inputNewItem" runat="server">
        <div>
            Dit is een test<br />

            Category <asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            Product <asp:DropDownList ID="productChooser" runat="server" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            <br /> <!-- ergens een optie geven om een compleet nieuw product toe te voegen -->
            Description <input id="productDescription" type="text" /><br />
            Status <!-- misschien automatiseren --><asp:DropDownList ID="statusChooser" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Statusses]"></asp:SqlDataSource>
            <br />
            Image <input id="articleImage" type="file" /><br />
            
            <!-- providerId = ingelogde user of input
                loandate & experationdate op null oid
                
              -->
            Commentary <input id="commentary" type="text" /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="inputButton_Clicked" />
        </div>
    </form>
</body>
</html>
