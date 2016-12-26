CREATE TABLE [dbo].[Orders] (
    [OrderId]    INT             IDENTITY (1, 1) NOT NULL,
    [Address]    NVARCHAR (70)   NOT NULL,
    [City]       NVARCHAR (40)   NOT NULL,
    [Country]    NVARCHAR (40)   NOT NULL,
    [Email]      NVARCHAR (MAX)  NOT NULL,
    [FirstName]  NVARCHAR (160)  NOT NULL,
    [LastName]   NVARCHAR (160)  NOT NULL,
    [OrderDate]  DATETIME2 (7)   NOT NULL,
    [Phone]      NVARCHAR (24)   NOT NULL,
    [PostalCode] NVARCHAR (10)   NOT NULL,
    [State]      NVARCHAR (40)   NOT NULL,
    [Total]      DECIMAL (18, 2) NOT NULL,
    [Username]   NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderId] ASC)
);

