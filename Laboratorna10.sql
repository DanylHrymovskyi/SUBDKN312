/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Код_чеку_товару]
      ,[Код_кольору_товару]
      ,[Табельний_номер]
      ,[Код_Товару]
      ,[Код_Магазину]
      ,[Дата_отримання_товару]
  FROM [SUBDLABA4].[dbo].[Чек_Товару1]


SELECT TOP (1000) [Код_Товару]
      ,[Назва]
      ,[Опис]
      ,[Ціна]
  FROM [SUBDLABA4].[dbo].[Товар_Новий]


CREATE FUNCTION TOVARFUNCT1 (@id AS int)
RETURNS nvarchar(500) AS 
BEGIN
DECLARE @returnValue nvarchar(500)
SELECT @returnValue = [Товар_Новий].[Назва] + ';'  + [Товар_Новий].[Опис] 
FROM [Товар_Новий] WHERE [Код_Товару] = @id
RETURN @returnValue
END



SELECT dbo.TOVARFUNCT1 (1) AS 'TOVARFUNCT'

CREATE PROCEDURE PROCEDUREFUNC1 @Назва AS nvarchar(50), @Опис AS nvarchar(50)
AS
INSERT INTO TOVARSTR12(Назва, Опис) VALUES (@Назва, @Опис);

EXEC TOVARFUNCT1 @Назва='Columbia', @Опис ='krosivky';
