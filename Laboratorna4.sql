/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Laboratorna4]
  FROM [SUBDLABA4].[dbo].[Laboratorna4]




/********* ���������� ����� ������� ����� VALUES: *********/
INSERT INTO [dbo].[����_������] VALUES (1, '�������', '�������');

VALUES (2, '������', '������'),
(3, '���������', '������'),
(4, 'Գ��������', '������');

/********* ���������� ����� ������� ����� �����: *********/
BULK INSERT [dbo].[�볺��]
    FROM 'C:\Users\Juja\Desktop\����\1.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[�������]
    FROM 'C:\Users\Juja\Desktop\����\2.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[����������]
    FROM 'C:\Users\Juja\Desktop\����\3.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[�����]
    FROM 'C:\Users\Juja\Desktop\����\4.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')

BULK INSERT [dbo].[���_������]
    FROM 'C:\Users\Juja\Desktop\����\5.txt'
    WITH
        (FIELDTERMINATOR = ';',
         ROWTERMINATOR = '\n')



/********* ����� ����� � �������: *********/
UPDATE [dbo].[����������] SET [��-�������] = 'Volodumurovich'
WHERE [��'�]='Andriy';

UPDATE [dbo].[����������] SET [���������_�����] = [���������_�����] + 1
WHERE [��'�]='Andriy';

SELECT * FROM [dbo].[����������]


/********* ��������� ����� � �������: *********/
SELECT * FROM [dbo].[���_������]

DELETE FROM  [���_������]
WHERE ���_����_������>2; 
