<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="b2d_4_4_intakeapp.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="inputNewItem" runat="server">
        <div>
            Category <asp:DropDownList ID="categoryChooser" runat="server"></asp:DropDownList><br />
            Productname<input id="productName" type="text" /><br />
            Description <input id="productDescription" type="text" /><br />
            Status <!-- misschien automatiseren --><asp:DropDownList ID="statusChooser" runat="server"></asp:DropDownList><br />
            Image <input id="articleImage" type="file" /><br />
            
            <!-- providerId = ingelogde user of input
                loandate & experationdate op null oid
                
              -->

            <input id="inputButton" type="button" value="Submit" />
        </div>
    </form>
</body>
</html>
