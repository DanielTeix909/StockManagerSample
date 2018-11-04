CREATE TABLE [dbo].[reembolsos] (
    [Id]             INT           NOT NULL,
    [Referencia]     NVARCHAR (50) NOT NULL,
    [Nome]           NVARCHAR (50) NOT NULL,
    [PVP]            NVARCHAR (50) NOT NULL,
    [PrecoSemIva]    NVARCHAR (50) NOT NULL,
    [Data_Reembolso] NVARCHAR (50) NOT NULL,
    [Data_Compra]    NVARCHAR (50) NOT NULL,
    [LocalID]        INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_reembolsos_LocalVenda] FOREIGN KEY ([LocalID]) REFERENCES [dbo].[Locais_Venda] ([Id])
);

