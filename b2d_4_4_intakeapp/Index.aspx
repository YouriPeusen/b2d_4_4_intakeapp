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
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            width: 255px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style6 {
            height: 3px;
            width: 257px;
        }
        .auto-style7 {
            width: 257px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style9 {
            height: 3px;
            width: 213px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style10 {
            width: 213px;
            font-family: Arial, Helvetica, sans-serif;
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
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style15 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style16 {
            width: 216px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            width: 1551px;
            height: 170px;
        }
        .auto-style19 {
            height: 1080px;
            margin-left: 0px;
        }
        .auto-style20 {
            margin-left: 1360px;
        }
    </style>
</head>
<body>
    <form id="inputNewItem" runat="server">
        <div class="auto-style19" style="background-image: url('Images/Background intake.png')">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br /> <!-- ergens een optie geven om een compleet nieuw product toe te voegen -->
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            
            <!-- providerId = ingelogde user of input
                loandate & experationdate op null oid
                
              -->
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image1" runat="server" Height="273px" Width="293px" ImageUrl="~/Images/Ruiolwinkel Vaals Logo.png" ImageAlign="AbsMiddle" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table style="width:100%;" class="auto-style15">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style16">Category</td>
                    <td> <asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID" CssClass="auto-style15"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style16">Product </td>
                    <td> <asp:DropDownList ID="productChooser" runat="server" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductID" CssClass="auto-style15"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style16">Description </td>
                    <td> <input id="productDescription" type="text" class="auto-style15" /></td>
                </tr>
            </table>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style16">Status <!-- misschien automatiseren --></td>
                    <td><asp:DropDownList ID="statusChooser" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID" CssClass="auto-style15"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style16">Image </td>
                    <td> <input id="articleImage" runat="server" type="file" class="auto-style15" /></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style14">Commentary </td>
                    <td class="auto-style12"> <input id="commentary" runat="server" type="text" class="auto-style15" /></td>
                </tr>
            </table>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style10">Category </td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style10">Product name</td>
                    <td> <input runat="server" id="productName" type="text" class="auto-style15" /></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style9">Product description</td>
                    <td class="auto-style1"> <input runat="server" id="theProductDescription" type="text" class="auto-style15" /></td>
                </tr>
            </table>
        <div id="addNewProduct" class="auto-style18" draggable="true">
            <p class="auto-style20">
            <br />

            &nbsp;<asp:Button ID="btnAddProduct" runat="server" Text="Submit" OnClick="addProductBtn_Clicked" CssClass="auto-style15" />
             <br />
            &nbsp;</p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Statusses]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            <br />

        </div>
        </div>

        <!-- het toevoegen van een nieuw product, waarmee een nieuw artikel kan worden aangemaakt -->
    </form>
    </body>
</html>
