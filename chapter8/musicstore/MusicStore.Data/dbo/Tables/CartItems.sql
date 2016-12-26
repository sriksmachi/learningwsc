CREATE TABLE [dbo].[CartItems] (
    [CartItemId]  INT            IDENTITY (1, 1) NOT NULL,
    [AlbumId]     INT            NOT NULL,
    [CartId]      NVARCHAR (MAX) NOT NULL,
    [Count]       INT            NOT NULL,
    [DateCreated] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED ([CartItemId] ASC),
    CONSTRAINT [FK_CartItems_Albums_AlbumId] FOREIGN KEY ([AlbumId]) REFERENCES [dbo].[Albums] ([AlbumId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CartItems_AlbumId]
    ON [dbo].[CartItems]([AlbumId] ASC);

