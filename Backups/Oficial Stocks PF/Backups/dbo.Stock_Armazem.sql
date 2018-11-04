CREATE TABLE [dbo].[Stock_Armazem] (
    [Id_stock]          INT           IDENTITY (1, 1) NOT NULL,
    [Stock_Referencia]  NVARCHAR (50) NOT NULL,
    [Stock_Nome]        NVARCHAR (50) NOT NULL,
    [Stock_Tamanho]     NVARCHAR (50) NOT NULL,
    [Stock_PVP]         NVARCHAR (50) NOT NULL,
    [Stock_precosemiva] NVARCHAR (50) NOT NULL,
    [Stock_Quantidade]  NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id_stock] ASC)
);

