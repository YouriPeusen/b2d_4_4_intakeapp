<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 254px;
            font-family: Arial, Helvetica, sans-serif;
            height: 26px;
        }
        .auto-style3 {
            width: 255px;
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
            z-index: -1;
        }
        .auto-style20 {
            margin-left: 1360px;
        }
        .auto-style26 {
            width: 221px;
            height: 22px;
        }
        .auto-style27 {
            width: 148px;
            height: 22px;
        }
        .auto-style29 {
            width: 38%;
            position: relative;
            left: 817px;
            top: -602px;
        }
        .auto-style30 {
            width: 148px;
            height: 24px;
        }
        .auto-style31 {
            font-family: Arial, Helvetica, sans-serif;
            height: 24px;
        }
        .auto-style32 {
            width: 221px;
            height: 24px;
        }
        .auto-style33 {
            width: 148px;
            height: 19px;
        }
        .auto-style34 {
            height: 19px;
        }
        .auto-style35 {
            width: 221px;
            height: 19px;
        }
        .auto-style36 {
            height: 22px;
        }
        .auto-style37 {
            font-family: Arial, Helvetica, sans-serif;
            width: 169px;
            height: 18px;
            table-layout: auto;
        }
        .auto-style38 {
            width: 255px;
            font-family: Arial, Helvetica, sans-serif;
            height: 25px;
        }
        .auto-style39 {
            width: 254px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style40 {
            width: 216px;
            height: 25px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style41 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="inputNewItem" runat="server">
        <div class="auto-style19" style="background-image: url('Images/Background intake.png')">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br /> <!-- ergens een optie geven om een compleet nieuw product toe te voegen -->
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            
            <!-- providerId = ingelogde user of input
                loandate & experationdate op null oid
                
              -->
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="273px" Width="293px" ImageUrl="~/Images/Ruiolwinkel Vaals Logo.png" ImageAlign="Top" style="position: relative" />
            <span class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="281px" Width="336px" />
            <br />
            <br />
            
&nbsp;<table style="width:100%;" class="auto-style15">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style16">Category</td>
                    <td> <asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID" CssClass="auto-style15"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"></td>
                    <td class="auto-style40">Product </td>
                    <td class="auto-style41"> <asp:DropDownList ID="productChooser" runat="server" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductID" CssClass="auto-style15"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style16">Status <!-- misschien automatiseren --> </td>
                    <td> <asp:DropDownList ID="statusChooser" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID" CssClass="auto-style15"></asp:DropDownList>
                    </td>
                </tr>
            </table>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style14">Product name</td>
                    <td class="auto-style12">
                        <input runat="server" id="productName" type="text" class="auto-style15" /></td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style16" aria-relevant="all" aria-sort="none" draggable="false" style="vertical-align: top">Product description</td>
                    <td> <input id="productDescription" type="text" class="auto-style37" style="vertical-align: text-top;" /></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style12"> &nbsp;</td>
                </tr>
            </table>
        <div id="addNewProduct" class="auto-style18" draggable="true">
            <p class="auto-style20">
            <br />

            &nbsp;<asp:Button ID="btnAddProduct" runat="server" Text="Submit" OnClick="addProductBtn_Clicked" CssClass="auto-style15" />
             <br />
            &nbsp;</p>
            <span class="auto-style15">
            <table class="auto-style29">
                <tr>
                    <td class="auto-style30">
            <span class="auto-style15">
                        Kies een afbeelding</span></td>
                    <td class="auto-style31">
            <span class="auto-style15">
                        <input id="articleImage" runat="server" type="file" class="auto-style15" /></span></td>
                    <td class="auto-style32">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
            <span class="auto-style15">
                        Maak een foto</span></td>
                    <td class="auto-style34">&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Maak Foto" Width="89px" />
                    </td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                    <td class="auto-style36"></td>
                    <td class="auto-style26"></td>
                </tr>
            </table>
            </span>
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
