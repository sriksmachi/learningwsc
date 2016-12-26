CREATE TABLE [dbo].[OrderDetails] (
    [OrderDetailId] INT             IDENTITY (1, 1) NOT NULL,
    [AlbumId]       INT             NOT NULL,
    [OrderId]       INT             NOT NULL,
    [Quantity]      INT             NOT NULL,
    [UnitPrice]     DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED ([OrderDetailId] ASC),
    CONSTRAINT [FK_OrderDetails_Albums_AlbumId] FOREIGN KEY ([AlbumId]) REFERENCES [dbo].[Albums] ([AlbumId]) ON DELETE CASCADE,
    CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_OrderDetails_AlbumId]
    ON [dbo].[OrderDetails]([AlbumId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId]
    ON [dbo].[OrderDetails]([OrderId] ASC);

