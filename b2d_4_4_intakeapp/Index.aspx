﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=ImgPrv.ClientID%>').prop('src', e.target.result)
                        .width(240)
                        .height(150);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
</head>
<body>
    <title>Intake producten</title>
    <style type="text/css">
        .auto-style2 {
            width: 254px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            width: 255px;
            font-family: Arial, Helvetica, sans-serif;
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
            width: 191px;
            height: 94px;
        }
        .auto-style21 {
            width: 36%;
            position: absolute;
            left: -88px;
            top: 142px;
            font-family: Arial, Helvetica, sans-serif;
            margin-left: 1188px;
        }
        .auto-style22 {
            width: 255px;
            font-family: Arial, Helvetica, sans-serif;
            height: 26px;
        }
        .auto-style25 {
            width: 254px;
            font-family: Arial, Helvetica, sans-serif;
            height: 26px;
        }
        .auto-style26 {
            width: 504px;
        }
        .auto-style27 {
            width: 2265px;
        }
        .auto-style28 {
            width: 249px;
        }
        .auto-style29 {
            margin-left: 1360px;
            width: 191px;
            height: 51px;
        }
        .auto-style30 {
            width: 223px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
</body>

</html>
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
                    <td class="auto-style27">Add Image</td>
                    <td class="auto-style26"> <input id="articleImage0" runat="server" type="file" class="auto-style15" onchange="ShowImagePreview(this);" /></td>
                    <td>
                    <asp:Image ID="ImgPrv" Height="290px" Width="318px" runat="server" />
                                   </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User </span>
            <asp:DropDownList ID="userChooser" runat="server" CssClass="auto-style15" DataSourceID="SqlDataSource5" DataTextField="FirstName" DataValueField="UserID">
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <!-- het uitkiezen voor welke user het toegevoegd moet worden -->
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
                    <td><asp:DropDownList ID="statusChooser0" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatusName" DataValueField="StatusID" CssClass="auto-style15" OnSelectedIndexChanged="statusChooser_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style14">Commentary </td>
                    <td class="auto-style12"> <input id="commentary" runat="server" type="text" class="auto-style15" /></td>
                </tr>
                </table>
            <p class="auto-style29">
            <br />
                <asp:Button ID="btnAddArticle0" runat="server" Text="Voeg artikel toe" OnClick="inputButton_Clicked" CssClass="auto-style15" />
                <%--     &nbsp;<asp:Button ID="btnAddProduct" runat="server" Text="Submit" OnClick="addProductBtn_Clicked" CssClass="auto-style15" />--%></p>
            <table class="auto-style15" style="width:100%;">
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style30">Product name</td>
                    <td>
                        <asp:TextBox ID="productProductName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style30">Product Description</td>
                    <td>
                        <asp:TextBox ID="Productdicription" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        <div id="addNewProduct" class="auto-style18" draggable="true">
            <p class="auto-style20">
            <br />
                <%--     &nbsp;<asp:Button ID="btnAddProduct" runat="server" Text="Submit" OnClick="addProductBtn_Clicked" CssClass="auto-style15" />--%>
             <br />
            &nbsp;<asp:Button ID="addProductButton" runat="server" CssClass="auto-style15" OnClick="Button1_Click1" Text="Add Product" />
            </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Statusses]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RuilwinkelDBConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

        </div>
        </div>
    </form>
    </form>
    </body>
</html>
