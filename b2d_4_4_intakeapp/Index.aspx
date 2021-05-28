<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 596px;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style5 {
            width: 311px;
        }
        .auto-style6 {
            width: 308px;
        }
        .auto-style7 {
            width: 270px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 268px;
        }
        .auto-style11 {
            height: 23px;
            width: 311px;
        }
        .auto-style13 {
            margin-left: 597px;
        }
        .auto-style14 {
            width: 311px;
            height: 22px;
        }
        .auto-style15 {
            height: 22px;
        }
        .auto-style17 {
            height: 23px;
            width: 270px;
        }
        .auto-style18 {
            height: 22px;
            width: 270px;
        }
    </style>
</head>
<body>
    <form id="inputNewItem" runat="server">
<<<<<<< Updated upstream
        <div id="addNewArticle">
           
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
=======
        <div class="auto-style1">
            &nbsp;<asp:Image ID="Image1" runat="server" Height="298px" />
            <br />
            &nbsp;<br /> <!-- ergens een optie geven om een compleet nieuw product toe te voegen -->
            <br />
>>>>>>> Stashed changes
            <br />
            <br />
            
            <!-- providerId = ingelogde user of input
                loandate & experationdate op null oid
                
              -->
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">Category</td>
                    <td> <asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID" CssClass="auto-style8"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">Product</td>
                    <td> <asp:DropDownList ID="productChooser" runat="server" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductID" CssClass="auto-style2"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">Description </td>
                    <td> <input id="productDescription" type="text" /></td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">Status <!-- misschien automatiseren --></td>
                    <td><asp:DropDownList ID="statusChooser" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID" OnSelectedIndexChanged="statusChooser_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">Image </td>
                    <td> <input id="articleImage" runat="server" type="file" /></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">Commentary </td>
                    <td> <input id="commentary" runat="server" type="text" /></td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">Category </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style17">Product name </td>
                    <td class="auto-style3"> <input runat="server" id="productName" type="text" /></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style18">Product description</td>
                    <td class="auto-style15"> <input runat="server" id="theProductDescription" type="text" /></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=FR4NK3NST31N;Initial Catalog=RuilwinkelDB;Integrated Security=True" SelectCommand="SELECT * FROM [Categories]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=FR4NK3NST31N;Initial Catalog=RuilwinkelDB;Integrated Security=True" SelectCommand="SELECT * FROM [Statusses]" ProviderName="<%$ ConnectionStrings:RuilwinkelDBConnectionString.ProviderName %>"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=FR4NK3NST31N;Initial Catalog=RuilwinkelDB;Integrated Security=True" SelectCommand="SELECT * FROM [Products]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        </div>

        <!-- het toevoegen van een nieuw product, waarmee een nieuw artikel kan worden aangemaakt -->
        <div id="addNewProduct">
            <br />

             <br />
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="inputButton_Clicked" CssClass="auto-style13" />
             <br />

        </div>
    </form>

</body>
</html>
