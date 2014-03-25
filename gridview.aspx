<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="RecipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipes %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reID" DataSourceID="RecipeDataSource">
            <Columns>
                <asp:BoundField DataField="reID" HeaderText="reID" InsertVisible="False" ReadOnly="True" SortExpression="reID" />
                <asp:BoundField DataField="reName" HeaderText="reName" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="reSubmit" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIngrdient1" HeaderText="reIngrdient1" SortExpression="reIngrdient1" />
                <asp:BoundField DataField="reIngredient2" HeaderText="reIngredient2" SortExpression="reIngredient2" />
                <asp:BoundField DataField="reIngredient3" HeaderText="reIngredient3" SortExpression="reIngredient3" />
                <asp:BoundField DataField="reIngredient4" HeaderText="reIngredient4" SortExpression="reIngredient4" />
                <asp:BoundField DataField="reIngredient5" HeaderText="reIngredient5" SortExpression="reIngredient5" />
                <asp:BoundField DataField="rePreperation" HeaderText="rePreperation" SortExpression="rePreperation" />
                <asp:BoundField DataField="reNotes" HeaderText="reNotes" SortExpression="reNotes" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
