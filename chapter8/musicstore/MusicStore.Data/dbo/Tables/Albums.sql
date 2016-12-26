CREATE TABLE [dbo].[Albums] (
    [AlbumId]     INT             IDENTITY (1, 1) NOT NULL,
    [AlbumArtUrl] NVARCHAR (1024) NULL,
    [ArtistId]    INT             NOT NULL,
    [Created]     DATETIME2 (7)   NOT NULL,
    [GenreId]     INT             NOT NULL,
    [Price]       DECIMAL (18, 2) NOT NULL,
    [Title]       NVARCHAR (160)  NOT NULL,
    CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED ([AlbumId] ASC),
    CONSTRAINT [FK_Albums_Artists_ArtistId] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artists] ([ArtistId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Albums_Genres_GenreId] FOREIGN KEY ([GenreId]) REFERENCES [dbo].[Genres] ([GenreId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Albums_ArtistId]
    ON [dbo].[Albums]([ArtistId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Albums_GenreId]
    ON [dbo].[Albums]([GenreId] ASC);

