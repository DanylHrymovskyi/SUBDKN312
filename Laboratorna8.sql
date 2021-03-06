/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Ідентифікаційний_номер_клієнта]
      ,[Прізвище]
      ,[Ім'я]
      ,[По-батькові]
      ,[Номер_телефону]
      ,[Місто]
      ,[Вулиця]
      ,[Номер_будинку]
      ,[Email]
  FROM [SUBDLABA4].[dbo].[Клієнт]

  SELECT TOP (1000) [Код_чеку_товару]
      ,[Код_кольору_товару]
      ,[Табельний_номер]
      ,[Код_Товару]
      ,[Код_Магазину]
      ,[Дата_отримання_товару]
  FROM [SUBDLABA4].[dbo].[Чек_товару]


  SELECT TOP (1000) [Код_Товару]
      ,[Назва]
      ,[Опис]
      ,[Ціна]
  FROM [SUBDLABA4].[dbo].[Товар]


SELECT [Ідентифікаційний_номер_клієнта], [Ім'я], [По-батькові] FROM [Клієнт] WHERE [По-батькові] LIKE 'B%'
ORDER BY [Ім'я]




SELECT TOP 3 [Код_чеку_товару], [Код_кольору_товару], [Табельний_номер],[Дата_отримання_товару]
FROM [Чек_товару] ORDER BY [Дата_отримання_товару] DESC


SELECT  [Чек_товару].[Код_чеку_товару],[Товар].Назва, [Товар].[Опис], [Товар].Ціна
FROM [Чек_товару]  JOIN [Товар] ON [Чек_товару].[Табельний_номер] = [Товар].[Код_Товару]


SELECT  COUNT([Чек_товару].[Код_чеку_товару]) AS [Кількість], [Товар].[Опис]
FROM [Чек_товару]  JOIN [Товар] ON [Чек_товару].[Код_чеку_товару] = [Товар].[Код_Товару]
GROUP BY [Товар].[Опис]


