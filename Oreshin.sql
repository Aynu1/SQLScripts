USE [master]
GO
/****** Object:  Database [bookshop]    Script Date: 13.10.2022 13:00:03 ******/
CREATE DATABASE [bookshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bookshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bookshop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bookshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bookshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bookshop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bookshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bookshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bookshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bookshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bookshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [bookshop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [bookshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bookshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bookshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bookshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bookshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bookshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bookshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bookshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bookshop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bookshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bookshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bookshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bookshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bookshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bookshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bookshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bookshop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bookshop] SET  MULTI_USER 
GO
ALTER DATABASE [bookshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bookshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bookshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bookshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bookshop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bookshop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bookshop] SET QUERY_STORE = OFF
GO
USE [bookshop]
GO
/****** Object:  Table [dbo].[books]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[book_ID] [int] NOT NULL,
	[b_name] [nvarchar](200) NOT NULL,
	[b_author] [nvarchar](200) NOT NULL,
	[b_year] [int] NOT NULL,
	[b_price] [decimal](7, 2) NULL,
	[b_count] [int] NULL,
	[b_cat_ID] [int] NOT NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catalogs]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catalogs](
	[cat_ID] [int] IDENTITY(1,1) NOT NULL,
	[cat_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[february]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[february](
	[order_ID] [int] IDENTITY(1,1) NOT NULL,
	[o_user_ID] [int] NOT NULL,
	[o_book_ID] [int] NOT NULL,
	[o_time] [datetime] NOT NULL,
	[o_number] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_ID] [int] IDENTITY(1,1) NOT NULL,
	[o_user_ID] [int] NOT NULL,
	[o_book_ID] [int] NOT NULL,
	[o_time] [datetime] NOT NULL,
	[o_number] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](30) NOT NULL,
	[Manufacturer] [nvarchar](20) NOT NULL,
	[ProductCount] [int] NULL,
	[Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_ID] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [nvarchar](50) NOT NULL,
	[u_patronymic] [nvarchar](50) NOT NULL,
	[u_surname] [nvarchar](50) NOT NULL,
	[u_phone] [nvarchar](12) NULL,
	[u_email] [nvarchar](50) NULL,
	[u_status] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (1, N'JavaScript в кармане ', N'Рева О.Н. ', 2008, CAST(42.00 AS Decimal(7, 2)), 10, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (2, N'Visual FoxPro 9.0 ', N'Клепинин В.Б. ', 2007, CAST(660.00 AS Decimal(7, 2)), 2, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (3, N'C++ Как он есть ', N'Тимофеев В.В. ', 2009, CAST(218.00 AS Decimal(7, 2)), 4, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (4, N'Создание приложений с помощью C# ', N'Фаронов В.В. ', 2008, CAST(169.00 AS Decimal(7, 2)), 1, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (5, N'Delphi. Народные советы ', N'Шкрыль А.А. ', 2007, CAST(243.00 AS Decimal(7, 2)), 6, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (6, N'Delphi. Полное руководство ', N'Сухарев М. ', 2008, CAST(500.00 AS Decimal(7, 2)), 6, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (7, N'Профессиональное программирование на PHP ', N'Шлосснейгл Дж. ', 2006, CAST(309.00 AS Decimal(7, 2)), 5, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (8, N'Совершенный код ', N'Макконнелл С. ', 2007, CAST(771.00 AS Decimal(7, 2)), 1, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (9, N'Практика программирования ', N'Керниган Б. ', 2004, CAST(214.00 AS Decimal(7, 2)), 12, 1)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (10, N'Принципы маршрутизации в Internet ', N'Хелеби С. ', 2001, CAST(428.00 AS Decimal(7, 2)), 4, 2)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (11, N'Поиск в Internet ', N'Гусев В.С. ', 2004, CAST(107.00 AS Decimal(7, 2)), 2, 2)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (12, N'Web-конструирование ', N'Дуванов А.А. ', 2003, CAST(177.00 AS Decimal(7, 2)), 6, 2)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (13, N'Самоучитель Интернет ', N'Константинов Ю.П. ', 2009, CAST(121.00 AS Decimal(7, 2)), 4, 2)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (14, N'Популярные интернетбраузеры ', N'Маринин С.А. ', 2007, CAST(82.00 AS Decimal(7, 2)), 6, 2)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (15, N'Общение в Интернете ', N'Экслер А. ', 2006, CAST(85.00 AS Decimal(7, 2)), 5, 2)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (16, N'Базы данных ', N'Малыхина М.П. ', 2006, CAST(326.00 AS Decimal(7, 2)), 2, 3)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (17, N'Базы данных. Разработка приложений ', N'Рудикова Л.В. ', 2006, CAST(189.00 AS Decimal(7, 2)), 6, 3)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (18, N'Раскрытие тайн SQL ', N'Оппель Э. ', 2007, CAST(200.00 AS Decimal(7, 2)), 3, 3)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (19, N'Практикум по Access ', N'Золотова С.И. ', 2007, CAST(87.00 AS Decimal(7, 2)), 6, 3)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (20, N'Компьютерные сети ', N'Танненбаум Э. ', 2007, CAST(630.00 AS Decimal(7, 2)), 6, 4)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (21, N'Сети. Поиск неисправностей ', N'Бигелоу С. ', 2005, CAST(434.00 AS Decimal(7, 2)), 4, 4)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (22, N'Безопасность сетей ', N'Брегг Р. ', 2006, CAST(462.00 AS Decimal(7, 2)), 5, 4)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (23, N'Анализ и диагностика компьютерных сетей ', N'Хогдал Дж. ', 2001, CAST(344.00 AS Decimal(7, 2)), 3, 4)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (24, N'Локальные вычислительные сети ', N'Епанешников А. ', 2005, CAST(82.00 AS Decimal(7, 2)), 8, 4)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (25, N'Цифровая фотография ', N'Надеждин Н. ', 2004, CAST(149.00 AS Decimal(7, 2)), 20, 5)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (26, N'Музыкальный компьютер для гитариста ', N'Петелин Р.Ю. ', 2004, CAST(217.00 AS Decimal(7, 2)), 15, 5)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (27, N'Видео на ПК ', N'Федорова А. ', 2003, CAST(231.00 AS Decimal(7, 2)), 10, 5)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (28, N'Мультипликация во Flash ', N'Киркпатрик Г. ', 2006, CAST(211.00 AS Decimal(7, 2)), 20, 5)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (29, N'Запись CD и DVD ', N'Гультяев А.К. ', 2003, CAST(167.00 AS Decimal(7, 2)), 12, 5)
INSERT [dbo].[books] ([book_ID], [b_name], [b_author], [b_year], [b_price], [b_count], [b_cat_ID]) VALUES (30, N'Запись и обработка звука на компьютере ', N'Лоянич А.А. ', 2008, CAST(51.00 AS Decimal(7, 2)), 8, 5)
GO
SET IDENTITY_INSERT [dbo].[catalogs] ON 

INSERT [dbo].[catalogs] ([cat_ID], [cat_name]) VALUES (1, N'Программирвание')
INSERT [dbo].[catalogs] ([cat_ID], [cat_name]) VALUES (2, N'Интернет')
INSERT [dbo].[catalogs] ([cat_ID], [cat_name]) VALUES (3, N'База данных')
INSERT [dbo].[catalogs] ([cat_ID], [cat_name]) VALUES (4, N'Сети')
INSERT [dbo].[catalogs] ([cat_ID], [cat_name]) VALUES (5, N'Мультимедиа')
SET IDENTITY_INSERT [dbo].[catalogs] OFF
GO
SET IDENTITY_INSERT [dbo].[february] ON 

INSERT [dbo].[february] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (17, 1, 20, CAST(N'2009-02-18T13:41:05.000' AS DateTime), 4)
INSERT [dbo].[february] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (18, 1, 20, CAST(N'2009-02-18T13:41:05.000' AS DateTime), 4)
INSERT [dbo].[february] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (19, 1, 20, CAST(N'2009-02-18T13:41:05.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[february] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (10, 3, 8, CAST(N'2009-04-01T10:39:00.000' AS DateTime), 1)
INSERT [dbo].[orders] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (11, 6, 10, CAST(N'2009-10-02T09:40:00.000' AS DateTime), 2)
INSERT [dbo].[orders] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (13, 4, 20, CAST(N'2009-10-03T18:20:00.000' AS DateTime), 1)
INSERT [dbo].[orders] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (15, 1, 20, CAST(N'2009-02-18T13:41:05.000' AS DateTime), 4)
INSERT [dbo].[orders] ([order_ID], [o_user_ID], [o_book_ID], [o_time], [o_number]) VALUES (16, 3, 20, CAST(N'2009-03-17T19:15:36.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [Manufacturer], [ProductCount], [Price]) VALUES (1, N'iPhone 6', N'Apple', 3, 36000.0000)
INSERT [dbo].[Products] ([Id], [ProductName], [Manufacturer], [ProductCount], [Price]) VALUES (2, N'iPhone 6S', N'Apple', 2, 41000.0000)
INSERT [dbo].[Products] ([Id], [ProductName], [Manufacturer], [ProductCount], [Price]) VALUES (3, N'iPhone 7', N'Apple', 5, 52000.0000)
INSERT [dbo].[Products] ([Id], [ProductName], [Manufacturer], [ProductCount], [Price]) VALUES (4, N'Galaxy S8', N'Samsung', 2, 46000.0000)
INSERT [dbo].[Products] ([Id], [ProductName], [Manufacturer], [ProductCount], [Price]) VALUES (5, N'Galaxy S8 Plus', N'Samsung', 1, 56000.0000)
INSERT [dbo].[Products] ([Id], [ProductName], [Manufacturer], [ProductCount], [Price]) VALUES (6, N'Mi6', N'Xiaomi', 5, 28000.0000)
INSERT [dbo].[Products] ([Id], [ProductName], [Manufacturer], [ProductCount], [Price]) VALUES (7, N'OnePlus 5', N'OnePlus', 6, 38000.0000)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_ID], [u_name], [u_patronymic], [u_surname], [u_phone], [u_email], [u_status]) VALUES (1, N'Александр', N'Валерьевич', N'Иванов', N'58-98-78', N'ivanov@email.ru', N'active')
INSERT [dbo].[users] ([user_ID], [u_name], [u_patronymic], [u_surname], [u_phone], [u_email], [u_status]) VALUES (2, N'Сергей', N'Иванович', N'Лосев', N'90-57-77', N'losev@email.ru', N'passive')
INSERT [dbo].[users] ([user_ID], [u_name], [u_patronymic], [u_surname], [u_phone], [u_email], [u_status]) VALUES (3, N'Игорь', N'Николаевич', N'Симонов', N'95-66-61', N'simonov@email.ru', N'active')
INSERT [dbo].[users] ([user_ID], [u_name], [u_patronymic], [u_surname], [u_phone], [u_email], [u_status]) VALUES (4, N'Максим', N'Петрович', N'Кузнецов', NULL, N'kuznetsov@email.ru', N'active')
INSERT [dbo].[users] ([user_ID], [u_name], [u_patronymic], [u_surname], [u_phone], [u_email], [u_status]) VALUES (5, N'Анатолий', N'Юрьевич', N'Петров', NULL, NULL, N'lock')
INSERT [dbo].[users] ([user_ID], [u_name], [u_patronymic], [u_surname], [u_phone], [u_email], [u_status]) VALUES (6, N'Александр', N'Александрович', N'Корнеев', N'89-78-36', N'korneev@email.ru', N'gold')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[books] ADD  DEFAULT ('0') FOR [b_count]
GO
ALTER TABLE [dbo].[books] ADD  DEFAULT ('0') FOR [b_cat_ID]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [o_time]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('0') FOR [o_number]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ProductCount]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('passive') FOR [u_status]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [FK_books_catalogs] FOREIGN KEY([b_cat_ID])
REFERENCES [dbo].[catalogs] ([cat_ID])
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [FK_books_catalogs]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_books] FOREIGN KEY([o_book_ID])
REFERENCES [dbo].[books] ([book_ID])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_books]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([o_user_ID])
REFERENCES [dbo].[users] ([user_ID])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([u_status]='active' OR [u_status]='passive' OR [u_status]='lock' OR [u_status]='gold'))
GO
/****** Object:  StoredProcedure [dbo].[Num]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Num]
@user_code int,
@total int output
as
begin
select @total=count(*) from orders
where o_user_ID=@user_code
end
GO
/****** Object:  StoredProcedure [dbo].[ord_febr]    Script Date: 13.10.2022 13:00:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ord_febr] as
begin
set dateformat ymd
insert into february(o_user_ID, o_book_ID, o_time, o_number)
select o_user_ID, o_book_ID, o_time, o_number
from orders
where o_time between '2009-02-01' and '2009-02-28'
end
GO
USE [master]
GO
ALTER DATABASE [bookshop] SET  READ_WRITE 
GO
