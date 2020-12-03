/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Табельний_номер]
      ,[Код_Посади]
      ,[Прізвище]
      ,[Ім'я]
      ,[По-батькові]
      ,[Дата_прийняття]
      ,[Контактний_номер]
  FROM [SUBD1].[dbo].[Працівники_2]


  SELECT TOP (1000) [Код_Посади]
      ,[Назва_Посади]
  FROM [SUBD1].[dbo].[Посада]


SELECT TOP (1000) [Код_Товару]
      ,[Номер_клієнта]
      ,[Назва]
      ,[Опис]
      ,[Ціна]
  FROM [SUBD1].[dbo].[Товар]

CREATE
TRIGGER Delete_Posada1 ON [Прaцівники_2] 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = [Код_Посади] FROM deleted
UPDATE [Прaцівники_2] SET Код_посади=1 WHERE Код_посади=@Old
END

DELETE FROM [Прaцівники_2] WHERE [Код_Посади] = 4 ;
SELECT * FROM [Прaцівники_2];

ALTER TABLE [Прaцівники_3]
ADD ОстаннійРеєстр DATE NULL;

select [Табельний_номер], Прізвище, [Ім'я], ОстаннійРеєстр from [Прaцівники_3]


CREATE TRIGGER 
ост_фікс1 ON [Чек_товару] AFTER INSERT
AS
BEGIN
UPDATE [Прaцівники_3] SET [Прaцівники_3].ОстаннійРеєстр=CONVERT(date, inserted.[Дата_отримання_товару])
FROM inserted
WHERE [Прaцівники_3].[Табельний_номер] = inserted.[Табельний_номер]
END
INSERT INTO [Прaцівники_3] 
VALUES
(7, 7, 'Іванів', 'Сергій', 'Батькович', '2021-10-05','0468438761','2021-10-05')
