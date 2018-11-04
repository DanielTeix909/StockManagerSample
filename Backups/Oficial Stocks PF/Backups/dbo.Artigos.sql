CREATE TABLE [dbo].[Artigos] (
    [Id_Artigo]          INT           IDENTITY (1, 1) NOT NULL,
    [Artigo_Nome]        NVARCHAR (50) NOT NULL,
    [Artigo_Preco]       NVARCHAR (50) NOT NULL,
    [Artigo_Referencia]  NVARCHAR (50) NOT NULL,
    [Artigo_PVP]         NVARCHAR (50) NOT NULL,
    [Artigo_PrecoSemIva] NVARCHAR (50) NOT NULL,
    [Artigo_Quantidade]  NVARCHAR (50) NOT NULL,
    [Local_Nome]         NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id_Artigo] ASC)
);

