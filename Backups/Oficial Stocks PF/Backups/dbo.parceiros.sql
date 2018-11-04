CREATE TABLE [dbo].[parceiros] (
    [Id]                 INT           NOT NULL,
    [nome_empresa]       NVARCHAR (50) NOT NULL,
    [referencia_empresa] NVARCHAR (50) NOT NULL,
    [tipo_servico]       NVARCHAR (50) NOT NULL,
    [LocalID]            INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_parceiros_LocalVenda] FOREIGN KEY ([LocalID]) REFERENCES [dbo].[Locais_Venda] ([Id])
);

