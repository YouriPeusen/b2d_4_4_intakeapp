<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 291px;
        }
        .auto-style2 {
            width: 292px;
        }
        .auto-style3 {
            margin-left: 200px;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="inputNewItem" runat="server">
        <div>
            <table class="auto-style4" style="width:100%;">
                <tr>
                    <td class="auto-style1">Category</td>
                    <td>&nbsp;<asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Product</td>
                    <td> <asp:DropDownList ID="productChooser" runat="server" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Description</td>
                    <td> <input id="productDescription" type="text" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style4" style="width:100%;">
                <tr>
                    <td class="auto-style2">Status <!-- misschien automatiseren --></td>
                    <td><asp:DropDownList ID="statusChooser" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Statusses]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Image </td>
                    <td> <input id="articleImage" type="file" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Commentary </td>
                    <td> <input id="commentary" type="text" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;
            <p class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="inputButton_Clicked" CssClass="auto-style4" />
                <br />
            </p>
        </div>
    </form>
</body>
</html>
