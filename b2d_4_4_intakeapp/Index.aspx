<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 3px;
        }
        .auto-style2 {
            width: 254px;
        }
        .auto-style3 {
            width: 255px;
        }
        .auto-style4 {
            width: 216px;
        }
        .auto-style6 {
            height: 3px;
            width: 257px;
        }
        .auto-style7 {
            width: 257px;
        }
        .auto-style9 {
            height: 3px;
            width: 213px;
        }
        .auto-style10 {
            width: 213px;
        }
        .auto-style11 {
            width: 254px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style14 {
            width: 216px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="inputNewItem" runat="server">
        <div>
            &nbsp;<asp:Image ID="Image1" runat="server" Height="206px" Width="242px" />
            <br />
            <br /> <!-- ergens een optie geven om een compleet nieuw product toe te voegen -->
            <br />
            <br />
            <br />
            
            <!-- providerId = ingelogde user of input
                loandate & experationdate op null oid
                
              -->
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">Category</td>
                    <td> <asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">Product </td>
                    <td> <asp:DropDownList ID="productChooser" runat="server" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductID"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">Description </td>
                    <td> <input id="productDescription" type="text" /></td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">Status <!-- misschien automatiseren --></td>
                    <td><asp:DropDownList ID="statusChooser" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">Image </td>
                    <td> <input id="articleImage" runat="server" type="file" /></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style14">Commentary </td>
                    <td class="auto-style12"> <input id="commentary" runat="server" type="text" /></td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style10">Category </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style10">Product name</td>
                    <td> <input runat="server" id="productName" type="text" /></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style9">Product description</td>
                    <td class="auto-style1"> <input runat="server" id="theProductDescription" type="text" /></td>
                </tr>
            </table>
        </div>

        <!-- het toevoegen van een nieuw product, waarmee een nieuw artikel kan worden aangemaakt -->
        <div id="addNewProduct">
            <br />

            &nbsp;<asp:Button ID="btnAddProduct" runat="server" Text="Submit" OnClick="addProductBtn_Clicked" />
             <br />
            &nbsp;<br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Statusses]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </div>
    </form>

</body>
</html>
