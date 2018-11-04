CREATE PROCEDURE [dbo].[CRUD_Eventos]
	@acao VARCHAR(10)
		   ,@id INT = NULL
		    ,@Evento_Nome INT = NULL
      ,@Evento_Local INT = NULL
     ,@Evento_Data INT = NULL
     ,@Evento_IMG INT = NULL


AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @acao = 'SELECT'
      BEGIN
            SELECT id,Evento_Nome, Evento_Local,Evento_Data,Evento_IMG
            FROM Eventos
      END
 
      --INSERT
    IF @acao = 'INSERT'
      BEGIN
            INSERT INTO Eventos(Evento_Nome, Evento_Local,Evento_Data,Evento_IMG)
            VALUES (@Evento_Nome, @Evento_Local, @Evento_Data, @Evento_IMG)
      END
 
      --UPDATE
    IF @acao = 'UPDATE'
      BEGIN
            UPDATE Eventos
            SET Evento_Nome=@Evento_Nome, Evento_Local=@Evento_Local, Evento_Data=@Evento_Data, Evento_IMG=@Evento_IMG
            WHERE Id = @id
      END
 
      --DELETE
    IF @acao = 'DELETE'
      BEGIN
            DELETE FROM Eventos
            WHERE Id = @id
      END
END