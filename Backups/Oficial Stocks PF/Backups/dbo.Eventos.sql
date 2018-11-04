CREATE TABLE [dbo].[Eventos] (
    [Id]           INT           NOT NULL,
    [Evento_Nome]  NVARCHAR (50) NOT NULL,
    [Evento_Data]  DATETIME      NOT NULL,
    [Evento_Local] NVARCHAR (50) NOT NULL,
    [Evento_IMG]   BIT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

