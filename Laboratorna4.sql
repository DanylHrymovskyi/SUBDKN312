/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Laboratorna4]
  FROM [SUBDLABA4].[dbo].[Laboratorna4]




/********* Добавлення вмісту таблиць через VALUES: *********/
INSERT INTO [dbo].[Колір_товару] VALUES (1, 'Зелений', 'Середня');

VALUES (2, 'Чорний', 'Висока'),
(3, 'Блакитний', 'Висока'),
(4, 'Фіолетовий', 'Низька');

/********* Добавлення вмісту таблиць через файли: *********/
BULK INSERT [dbo].[Клієнт]
    FROM 'C:\Users\Juja\Desktop\СУБД\1.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[Магазин]
    FROM 'C:\Users\Juja\Desktop\СУБД\2.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[Працівники]
    FROM 'C:\Users\Juja\Desktop\СУБД\3.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[Товар]
    FROM 'C:\Users\Juja\Desktop\СУБД\4.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[Чек_товару]
    FROM 'C:\Users\Juja\Desktop\СУБД\5.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')



/********* Заміна даних в таблиці: *********/
UPDATE [dbo].[Працівники] SET [По-батькові] = 'Volodumurovich'
WHERE [Ім'я]='Andriy';

UPDATE [dbo].[Працівники] SET [Табельний_номер] = [Табельний_номер] + 1
WHERE [Ім'я]='Andriy';

SELECT * FROM [dbo].[Працівники]


/********* Видалення даних з таблиці: *********/
SELECT * FROM [dbo].[Чек_товару]

DELETE FROM  [Чек_товару]
WHERE Код_чеку_товару>2; 
