USE [master]
GO
/****** Object:  Database [Sash]    Script Date: 09.10.2022 16:17:05 ******/
CREATE DATABASE [Sash]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sash', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sash.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sash_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sash_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Sash] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sash].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sash] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sash] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sash] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sash] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sash] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sash] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Sash] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sash] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sash] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sash] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sash] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sash] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sash] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sash] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sash] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Sash] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sash] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sash] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sash] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sash] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sash] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sash] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sash] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sash] SET  MULTI_USER 
GO
ALTER DATABASE [Sash] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sash] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sash] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sash] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sash] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sash] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sash] SET QUERY_STORE = OFF
GO
USE [Sash]
GO
/****** Object:  Table [dbo].[Auto]    Script Date: 09.10.2022 16:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto](
	[Id_auto] [int] NOT NULL,
	[GosNomer] [varchar](10) NULL,
	[Marka] [varchar](30) NULL,
	[Model] [varchar](30) NULL,
	[YearBorn] [int] NULL,
	[Type] [int] NULL,
	[Price] [real] NULL,
	[PriceDay] [real] NULL,
	[Image] [varchar](200) NULL,
	[DateVidacha] [datetime] NULL,
	[Id_marka] [int] NULL,
	[Id_model] [int] NULL,
 CONSTRAINT [PK_Auto] PRIMARY KEY CLUSTERED 
(
	[Id_auto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 09.10.2022 16:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id_client] [int] NOT NULL,
	[Surname] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Otchestvo] [varchar](50) NULL,
	[Adress] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marka]    Script Date: 09.10.2022 16:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[Id] [int] NOT NULL,
	[Name] [varchar](30) NULL,
 CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 09.10.2022 16:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [int] NOT NULL,
	[Name] [varchar](30) NULL,
 CONSTRAINT [PK_Модель] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelledAuto]    Script Date: 09.10.2022 16:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelledAuto](
	[Id_prokat] [int] IDENTITY(1,1) NOT NULL,
	[Id_client] [int] NULL,
	[Id_auto] [int] NULL,
	[DateVidacha] [date] NULL,
	[CountDays] [int] NULL,
	[Summ] [decimal](7, 2) NULL,
 CONSTRAINT [PK_SelledAuto] PRIMARY KEY CLUSTERED 
(
	[Id_prokat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeAuto]    Script Date: 09.10.2022 16:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAuto](
	[Id_type] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [varchar](40) NULL,
 CONSTRAINT [PK_TypeAuto] PRIMARY KEY CLUSTERED 
(
	[Id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09.10.2022 16:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](10) NULL,
	[Password] [varchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (1, N'BT2130AA', NULL, N'1', 2010, 2, 1400000, 4000, N'image.jpg', CAST(N'2022-10-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (2, N'BT2100AB', NULL, N'2', 2007, 2, 2500000, 5000, N'image1.jpg', CAST(N'2022-10-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (3, N'BT5688AA', NULL, N'3', 2003, 2, 1540000, 5400, N'YXeSRHUDaP63HWhIyyvkiQc2EAo-480.jpg', CAST(N'2022-11-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (4, N'BT6756AA', NULL, N'4', 1998, 2, 2600000, 6000, N'big_76633_7.jpeg', CAST(N'2021-10-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (5, N'BT4566AC', NULL, N'2', 2014, 2, 1320000, 3500, N'audi-a4-cabriolet-side-1-87870.jpg', CAST(N'2021-10-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (6, N'BR6789AC', NULL, N'5', 2008, 2, 2340000, 3400, N'2003-ford-mustang-mach-1-one.jpg', CAST(N'2021-10-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (7, N'XA6787M', NULL, N'6', 2006, 2, 1350000, 3700, N'500x_honda_cr-v_g4360.jpg', CAST(N'2022-11-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (8, N'XA7889И', NULL, N'7', 2009, 2, 2400000, 4100, N'__KwXq3uw8iYYEEmm8QYqDMXF0yv0qdO48YZN14kyzcS-lnKTUISwyk9hvgMkgRr-8unsXwyQpfiIWe4HZc97eRrPinY.jpg', CAST(N'2022-10-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (9, N'ХА9999А', NULL, N'8', 2011, 3, 2.3E+07, 41000, N'mercedes-benz_viano_28901.jpg', CAST(N'2022-10-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (10, N'ВА6777А', NULL, N'9', 2010, 3, 2.4E+07, 39500, N'mercedes-benz-sprinter__214427505-460x345.jpg', CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (11, N'СА5655В', NULL, N'10', 2012, 4, 2.5E+07, 39500, N'Hummer_H2_Limousine_01_China_2012-08-07.JPG', CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (12, N'МП6777В', NULL, N'11', 2013, 4, 3.2E+07, 50000, N'2013-lincoln-mkt_100370801_h.jpg', CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (13, N'МИ6766С', NULL, N'11', 2013, 4, 3.5E+07, 52000, N'2013-lincoln-mkt_100370801_h.jpg', CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (14, N'112', NULL, NULL, NULL, NULL, NULL, NULL, N'avto-dlya-bogatogo-pizhona-obzor-audi-a7-pervogo-pokoleniya-4.jpeg', CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Auto] ([Id_auto], [GosNomer], [Marka], [Model], [YearBorn], [Type], [Price], [PriceDay], [Image], [DateVidacha], [Id_marka], [Id_model]) VALUES (15, N'13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (1, N'Филипченко', N'Юрий', N'Александрович', N'ул . Рабочая', N'200-999-98-78')
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (2, N'Савченко', N'Сергей', N'Александрович', N'ул . Мира', N'123-443-23-23')
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (3, N'Кириллов', N'Леонид', N'Владимирович', N'ул. Кулика, 7', N'343-434-34-34')
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (4, N'Кузнецов', N'Олег', N'Дмитриевич', N'ул. Перекопская, 81', N'343-434-43-43')
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (5, N'Флоненко', N'Иван', N'Степанович', N'пер. Северный, 1', N'456-454-55-34')
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (6, N'Давиденко', N'Макар', N'Макарович', N'пер. Западный, 2', N'424-534-45-45')
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (7, N'Волкова', N'Татьяна', N'Сергеевна', N'пер. Южный, 11', N'343-434-34-34')
INSERT [dbo].[Clients] ([Id_client], [Surname], [Name], [Otchestvo], [Adress], [Phone]) VALUES (8, N'Крылов', N'Станислав', N'Викторович', N'пл. Свободы, 2', N'343-434-44-34')
GO
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (1, N'Fabia')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (2, N'A4 Cabrio (B7)')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (3, N'Mustang')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (4, N'Escalade')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (5, N'Q7')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (6, N'30d')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (7, N'CR-V')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (8, N'Viano')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (9, N'Sprinter')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (10, N'H2 Limousine')
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (11, N'Town Car')
GO
INSERT [dbo].[Model] ([Id], [Name]) VALUES (1, N'Fabia')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (2, N'A4 Cabrio (B7)')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (3, N'Mustang')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (4, N'Escalade')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (5, N'Q7')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (6, N'30d')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (7, N'CR-V')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (8, N'Viano')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (9, N'Sprinter')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (10, N'H2 Limousine')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (11, N'Town Car')
GO
SET IDENTITY_INSERT [dbo].[SelledAuto] ON 

INSERT [dbo].[SelledAuto] ([Id_prokat], [Id_client], [Id_auto], [DateVidacha], [CountDays], [Summ]) VALUES (1, 1, 1, CAST(N'2022-09-10' AS Date), 48, CAST(65000.00 AS Decimal(7, 2)))
SET IDENTITY_INSERT [dbo].[SelledAuto] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeAuto] ON 

INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (2, N'Легковая')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (3, N'Лимузин')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (4, N'Минивэн')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (5, N'Микроавтобус')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (6, N'Автобус')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (7, N'Мотоцикл')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (8, N'Скутер')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (9, N'Грузовая')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (10, N'Ретро')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (11, N'Эксклюзив')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (12, N'Кабриолет')
INSERT [dbo].[TypeAuto] ([Id_type], [NameType]) VALUES (13, N'Внедорожник')
SET IDENTITY_INSERT [dbo].[TypeAuto] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Login], [Password]) VALUES (1, N'111', N'111')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Auto]  WITH CHECK ADD  CONSTRAINT [FK_Auto_TypeAuto] FOREIGN KEY([Type])
REFERENCES [dbo].[TypeAuto] ([Id_type])
GO
ALTER TABLE [dbo].[Auto] CHECK CONSTRAINT [FK_Auto_TypeAuto]
GO
ALTER TABLE [dbo].[SelledAuto]  WITH CHECK ADD  CONSTRAINT [FK_SelledAuto_Auto] FOREIGN KEY([Id_auto])
REFERENCES [dbo].[Auto] ([Id_auto])
GO
ALTER TABLE [dbo].[SelledAuto] CHECK CONSTRAINT [FK_SelledAuto_Auto]
GO
ALTER TABLE [dbo].[SelledAuto]  WITH CHECK ADD  CONSTRAINT [FK_SelledAuto_Clients] FOREIGN KEY([Id_client])
REFERENCES [dbo].[Clients] ([Id_client])
GO
ALTER TABLE [dbo].[SelledAuto] CHECK CONSTRAINT [FK_SelledAuto_Clients]
GO
USE [master]
GO
ALTER DATABASE [Sash] SET  READ_WRITE 
GO
