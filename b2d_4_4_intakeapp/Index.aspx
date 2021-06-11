<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Intake producten</title>
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
        .auto-style21 {
            width: 51%;
            position: absolute;
            left: -399px;
            top: 134px;
            font-family: Arial, Helvetica, sans-serif;
            margin-left: 1188px;
        }
        .auto-style22 {
            width: 255px;
            font-family: Arial, Helvetica, sans-serif;
            height: 26px;
        }
    </style>
</head>
<body>orm id="inputNewItem" runat="server">
      
        <div class="auto-style19" style="background-image: url('Images/Background intake.png')">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br /> <!-- ergens een optie geven om een compleet nieuw product toe te voegen -->
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            
          
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image1" runat="server" Height="273px" Width="293px" ImageUrl="~/Images/Ruiolwinkel Vaals Logo.png" ImageAlign="AbsMiddle" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style21">
                <tr>
                    <td>Add Image</td>
                    <td> <input id="articleImage0" runat="server" type="file" class="auto-style15" /></td>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="330px" Width="330px" />
                                   </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <!-- het uitkiezen voor welke user het toegevoegd moet worden -->
            <span class="auto-style15">User </span> <asp:DropDownList ID="userChooser" runat="server" DataSourceID="SqlDataSource5" DataTextField="FirstName" DataValueField="UserID" CssClass="auto-style15">
            </asp:DropDownList>
&nbsp;<br />
            <br />
            <table style="width:100%;" class="auto-style15">
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style14">Category</td>
                    <td class="auto-style12"> <asp:DropDownList ID="categoryChooser" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID" CssClass="auto-style15"></asp:DropDownList>
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
                    <td class="auto-style16">Commentary </td>
                    <td> <input id="commentary" runat="server" type="text" class="auto-style15" /></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style14">Product &nbsp;                   <td class="auto-style12"> <input r&nbsp;               </tr>
            </table>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style10">Product Product name                   <td class="auto-style15">

                        <input r<input runat="server" id="productName" type="text" class="auto-style15" />               </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</Product description                   <td> &nbsp;</<input runat="server" id="theProductDescription" type="text" class="auto-style15" />               </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style1"> &nbsp;</td>
                </tr>
            </table>
        <div id="addNewProduct" class="auto-style18" draggable="true">
            <p class="auto-style20">
            <br />
                <asp:Button ID="btnAddArticle" runat="server" Text="Voeg artikel toe" OnClick="inputButton_Clicked" CssClass="auto-style15" />
            &nbsp;<asp:Button ID="btnAddProduct" runat="server" Text="Submit" OnClick="addProductBtn_Clicked" CssClass="auto-style15" />
             <br />
            &nbsp;</p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Statusses]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

        </div>
        </div>
    </form>
    </body>
</html>
