/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Laba3]
  FROM [SUBD1].[dbo].[Laboratorna3]


  
/********* Вибір всіх таблиць: *********/
Select * from INFORMATION_SCHEMA.TABLES where TABLE_TYPE='BASE TABLE'
EXEC sp_help Товар

/********* Вилучення зв’язку Товар-Клієнт: *********/
ALTER TABLE Товар
DROP CONSTRAINT ФКНомер_клієнта;

/********* Вилучення і зміна розміру поля в таблиці Колір: *********/
ALTER TABLE [dbo].[Колір_товару]
DROP COLUMN Насиченість;
GO

ALTER TABLE [dbo].[Колір_товару]
ALTER COLUMN Колір_товару char(40);
GO

/********* Змінення поля Прізвище в таблиці Працівники:  *********/
ALTER TABLE Працівники
ALTER COLUMN Прізвище CHAR(50) NULL; 

/********* Додавання до таблиці Магазин1 поле Номер_магазину:  *********/
ALTER TABLE Магазин1
ADD Номер_магазину INT  NOT NULL
CONSTRAINT Ун_Номер_магазину UNIQUE(Номер_магазину);


EXEC sp_help [Магазин1]

/********* Змінення типу обмеження цілісності для зв’язку Чек_товару-Колір_Товару:  *********/
ALTER TABLE [dbo].[Чек_товару]
DROP CONSTRAINT ФКколір1;
GO

ALTER TABLE [dbo].[Колір_товару]
ADD CONSTRAINT ФКколір1 FOREIGN KEY ([Код_кольору_товару])
REFERENCES [Чек_товару] ([Код_кольору_товару]) ON DELETE CASCADE;







