/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Табельний_номер]
      ,[Прізвище]
      ,[Ім'я]
      ,[По-батькові]
      ,[Дата_прийняття]
      ,[Контактний_номер]
  FROM [SUBD1].[dbo].[Працівники]

  SELECT TOP (1000) [Код_Посади]
      ,[Назва_Посади]
  FROM [SUBD1].[dbo].[Посада]


EXEC sp_helpindex 'Працівники'
GO

EXEC sp_helpindex 'Посада'
GO

CREATE INDEX empINDX3 ON Працівники ([Табельний_номер]); 
EXEC sp_helpindex 'Працівники'
GO

CREATE UNIQUE INDEX OfficeINDX ON Посада ([Код_Посади], [Назва_Посади]); 
EXEC sp_helpindex 'Посада'
GO

SET SHOWPLAN_ALL ON;  
GO  
select [Прізвище],[Ім'я] from [Працівники]
where [Дата_прийняття]>'03.09.2020';
GO
select [Код_Посади], [Назва_Посади] from [Посада]
where [Назва_Посади]='Прибиральник';
GO
SET SHOWPLAN_ALL OFF;  
GO  
