USE [master]
GO
/****** Object:  Database [tipo]    Script Date: 26.10.2022 14:17:30 ******/
CREATE DATABASE [tipo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tipo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\tipo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tipo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\tipo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [tipo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tipo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tipo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tipo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tipo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tipo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tipo] SET ARITHABORT OFF 
GO
ALTER DATABASE [tipo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [tipo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tipo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tipo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tipo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tipo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tipo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tipo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tipo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tipo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [tipo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tipo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tipo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tipo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tipo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tipo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tipo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tipo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tipo] SET  MULTI_USER 
GO
ALTER DATABASE [tipo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tipo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tipo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tipo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tipo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tipo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [tipo] SET QUERY_STORE = OFF
GO
USE [tipo]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 26.10.2022 14:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Password] [int] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 26.10.2022 14:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Glavnoe] [varchar](50) NULL,
	[Dlitelnost] [int] NULL,
	[Price] [int] NULL,
	[Skidka] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 26.10.2022 14:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] NOT NULL,
	[Surname] [varchar](30) NULL,
	[Name] [varchar](30) NULL,
	[Lastname] [varchar](30) NULL,
	[Male] [varchar](10) NULL,
	[Telephone] [varchar](25) NULL,
	[Dateborn] [date] NULL,
	[Email] [varchar](30) NULL,
	[Registration] [date] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usluga]    Script Date: 26.10.2022 14:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usluga](
	[Id] [int] NOT NULL,
	[Usluga] [varchar](50) NULL,
	[StartUsluga] [datetime] NULL,
	[Client] [varchar](30) NULL,
 CONSTRAINT [PK_Usluga] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Password]) VALUES (1111)
GO
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (1, N'Занятие с репетитором-носителем английского языка', N'Английский язык.jpg', 110, 910, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (2, N'Занятие с репетитором-носителем испанского языка', N'Испанский язык.jpg', 50, 1090, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (3, N'Занятие с репетитором-носителем итальянского языка', N'Итальянский язык.jpg', 120, 1370, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (4, N'Занятие с репетитором-носителем китайского языка', N'Китайский язык.jpg', 120, 1950, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (5, N'Занятие с репетитором-носителем немецкого языка', N'Немецкий язык.png', 120, 1120, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (6, N'Занятие с репетитором-носителем французского языка', N'Французский язык.jpg', 50, 2040, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (7, N'Занятие с репетитором-носителем японского языка', N'Японский язык.jpg', 50, 1100, 25)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (8, N'Занятие с русскоязычным репетитором английского языка', N'Английский язык.jpg', 90, 1950, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (9, N'Занятие с русскоязычным репетитором испанского языка', N'Испанский язык.jpg', 50, 1450, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (10, N'Занятие с русскоязычным репетитором итальянского языка', N'Итальянский язык.jpg', 70, 1620, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (11, N'Занятие с русскоязычным репетитором китайского языка', N'Китайский язык.jpg', 110, 940, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (12, N'Занятие с русскоязычным репетитором немецкого языка', N'Немецкий язык.png', 30, 1420, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (13, N'Занятие с русскоязычным репетитором португальского языка', N'Португальский язык.jpg', 50, 1970, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (14, N'Занятие с русскоязычным репетитором французского языка', N'Французский язык.jpg', 100, 1870, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (15, N'Занятие с русскоязычным репетитором японского языка', N'Японский язык.jpg', 40, 1260, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (16, N'Индивидуальный онлайн-урок английского языка по Skype', N'online lessons.jpg', 100, 1880, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (17, N'Индивидуальный онлайн-урок испанского языка по Skype', N'online lessons.jpg', 70, 1780, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (18, N'Индивидуальный онлайн-урок китайского языка по Skype', N'online lessons.jpg', 70, 1410, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (19, N'Индивидуальный онлайн-урок немецкого языка по Skype', N'online lessons.jpg', 90, 970, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (20, N'Индивидуальный онлайн-урок французского языка по Skype', N'online lessons.jpg', 120, 2010, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (21, N'Индивидуальный онлайн-урок японского языка по Skype', N'online lessons.jpg', 80, 1000, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (22, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'Английский язык.jpg', 120, 1300, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (23, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N'Английский язык.jpg', 30, 1910, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (24, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N'Испанский язык.jpg', 90, 1200, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (25, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N'Испанский язык.jpg', 60, 1790, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (26, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N'Итальянский язык.jpg', 80, 1690, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (27, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N'Итальянский язык.jpg', 30, 1330, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (28, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N'Китайский язык.jpg', 90, 1480, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (29, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N'Китайский язык.jpg', 120, 1860, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (30, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N'Немецкий язык.png', 110, 1340, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (31, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'Немецкий язык.png', 30, 990, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (32, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'Французский язык.jpg', 40, 1410, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (33, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N'Французский язык.jpg', 70, 1390, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (34, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 80, 1210, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (35, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 90, 1000, 25)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (36, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 110, 900, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (37, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 110, 1470, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (38, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 60, 2010, 25)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (39, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N'for company.jpg', 110, 1670, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (40, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N'for company.jpg', 90, 1660, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (41, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N'for company.jpg', 40, 1190, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (42, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N'for company.jpg', 120, 1180, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (43, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N'for company.jpg', 30, 1580, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (44, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N'for company.jpg', 70, 1630, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (45, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N'for company.jpg', 70, 1380, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (46, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 40, 1940, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (47, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N'for company.jpg', 80, 1500, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (48, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N'online lessons.jpg', 50, 1160, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (49, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N'online lessons.jpg', 120, 1510, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (50, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N'online lessons.jpg', 70, 1230, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (51, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N'online lessons.jpg', 120, 1760, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (52, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'online lessons.jpg', 70, 1840, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (53, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N'online lessons.jpg', 70, 1610, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (54, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N'online lessons.jpg', 40, 1180, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (55, N'Киноклуб английского языка для взрослых', N'киноклуб.jpg', 70, 1250, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (56, N'Киноклуб английского языка для детей', N'киноклуб.jpg', 40, 1280, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (57, N'Киноклуб английского языка для студентов', N'киноклуб.jpg', 80, 980, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (58, N'Киноклуб испанского языка для студентов', N'киноклуб.jpg', 40, 1050, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (59, N'Киноклуб итальянского языка для взрослых', N'киноклуб.jpg', 110, 1760, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (60, N'Киноклуб итальянского языка для детей', N'киноклуб.jpg', 70, 1480, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (61, N'Киноклуб итальянского языка для студентов', N'киноклуб.jpg', 30, 1760, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (62, N'Киноклуб китайского языка для взрослых', N'киноклуб.jpg', 70, 1800, 25)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (63, N'Киноклуб китайского языка для детей', N'киноклуб.jpg', 100, 1120, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (64, N'Киноклуб китайского языка для студентов', N'киноклуб.jpg', 100, 1990, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (65, N'Киноклуб немецкого языка для взрослых', N'киноклуб.jpg', 100, 1560, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (66, N'Киноклуб немецкого языка для детей', N'киноклуб.jpg', 120, 1670, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (67, N'Киноклуб немецкого языка для студентов', N'киноклуб.jpg', 50, 1140, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (68, N'Киноклуб португальского языка для взрослых', N'киноклуб.jpg', 30, 950, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (69, N'Киноклуб португальского языка для детей', N'киноклуб.jpg', 90, 1710, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (70, N'Киноклуб португальского языка для студентов', N'киноклуб.jpg', 30, 1170, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (71, N'Киноклуб французского языка для взрослых', N'киноклуб.jpg', 90, 1770, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (72, N'Киноклуб французского языка для детей', N'киноклуб.jpg', 90, 1600, 10)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (73, N'Подготовка к экзамену ACT', N'Подготовка к экзамену ACT.png', 50, 1440, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (74, N'Подготовка к экзамену GMAT', N'Подготовка к экзамену GMAT.png', 70, 1150, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (75, N'Подготовка к экзамену GRE', N'Подготовка к экзамену GRE.jpeg', 80, 1300, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (76, N'Подготовка к экзамену IELTS', N'Подготовка к экзамену IELTS.jpg', 120, 1730, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (77, N'Подготовка к экзамену IELTS Speaking Club', N'Подготовка к экзамену IELTS.jpg', 90, 1430, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (78, N'Подготовка к экзамену SAT', N'Подготовка к экзамену SAT.png', 40, 1560, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (79, N'Подготовка к экзамену TOEFL', N'Подготовка к экзамену TOEFL.jpg', 100, 1070, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (80, N'Урок в группе английского языка для взрослых', N'Английский язык.jpg', 50, 1010, 25)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (81, N'Урок в группе английского языка для студентов', N'Английский язык.jpg', 80, 960, 25)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (82, N'Урок в группе английского языка для школьников', N'Английский язык.jpg', 110, 900, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (83, N'Урок в группе испанского языка для взрослых', N'Испанский язык.jpg', 30, 1730, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (84, N'Урок в группе испанского языка для студентов', N'Испанский язык.jpg', 100, 1310, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (85, N'Урок в группе испанского языка для школьников', N'Испанский язык.jpg', 120, 1910, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (86, N'Урок в группе итальянского языка для взрослых', N'Итальянский язык.jpg', 40, 1290, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (87, N'Урок в группе итальянского языка для студентов', N'Итальянский язык.jpg', 110, 1020, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (88, N'Урок в группе итальянского языка для школьников', N'Итальянский язык.jpg', 100, 1410, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (89, N'Урок в группе китайского языка для взрослых', N'Китайский язык.jpg', 70, 1730, 25)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (90, N'Урок в группе китайского языка для студентов', N'Китайский язык.jpg', 40, 2000, 20)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (91, N'Урок в группе китайского языка для школьников', N'Китайский язык.jpg', 50, 1180, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (92, N'Урок в группе немецкого языка для взрослых', N'Немецкий язык.png', 60, 930, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (93, N'Урок в группе немецкого языка для студентов', N'Немецкий язык.png', 70, 1240, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (94, N'Урок в группе немецкого языка для школьников', N'Немецкий язык.png', 30, 1570, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (95, N'Урок в группе французского языка для взрослых', N'Французский язык.jpg', 120, 960, 15)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (96, N'Урок в группе французского языка для студентов', N'Французский язык.jpg', 30, 1910, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (97, N'Урок в группе французского языка для школьников', N'Французский язык.jpg', 100, 1970, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (98, N'Урок в группе японского языка для взрослых', N'Японский язык.jpg', 80, 1420, 5)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (99, N'Урок в группе японского языка для студентов', N'Японский язык.jpg', 50, 1860, 0)
INSERT [dbo].[Category] ([Id], [Name], [Glavnoe], [Dlitelnost], [Price], [Skidka]) VALUES (100, N'Урок в группе японского языка для школьников', N'Японский язык.jpg', 80, 1300, 5)
GO
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (1, N'Васильев', N' Оскар', N' Богданович', N' м', N' 7(585)801-94-29 ', CAST(N'1971-01-30' AS Date), N' miturria@verizon.net', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (2, N'Лазарев', N'Алексей', N'Богданович', N' м', N' 7(0055)737-37-48 ', CAST(N'1977-03-10' AS Date), N' claesjac@me.com', CAST(N'2017-01-02' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (3, N'Казаков', N'Дмитрий', N'Русланович', N' м', N' 7(51)682-19-40 ', CAST(N'1978-12-15' AS Date), N' ozawa@verizon.net', CAST(N'2016-05-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (4, N'Попова', N'Харита', N'Якуновна', N' ж', N' 7(335)386-81-06 ', CAST(N'1997-12-16' AS Date), N' firstpr@verizon.net', CAST(N'2016-07-05' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (5, N'Турова', N'Георгина', N'Семёновна', N' ж', N' 7(555)321-42-99 ', CAST(N'1974-05-28' AS Date), N' yruan@optonline.net', CAST(N'2018-02-22' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (6, N'Андреев', N' Станислав', N' Максович', N' м', N' 7(02)993-91-28 ', CAST(N'1975-10-10' AS Date), N' budinger@mac.com', CAST(N'2017-12-26' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (7, N'Орлова', N'Влада', N'Мартыновна', N' ж', N' 7(2506)433-38-35 ', CAST(N'1990-06-26' AS Date), N' rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (8, N'Костина', N'Любава', N'Авксентьевна', N' ж', N' 7(6419)959-21-87 ', CAST(N'1972-07-13' AS Date), N' gordonjcp@hotmail.com', CAST(N'2016-02-26' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (9, N'Александров', N' Станислав', N' Эдуардович', N' м', N' 7(18)164-05-12 ', CAST(N'1981-07-04' AS Date), N' bigmauler@aol.com', CAST(N'2018-11-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (10, N'Корнилова', N'Анэля', N'Михайловна', N' ж', N' 7(20)980-01-60 ', CAST(N'1973-04-02' AS Date), N' jonathan@aol.com', CAST(N'2016-05-22' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (11, N'Морозов', N'Наум', N'Валерьянович', N' м', N' 7(636)050-96-13 ', CAST(N'1985-07-04' AS Date), N' salesgeek@mac.com', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (12, N'Баранова', N' Эльмира', N' Дмитриевна', N'ж', N' 7(9240)643-15-50 ', CAST(N'1977-01-15' AS Date), N' jgmyers@comcast.net', CAST(N'2016-07-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (13, N'Степанова', N' Амелия', N' Робертовна', N' ж', N' 7(1217)441-28-42 ', CAST(N'1970-06-06' AS Date), N' rasca@hotmail.com', CAST(N'2017-09-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (14, N'Горбачёв', N'Давид', N'Тимурович', N' м', N' 7(53)602-85-41 ', CAST(N'1983-05-22' AS Date), N' hedwig@att.net', CAST(N'2018-12-17' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (15, N'Волков', N'Людвиг', N'Витальевич', N' м', N' 7(8459)592-05-58 ', CAST(N'1977-12-27' AS Date), N' jrkorson@msn.com', CAST(N'2016-04-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (16, N'Комиссарова', N' Амалия', N' Робертовна', N'ж', N' 7(22)647-46-32 ', CAST(N'1971-08-18' AS Date), N' jorgb@msn.com', CAST(N'2017-08-04' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (17, N'Большаков', N'Вадим', N'Данилович', N' м', N' 7(386)641-13-37 ', CAST(N'1970-05-15' AS Date), N' uncle@gmail.com', CAST(N'2018-08-04' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (18, N'Абрамов', N'Станислав', N'Филатович', N'м', N' 7(6545)478-87-79 ', CAST(N'1989-05-18' AS Date), N' solomon@att.net', CAST(N'2016-12-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (19, N'Журавлёв', N' Леонтий', N' Яковлевич', N'м', N' 7(4403)308-56-96 ', CAST(N'2000-03-02' AS Date), N' cmdrgravy@me.com', CAST(N'2018-01-15' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (20, N'Селиверстов', N'Глеб', N'Максимович', N' м', N' 7(20)554-28-68 ', CAST(N'1999-06-20' AS Date), N' jigsaw@sbcglobal.net', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (21, N'Киселёв', N' Устин', N' Яковлевич', N'м', N' 7(83)334-52-76 ', CAST(N'1985-01-08' AS Date), N' dalamb@verizon.net', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (22, N'Зуев', N'Матвей', N'Иванович', N' м', N' 7(5383)893-04-66 ', CAST(N'1981-03-28' AS Date), N' brickbat@verizon.net', CAST(N'2018-12-18' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (23, N'Ершов', N' Глеб', N' Федорович', N'м', N' 7(2608)298-40-82 ', CAST(N'1970-06-14' AS Date), N' sjava@aol.com', CAST(N'2016-09-14' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (24, N'Бобылёв', N' Георгий', N' Витальевич', N' м', N' 7(88)685-13-51 ', CAST(N'1983-12-19' AS Date), N' csilvers@mac.com', CAST(N'2018-04-06' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (25, N'Ефремов', N' Витольд', N' Авксентьевич', N' м', N' 7(93)922-14-03 ', CAST(N'1975-12-02' AS Date), N' kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (26, N'Андреева', N'Патрисия', N'Валерьевна', N' ж', N' 7(9648)953-81-26 ', CAST(N'1993-11-18' AS Date), N' jigsaw@aol.com', CAST(N'2016-07-17' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (27, N'Ефимова', N' Магда', N' Платоновна', N' ж', N' 7(9261)386-15-92 ', CAST(N'1995-08-16' AS Date), N' rbarreira@me.com', CAST(N'2017-08-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (28, N'Голубев', N' Иосиф', N' Тимофеевич', N' м', N' 7(78)972-73-11 ', CAST(N'1982-05-06' AS Date), N' smcnabb@att.net', CAST(N'2018-08-18' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (29, N'Евсеев', N' Макар', N' Васильевич', N' м', N' 7(2141)077-85-70 ', CAST(N'1977-09-13' AS Date), N' parsimony@sbcglobal.net', CAST(N'2018-12-05' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (30, N'Бобров', N'Агафон', N'Лаврентьевич', N' м', N' 7(2159)507-39-57 ', CAST(N'1995-07-29' AS Date), N' petersen@comcast.net', CAST(N'2017-05-09' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (31, N'Игнатов', N'Захар', N'Павлович', N' м', N' 7(578)574-73-36 ', CAST(N'1998-10-07' AS Date), N' dieman@icloud.com', CAST(N'2017-11-10' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (32, N'Гущина', N' Янита', N' Федоровна', N' ж', N' 7(4544)716-68-96 ', CAST(N'1999-03-02' AS Date), N' lishoy@att.net', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (33, N'Калашников', N' Артур', N' Юрьевич', N' м', N' 7(147)947-47-21 ', CAST(N'1972-12-13' AS Date), N' oevans@aol.com', CAST(N'2017-08-20' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (34, N'Дмитриева', N' Элина', N' Даниловна', N' ж', N' 7(787)140-48-84 ', CAST(N'1988-12-10' AS Date), N' vmalik@live.com', CAST(N'2017-02-11' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (35, N'Федотова', N'Сандра', N'Владленовна', N' ж', N' 7(126)195-25-86 ', CAST(N'1985-03-29' AS Date), N' penna@verizon.net', CAST(N'2016-11-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (36, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N' 7(9940)977-45-73 ', CAST(N'1993-08-24' AS Date), N' nichoj@mac.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (37, N'Колобова', N' Злата', N' Романовна', N' ж', N' 7(50)884-07-35 ', CAST(N'1994-08-25' AS Date), N' sinkou@aol.com', CAST(N'2016-12-03' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (38, N'Некрасов', N'Варлам', N'Михайлович', N'м', N' 7(019)258-06-35 ', CAST(N'2000-11-12' AS Date), N' dogdude@verizon.net', CAST(N'2017-12-03' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (39, N'Колобов', N' Орест', N' Юлианович', N' м', N' 7(1680)508-58-26 ', CAST(N'2001-07-14' AS Date), N' parkes@verizon.net', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (40, N'Блохин', N' Пантелеймон', N' Феликсович', N' м', N' 7(9524)556-48-98 ', CAST(N'1978-03-06' AS Date), N' balchen@comcast.net', CAST(N'2018-02-14' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (41, N'Калинин', N'Петр', N'Иванович', N'м', N' 7(90)316-07-17 ', CAST(N'1993-09-08' AS Date), N' aschmitz@hotmail.com', CAST(N'2016-05-26' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (42, N'Беляева', N'Сабрина', N'Федосеевна', N' ж', N' 7(6580)534-32-58 ', CAST(N'1972-07-26' AS Date), N' agapow@gmail.com', CAST(N'2017-06-14' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (43, N'Агафонов', N' Юстиниан', N' Олегович', N' м', N' 7(303)810-28-78 ', CAST(N'1997-02-02' AS Date), N' staffelb@sbcglobal.net', CAST(N'2016-06-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (44, N'Мамонтова', N'Марфа', N'Мироновна', N' ж', N' 7(38)095-64-18 ', CAST(N'1984-10-19' AS Date), N' rfoley@verizon.net', CAST(N'2018-02-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (45, N'Блинов', N' Евгений', N' Мэлсович', N' м', N' 7(0852)321-82-64 ', CAST(N'1994-01-05' AS Date), N' moxfulder@outlook.com', CAST(N'2017-05-07' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (46, N'Воронова', N'Изабелла', N'Вячеславовна', N' ж', N' 7(17)433-44-98 ', CAST(N'1999-09-24' AS Date), N' kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (47, N'Медведев', N' Святослав', N' Юлианович', N'м', N' 7(3520)435-21-20 ', CAST(N'1972-10-04' AS Date), N' hllam@comcast.net', CAST(N'2018-10-13' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (48, N'Куликова', N'Эвелина', N'Вячеславовна', N' ж', N' 7(0236)682-42-78 ', CAST(N'1997-11-14' AS Date), N' ilikered@hotmail.com', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (49, N'Суворова', N'Божена', N'Анатольевна', N' ж', N' 7(347)895-86-57 ', CAST(N'1981-03-09' AS Date), N' attwood@aol.com', CAST(N'2016-01-28' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Lastname], [Male], [Telephone], [Dateborn], [Email], [Registration]) VALUES (50, N'Егорова', N' Амалия', N' Дамировна', N'ж', N' 7(7486)408-12-26 ', CAST(N'1999-09-28' AS Date), N' drezet@yahoo.com', CAST(N'2016-06-30' AS Date))
GO
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (1, N'97', CAST(N'2019-11-16T11:20:00.000' AS DateTime), N'49')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (2, N'19', CAST(N'2019-01-11T18:10:00.000' AS DateTime), N'37')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (3, N'61', CAST(N'2019-12-01T14:40:00.000' AS DateTime), N'37')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (4, N'53', CAST(N'2019-02-11T13:30:00.000' AS DateTime), N'37')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (5, N'89', CAST(N'2019-09-10T18:20:00.000' AS DateTime), N'20')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (6, N'90', CAST(N'2019-02-12T19:40:00.000' AS DateTime), N'48')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (7, N'6', CAST(N'2019-04-04T09:10:00.000' AS DateTime), N'24')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (8, N'83', CAST(N'2019-05-15T09:20:00.000' AS DateTime), N'21')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (9, N'94', CAST(N'2019-01-16T14:20:00.000' AS DateTime), N'16')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (10, N'80', CAST(N'2019-01-16T09:00:00.000' AS DateTime), N'30')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (11, N'94', CAST(N'2019-03-15T10:50:00.000' AS DateTime), N'3')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (12, N'19', CAST(N'2019-01-31T12:00:00.000' AS DateTime), N'26')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (13, N'52', CAST(N'2019-11-19T15:50:00.000' AS DateTime), N'6')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (14, N'79', CAST(N'2019-01-10T08:30:00.000' AS DateTime), N'33')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (15, N'94', CAST(N'2019-04-29T15:00:00.000' AS DateTime), N'35')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (16, N'66', CAST(N'2019-10-12T08:50:00.000' AS DateTime), N'43')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (17, N'91', CAST(N'2019-02-13T18:00:00.000' AS DateTime), N'48')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (18, N'52', CAST(N'2019-02-01T18:00:00.000' AS DateTime), N'33')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (19, N'42', CAST(N'2019-11-12T18:50:00.000' AS DateTime), N'30')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (20, N'69', CAST(N'2019-01-11T12:50:00.000' AS DateTime), N'17')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (21, N'70', CAST(N'2019-03-23T19:50:00.000' AS DateTime), N'9')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (22, N'71', CAST(N'2019-06-23T08:00:00.000' AS DateTime), N'43')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (23, N'39', CAST(N'2019-05-25T17:10:00.000' AS DateTime), N'38')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (24, N'51', CAST(N'2019-02-18T18:20:00.000' AS DateTime), N'17')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (25, N'65', CAST(N'2019-07-17T08:20:00.000' AS DateTime), N'35')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (26, N'6', CAST(N'2019-08-06T16:50:00.000' AS DateTime), N'35')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (27, N'60', CAST(N'2019-12-14T08:40:00.000' AS DateTime), N'1')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (28, N'77', CAST(N'2019-06-28T14:20:00.000' AS DateTime), N'22')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (29, N'36', CAST(N'2019-06-06T19:20:00.000' AS DateTime), N'48')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (30, N'70', CAST(N'2019-06-07T17:20:00.000' AS DateTime), N'24')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (31, N'82', CAST(N'2019-04-30T18:10:00.000' AS DateTime), N'46')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (32, N'69', CAST(N'2019-08-30T11:40:00.000' AS DateTime), N'6')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (33, N'83', CAST(N'2019-05-08T14:10:00.000' AS DateTime), N'25')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (34, N'27', CAST(N'2019-10-27T16:20:00.000' AS DateTime), N'42')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (35, N'65', CAST(N'2019-01-05T08:40:00.000' AS DateTime), N'30')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (36, N'24', CAST(N'2019-03-04T17:20:00.000' AS DateTime), N'22')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (37, N'31', CAST(N'2019-09-29T13:40:00.000' AS DateTime), N'50')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (38, N'64', CAST(N'2019-01-22T10:50:00.000' AS DateTime), N'27')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (39, N'52', CAST(N'2019-12-19T19:30:00.000' AS DateTime), N'30')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (40, N'73', CAST(N'2019-11-15T17:50:00.000' AS DateTime), N'32')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (41, N'32', CAST(N'2019-07-04T17:10:00.000' AS DateTime), N'12')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (42, N'19', CAST(N'2019-08-06T11:50:00.000' AS DateTime), N'21')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (43, N'66', CAST(N'2019-11-09T13:00:00.000' AS DateTime), N'35')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (44, N'22', CAST(N'2019-02-16T18:50:00.000' AS DateTime), N'24')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (45, N'31', CAST(N'2019-03-03T17:20:00.000' AS DateTime), N'23')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (46, N'82', CAST(N'2019-05-22T16:10:00.000' AS DateTime), N'13')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (47, N'97', CAST(N'2019-07-31T18:10:00.000' AS DateTime), N'36')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (48, N'24', CAST(N'2019-08-29T19:00:00.000' AS DateTime), N'16')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (49, N'65', CAST(N'2019-10-02T10:10:00.000' AS DateTime), N'21')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (50, N'19', CAST(N'2019-03-16T11:30:00.000' AS DateTime), N'8')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (51, N'73', CAST(N'2019-08-27T11:40:00.000' AS DateTime), N'43')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (52, N'27', CAST(N'2019-06-13T11:30:00.000' AS DateTime), N'18')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (53, N'66', CAST(N'2019-08-18T16:00:00.000' AS DateTime), N'4')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (54, N'80', CAST(N'2019-12-26T16:30:00.000' AS DateTime), N'14')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (55, N'86', CAST(N'2019-11-27T18:50:00.000' AS DateTime), N'11')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (56, N'65', CAST(N'2019-09-06T19:20:00.000' AS DateTime), N'47')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (57, N'8', CAST(N'2019-09-24T13:40:00.000' AS DateTime), N'46')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (58, N'43', CAST(N'2019-03-01T11:50:00.000' AS DateTime), N'32')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (59, N'86', CAST(N'2019-09-28T10:00:00.000' AS DateTime), N'5')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (60, N'6', CAST(N'2019-03-20T10:40:00.000' AS DateTime), N'15')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (61, N'66', CAST(N'2019-11-27T11:30:00.000' AS DateTime), N'10')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (62, N'5', CAST(N'2019-01-23T18:30:00.000' AS DateTime), N'3')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (63, N'24', CAST(N'2019-10-21T10:20:00.000' AS DateTime), N'27')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (64, N'6', CAST(N'2019-08-11T12:50:00.000' AS DateTime), N'28')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (65, N'65', CAST(N'2019-01-03T14:40:00.000' AS DateTime), N'7')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (66, N'52', CAST(N'2019-12-31T08:30:00.000' AS DateTime), N'33')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (67, N'83', CAST(N'2019-08-29T10:10:00.000' AS DateTime), N'41')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (68, N'61', CAST(N'2019-01-03T18:50:00.000' AS DateTime), N'13')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (69, N'89', CAST(N'2019-04-09T11:10:00.000' AS DateTime), N'14')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (70, N'71', CAST(N'2019-12-31T19:10:00.000' AS DateTime), N'27')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (71, N'61', CAST(N'2019-10-17T13:30:00.000' AS DateTime), N'2')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (72, N'31', CAST(N'2019-05-17T13:30:00.000' AS DateTime), N'46')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (73, N'100', CAST(N'2019-11-23T18:40:00.000' AS DateTime), N'11')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (74, N'69', CAST(N'2019-07-10T15:30:00.000' AS DateTime), N'10')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (75, N'15', CAST(N'2019-06-09T13:40:00.000' AS DateTime), N'37')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (76, N'31', CAST(N'2019-01-09T10:20:00.000' AS DateTime), N'23')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (77, N'5', CAST(N'2019-08-15T18:30:00.000' AS DateTime), N'2')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (78, N'69', CAST(N'2019-07-15T14:10:00.000' AS DateTime), N'29')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (79, N'100', CAST(N'2019-12-31T18:00:00.000' AS DateTime), N'21')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (80, N'86', CAST(N'2019-12-22T09:20:00.000' AS DateTime), N'32')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (81, N'63', CAST(N'2019-12-28T16:00:00.000' AS DateTime), N'14')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (82, N'31', CAST(N'2019-06-26T10:10:00.000' AS DateTime), N'33')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (83, N'97', CAST(N'2019-04-29T12:40:00.000' AS DateTime), N'10')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (84, N'97', CAST(N'2019-04-13T09:00:00.000' AS DateTime), N'48')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (85, N'91', CAST(N'2019-01-05T16:00:00.000' AS DateTime), N'23')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (86, N'15', CAST(N'2019-03-25T18:20:00.000' AS DateTime), N'5')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (87, N'39', CAST(N'2019-11-09T18:50:00.000' AS DateTime), N'29')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (88, N'19', CAST(N'2019-04-07T10:40:00.000' AS DateTime), N'31')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (89, N'51', CAST(N'2019-11-11T18:50:00.000' AS DateTime), N'49')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (90, N'65', CAST(N'2019-01-06T15:00:00.000' AS DateTime), N'34')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (91, N'91', CAST(N'2019-08-20T19:10:00.000' AS DateTime), N'4')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (92, N'91', CAST(N'2019-04-16T13:20:00.000' AS DateTime), N'45')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (93, N'94', CAST(N'2019-12-22T15:10:00.000' AS DateTime), N'27')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (94, N'69', CAST(N'2019-01-22T16:50:00.000' AS DateTime), N'40')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (95, N'39', CAST(N'2019-09-04T08:10:00.000' AS DateTime), N'8')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (96, N'60', CAST(N'2019-01-01T14:50:00.000' AS DateTime), N'41')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (97, N'100', CAST(N'2019-01-29T16:30:00.000' AS DateTime), N'35')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (98, N'57', CAST(N'2019-07-06T11:30:00.000' AS DateTime), N'40')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (99, N'8', CAST(N'2019-12-05T10:20:00.000' AS DateTime), N'28')
INSERT [dbo].[Usluga] ([Id], [Usluga], [StartUsluga], [Client]) VALUES (100, N'91', CAST(N'2019-04-05T13:20:00.000' AS DateTime), N'20')
GO
USE [master]
GO
ALTER DATABASE [tipo] SET  READ_WRITE 
GO
