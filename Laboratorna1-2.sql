/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [xafs]
  FROM [rozraha16].[dbo].[Table_1]

      create table [Виробник](
[Код_Виробника] int not null,
[Назва] nvarchar(20) not null,
[Місто] nvarchar(20) not null,
[Вулиця] nvarchar(20) not null,
[Номер_будинку] int not null,
[Номер_телефону] char(13) not null,
primary key(Код_Виробника)
);


create table Клієнт (
	Ідентифікаційний_номер_клієнта int not null,
	Прізвище varchar(20) not null,
	[Ім'я] varchar(16) not null,
	[По-батькові] varchar(20) not null,
	Номер_телефону char(13) not null,
	Місто varchar(20) not null,
	Вулиця varchar (20) not null,
	Номер_будинку varchar(4) not null,
	Email varchar(50),
	primary key (Ідентифікаційний_номер_клієнта)
);

create table Товар (
	Код_Товару int not null,
	Назва varchar(100) not null,
	Опис nvarchar(max) not null,
	Ціна money not null,
	Зображення image not null,
	primary key (Код_Товару),
);

create table Спосіб_оплати_товару(
    Код_типу_оплати int not null,
	Тип_способу_оплати varchar(15) not null,
	primary key (Код_типу_оплати),
);

create table Спосіб_доставки_товару(
    Код_типу_доставки int not null,
	Тип_способу_доставки varchar(15) not null,
	primary key (Код_типу_доставки),
);



create table [Магазин](
[Код_Магазину] int not null,
[Назва] nvarchar(20) not null,
[Опис] nvarchar(max) not null,
[Місто] nvarchar(20) not null,
[Вулиця] nvarchar(20) not null,
[Номер_будинку] int not null,
Номер_телефону char(13) not null,
primary key([Код_Магазину]),
);

create table Працівники(
	Табельний_номер int not null primary key,
	Прізвище varchar(20) not null,
	[Ім'я] varchar(16) not null,
	[По-батькові] varchar(20) not null,
	Дата_прийняття date not null,
	Контактний_номер char(13) not null,
);

  create table Накладна(
	Номер_накладної int not null primary key,
	[Код_Виробника] int not null,
	Ідентифікаційний_номер_клієнта int not null,
	Код_Товару int not null,
	Дата_отримання date not null,
	 constraint FK_Товар_Код_Товару foreign key(Код_Товару)
    references Товар on delete cascade on update cascade,
	constraint FK_Виробник_Код_Виробника foreign key(Код_Виробника)
    references Виробник on delete cascade on update cascade,
	constraint FK_Клієнт_Ідентифікаційний_номер_клієнта foreign key(Ідентифікаційний_номер_клієнта)
    references Клієнт on delete cascade on update cascade,
	);


create table Тип_застосування_товару(
    Код_застосування_товару int not null,
	Тип_застосування_товару varchar(15) not null,
	primary key (Код_застосування_товару),
);

create table Тип_товару(
    Код_типу_товару int not null,
	Тип_товару varchar(15) not null,
	primary key (Код_типу_товару),
);

create table Колір_товару(
    Код_кольору_товару int not null,
	Колір_товару varchar(15) not null,
	Насиченість varchar(15) not null,
	primary key (Код_кольору_товару),
);

create table Чек_товару(
	Код_чеку_товару int not null primary key,
	Код_кольору_товару int not null,
	Код_типу_товару int not null,
	Код_застосування_товару int not null,
	Код_типу_оплати int not null,
	Код_типу_доставки int not null,
	Табельний_номер int not null,
	Код_Товару int not null,
	[Код_Магазину] int not null,
	Дата_отримання_товару date not null,
	 constraint FK_Колір_товару_Код_кольору_товару foreign key(Код_кольору_товару)
    references Колір_товару on delete cascade on update cascade,
	 constraint FK_Тип_товару_Код_типу_товару foreign key(Код_типу_товару)
    references Тип_товару on delete cascade on update cascade,
	 constraint FK_Тип_застосування_товару_Код_застосування_товару foreign key(Код_застосування_товару)
    references Тип_застосування_товару on delete cascade on update cascade,
	constraint FK_Спосіб_оплати_товару_Код_типу_оплати foreign key(Код_типу_оплати)
    references Спосіб_оплати_товару on delete cascade on update cascade,
	constraint FK_Спосіб_доставки_товару_Код_типу_доставки foreign key (Код_типу_доставки)
    references Спосіб_доставки_товару on delete cascade on update cascade,
	constraint FK_Товар_Код_Товару_1 foreign key (Код_Товару)
    references Товар on delete cascade on update cascade,
	constraint FK_Працівники_Табельний_номер foreign key(Табельний_номер)
    references Працівники on delete cascade on update cascade,
	constraint FK_Магазин_Код_Магазину foreign key(Код_Магазину)
    references Магазин on delete cascade on update cascade,
	);
