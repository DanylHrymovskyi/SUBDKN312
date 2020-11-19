/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Laba3]
  FROM [SUBD1].[dbo].[Laboratorna3]


  
/********* ���� ��� �������: *********/
Select * from INFORMATION_SCHEMA.TABLES where TABLE_TYPE='BASE TABLE'
EXEC sp_help �����

/********* ��������� ������ �����-�볺��: *********/
ALTER TABLE �����
DROP CONSTRAINT �������_�볺���;

/********* ��������� � ���� ������ ���� � ������� ����: *********/
ALTER TABLE [dbo].[����_������]
DROP COLUMN ����������;
GO

ALTER TABLE [dbo].[����_������]
ALTER COLUMN ����_������ char(40);
GO

/********* ������� ���� ������� � ������� ����������:  *********/
ALTER TABLE ����������
ALTER COLUMN ������� CHAR(50) NULL; 

/********* ��������� �� ������� �������1 ���� �����_��������:  *********/
ALTER TABLE �������1
ADD �����_�������� INT  NOT NULL
CONSTRAINT ��_�����_�������� UNIQUE(�����_��������);


EXEC sp_help [�������1]

/********* ������� ���� ��������� �������� ��� ������ ���_������-����_������:  *********/
ALTER TABLE [dbo].[���_������]
DROP CONSTRAINT ������1;
GO

ALTER TABLE [dbo].[����_������]
ADD CONSTRAINT ������1 FOREIGN KEY ([���_�������_������])
REFERENCES [���_������] ([���_�������_������]) ON DELETE CASCADE;







