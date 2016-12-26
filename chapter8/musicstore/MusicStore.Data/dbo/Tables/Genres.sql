CREATE TABLE [dbo].[Genres] (
    [GenreId]     INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    [Name]        NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED ([GenreId] ASC)
);

