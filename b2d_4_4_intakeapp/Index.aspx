<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 292px;
        }
        .auto-style5 {
            width: 292px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            font-family: Arial, Helvetica, sans-serif;
            width: 100%;
        }
        .auto-style10 {
            font-family: Arial, Helvetica, sans-serif;
            width: 289px;
        }
        .auto-style11 {
            font-family: Arial, Helvetica, sans-serif;
            width: 289px;
            height: 26px;
        }
        .auto-style12 {
            font-family: Arial, Helvetica, sans-serif;
            width: 397px;
        }
        .auto-style13 {
            height: 26px;
            font-family: Arial, Helvetica, sans-serif;
            width: 397px;
        }
        .auto-style14 {
            width: 292px;
            height: 22px;
        }
        .auto-style15 {
            height: 22px;
        }
        .auto-style17 {
            width: 293px;
        }
        .auto-style18 {
            width: 388px;
        }
        .auto-style19 {
            margin-left: 80px;
        }
        .auto-style20 {
            margin-left: 320px;
        }
    </style>
</head>
<body style="height: 688px">
    <form id="inputNewItem" runat="server">
        <div class="auto-style19">
            <asp:Image ID="Image1" runat="server" Height="276px" ImageUrl="~/Images/Ruiolwinkel Vaals Logo.png" Width="316px" />
&nbsp;&nbsp;<br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">Category</td>
                    <td><asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID" OnSelectedIndexChanged="categoryChooser_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">Product</td>
                    <td> <asp:DropDownList ID="productChooser" runat="server" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductID"></asp:DropDownList>
                    </td>
                </tr>
            </table>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">Description</td>
                    <td class="auto-style15"> <input id="productDescription" type="text" style="height: 22px" /></td>
                </tr>
                <tr>
                    <td class="auto-style5"> </td>
                    <td class="auto-style6"> Status <!-- misschien automatiseren --></td>
                    <td class="auto-style6"><asp:DropDownList ID="statusChooser" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td> Image </td>
                    <td> <input id="articleImage" type="file" /></td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13">Commentary </td>
                    <td class="auto-style6"> <input id="commentary" type="text" /></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;
            <p class="auto-style20">
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=FR4NK3NST31N;Initial Catalog=RuilwinkelDB;Integrated Security=True" SelectCommand="SELECT * FROM [Categories]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=FR4NK3NST31N;Initial Catalog=RuilwinkelDB;Integrated Security=True" SelectCommand="SELECT * FROM [Statusses]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=FR4NK3NST31N;Initial Catalog=RuilwinkelDB;Integrated Security=True" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
