<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Contact </title>

    <link rel="stylesheet" type="text/css" href="./css/StyleSheet1.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrap">

        <h1> Wicked Easy Recipes </h1>
        <h2> Contact </h2>
        

        <div id="links">

        <a href="default.aspx"> Home </a>
        &nbsp;<a href="Recipes.aspx"> View Recipes </a>
        &nbsp;<a href="newrecipe.aspx">Add Recipe </a>
        &nbsp;<a href="aboutus.aspx">About Us </a>
        &nbsp;<a href="contact.aspx"> Contact </a>

        </div>

        <br />
        <br />

        <div id="contact">

        Email:<br />
            <br />
        <asp:TextBox ID="EmailTextbox" runat="server" Width="234px"></asp:TextBox>
        <br />
        <br />
        Message:<br />
            <br />
        <asp:TextBox ID="MessageTB" runat="server" Height="89px" Width="299px" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="MessageButton" runat="server" Text="Send Message" />
        <br />
        <br />
        <br />

        <br />
        <br />


        </div>
        
         <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>

    
      </div>

    </form>
</body>
</html>
