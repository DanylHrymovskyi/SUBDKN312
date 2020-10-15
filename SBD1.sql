/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [111]
  FROM [SUBD].[dbo].[Table_1]

   create table [��������](
[���_���������] int not null,
[�����] nvarchar(20) not null,
[̳���] nvarchar(20) not null,
[������] nvarchar(20) not null,
[�����_�������] int not null,
[�����_��������] char(13) not null,
primary key(���_���������)
);


create table �볺�� (
	����������������_�����_�볺��� int not null,
	������� varchar(20) not null,
	[��'�] varchar(16) not null,
	[��-�������] varchar(20) not null,
	�����_�������� char(13) not null,
	̳��� varchar(20) not null,
	������ varchar (20) not null,
	�����_������� varchar(4) not null,
	Email varchar(50),
	primary key (����������������_�����_�볺���)
);

create table ����� (
	���_������ int not null,
	����� varchar(100) not null,
	���� nvarchar(max) not null,
	ֳ�� money not null,
	���������� image not null,
	primary key (���_������),
);

create table �����_������_������(
    ���_����_������ int not null,
	���_�������_������ varchar(15) not null,
	primary key (���_����_������),
);

create table �����_��������_������(
    ���_����_�������� int not null,
	���_�������_�������� varchar(15) not null,
	primary key (���_����_��������),
);



create table [�������](
[���_��������] int not null,
[�����] nvarchar(20) not null,
[����] nvarchar(max) not null,
[̳���] nvarchar(20) not null,
[������] nvarchar(20) not null,
[�����_�������] int not null,
�����_�������� char(13) not null,
primary key([���_��������]),
);

create table ����������(
	���������_����� int not null primary key,
	������� varchar(20) not null,
	[��'�] varchar(16) not null,
	[��-�������] varchar(20) not null,
	����_��������� date not null,
	����������_����� char(13) not null,
);

  create table ��������(
	�����_�������� int not null primary key,
	[���_���������] int not null,
	����������������_�����_�볺��� int not null,
	���_������ int not null,
	����_��������� date not null,
	 constraint FK_�����_���_������ foreign key(���_������)
    references ����� on delete cascade on update cascade,
	constraint FK_��������_���_��������� foreign key(���_���������)
    references �������� on delete cascade on update cascade,
	constraint FK_�볺��_����������������_�����_�볺��� foreign key(����������������_�����_�볺���)
    references �볺�� on delete cascade on update cascade,
	);


create table ���_������������_������(
    ���_������������_������ int not null,
	���_������������_������ varchar(15) not null,
	primary key (���_������������_������),
);

create table ���_������(
    ���_����_������ int not null,
	���_������ varchar(15) not null,
	primary key (���_����_������),
);

create table ����_������(
    ���_�������_������ int not null,
	����_������ varchar(15) not null,
	���������� varchar(15) not null,
	primary key (���_�������_������),
);

create table ���_������(
	���_����_������ int not null primary key,
	���_�������_������ int not null,
	���_����_������ int not null,
	���_������������_������ int not null,
	���_����_������ int not null,
	���_����_�������� int not null,
	���������_����� int not null,
	���_������ int not null,
	[���_��������] int not null,
	����_���������_������ date not null,
	 constraint FK_����_������_���_�������_������ foreign key(���_�������_������)
    references ����_������ on delete cascade on update cascade,
	 constraint FK_���_������_���_����_������ foreign key(���_����_������)
    references ���_������ on delete cascade on update cascade,
	 constraint FK_���_������������_������_���_������������_������ foreign key(���_������������_������)
    references ���_������������_������ on delete cascade on update cascade,
	constraint FK_�����_������_������_���_����_������ foreign key(���_����_������)
    references �����_������_������ on delete cascade on update cascade,
	constraint FK_�����_��������_������_���_����_�������� foreign key (���_����_��������)
    references �����_��������_������ on delete cascade on update cascade,
	constraint FK_�����_���_������_1 foreign key (���_������)
    references ����� on delete cascade on update cascade,
	constraint FK_����������_���������_����� foreign key(���������_�����)
    references ���������� on delete cascade on update cascade,
	constraint FK_�������_���_�������� foreign key(���_��������)
    references ������� on delete cascade on update cascade,
	);
