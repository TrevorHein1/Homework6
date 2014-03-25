<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newrecipe.aspx.vb" Inherits="detailsviewt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipes %>" DeleteCommand="DELETE FROM [Table] WHERE [reID] = @reID" InsertCommand="INSERT INTO [Table] ([reName], [reSubmit], [reIngrdient1], [reIngredient2], [reIngredient3], [reIngredient4], [reIngredient5], [rePreperation], [reNotes]) VALUES (@reName, @reSubmit, @reIngrdient1, @reIngredient2, @reIngredient3, @reIngredient4, @reIngredient5, @rePreperation, @reNotes)" SelectCommand="SELECT * FROM [Table] WHERE ([reID] = @reID)" UpdateCommand="UPDATE [Table] SET [reName] = @reName, [reSubmit] = @reSubmit, [reIngrdient1] = @reIngrdient1, [reIngredient2] = @reIngredient2, [reIngredient3] = @reIngredient3, [reIngredient4] = @reIngredient4, [reIngredient5] = @reIngredient5, [rePreperation] = @rePreperation, [reNotes] = @reNotes WHERE [reID] = @reID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="reID" QueryStringField="reID" Type="Int32" />
            </SelectParameters>
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
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="reID" DataSourceID="SqlDataSource1" Height="50px" Width="292px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="reName" HeaderText="Recipe Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submitted By" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIngrdient1" HeaderText="Ingredient #1" SortExpression="reIngrdient1" />
                <asp:BoundField DataField="reIngredient2" HeaderText="Ingredient #2" SortExpression="reIngredient2" />
                <asp:BoundField DataField="reIngredient3" HeaderText="Ingredient #3" SortExpression="reIngredient3" />
                <asp:BoundField DataField="reIngredient4" HeaderText="Ingredient #4" SortExpression="reIngredient4" />
                <asp:BoundField DataField="reIngredient5" HeaderText="Ingredient #5" SortExpression="reIngredient5" />
                <asp:BoundField DataField="rePreperation" HeaderText="Preperation" SortExpression="rePreperation" />
                <asp:BoundField DataField="reNotes" HeaderText="Notes" SortExpression="reNotes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
