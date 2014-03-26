<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipes.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> Wicked Easy Recipes </title>

    <link rel="stylesheet" type="text/css" href="./css/StyleSheet1.css" />

</head>
<body>
    <form id="form1" runat="server">
    
        <div id="wrap">

        <h1> Wicked Easy Recipes </h1>
        <h2> Our Recipes </h2>
       
        <asp:SqlDataSource ID="RecipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipes %>" DeleteCommand="DELETE FROM [Table] WHERE [reID] = @reID" InsertCommand="INSERT INTO [Table] ([reName], [reSubmit], [reIngrdient1], [reIngredient2], [reIngredient3], [reIngredient4], [reIngredient5], [rePreperation], [reNotes]) VALUES (@reName, @reSubmit, @reIngrdient1, @reIngredient2, @reIngredient3, @reIngredient4, @reIngredient5, @rePreperation, @reNotes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [reName] = @reName, [reSubmit] = @reSubmit, [reIngrdient1] = @reIngrdient1, [reIngredient2] = @reIngredient2, [reIngredient3] = @reIngredient3, [reIngredient4] = @reIngredient4, [reIngredient5] = @reIngredient5, [rePreperation] = @rePreperation, [reNotes] = @reNotes WHERE [reID] = @reID">
            <DeleteParameters>
                <asp:Parameter Name="reID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIngrdient1" Type="String" />
                <asp:Parameter Name="reIngredient2" Type="String" />
                <asp:Parameter Name="reIngredient3" Type="String" />
                <asp:Parameter Name="reIngredient4" Type="String" />
                <asp:Parameter Name="reIngredient5" Type="String" />
                <asp:Parameter Name="rePreperation" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIngrdient1" Type="String" />
                <asp:Parameter Name="reIngredient2" Type="String" />
                <asp:Parameter Name="reIngredient3" Type="String" />
                <asp:Parameter Name="reIngredient4" Type="String" />
                <asp:Parameter Name="reIngredient5" Type="String" />
                <asp:Parameter Name="rePreperation" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
                <asp:Parameter Name="reID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
      
        <div id="links">

        <a href="default.aspx"> Home </a>
        &nbsp;<a href="Recipes.aspx"> View Recipes </a>
        &nbsp;<a href="newrecipe.aspx">Add Recipe </a>
        &nbsp;<a href="aboutus.aspx">About Us </a>
        &nbsp;<a href="contact.aspx"> Contact </a>

        </div>

        <br />
        <br />

        
        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" RowStyle-CssClass="row" AlternatingRowStyle-CssClass="alternate" AllowPaging ="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reID" DataSourceID="RecipeDataSource" Width="440px">
            <Columns>
                <asp:BoundField DataField="reName" HeaderText="Recipe Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submitted By" SortExpression="reSubmit" />
                <asp:HyperLinkField DataNavigateUrlFields="reID" DataNavigateUrlFormatString="recipedetails.aspx?reID={0}" Text="View Recipe" />
            </Columns>
        </asp:GridView>
            
        <br />
        <br />

        <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>

            <br />

        </div>

    </form>
</body>
</html>
