CREATE TABLE [dbo].[Locais_Venda] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Local_Nome] NVARCHAR (50) NOT NULL,
    [Local_Zona] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

