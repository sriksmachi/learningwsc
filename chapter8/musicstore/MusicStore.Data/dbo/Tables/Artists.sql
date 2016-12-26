CREATE TABLE [dbo].[Artists] (
    [ArtistId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED ([ArtistId] ASC)
);

