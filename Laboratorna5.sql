/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Код_Товару]
      ,[Назва]
      ,[Опис]
      ,[Ціна]
  FROM [SUBDLABA4].[dbo].[Товар]

/****** Ціна товарів яка менше за 4000  ******/
SELECT * INTO [Товар_1] FROM [dbo].[Товар]
WHERE [Ціна] < '4000'

/****** Ціна товарів яка більше за 4000  ******/
SELECT * INTO [Товар_2] FROM [dbo].[Товар]
WHERE [Ціна] > '4000'

/****** Запит на об'єднання:  ******/
SELECT * FROM [Товар_1]
UNION
SELECT * FROM [Товар_2]

/****** Запит на перетин:  ******/
SELECT * FROM [Товар_1]
WHERE [Код_Товару] IN (SELECT [Код_Товару] FROM [Товар_2]);

/****** Запит на різницю:  ******/
SELECT * FROM [Товар_1]
WHERE [Код_Товару] NOT IN (SELECT [Код_Товару] FROM [Товар_2]);

/****** Декартовий добуток:  ******/
SELECT * FROM [Товар_1], [Товар_2]