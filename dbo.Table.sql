CREATE TABLE [dbo].[Table]
(
	[reID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [reName] NVARCHAR(50) NOT NULL, 
    [reSubmit] NVARCHAR(50) NOT NULL, 
    [reIngrdient1] NVARCHAR(50) NOT NULL, 
    [reIngredient2] NVARCHAR(50) NULL, 
    [reIngredient3] NVARCHAR(50) NULL, 
    [reIngredient4] NVARCHAR(50) NULL, 
    [reIngredient5] NVARCHAR(50) NULL, 
    [rePreperation] NVARCHAR(MAX) NOT NULL, 
    [reNotes] NVARCHAR(MAX) NULL
)
