USE [master]
GO
/****** Object:  Database [FlowersMag]    Script Date: 01.06.2022 18:49:00 ******/
CREATE DATABASE [FlowersMag]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FlowersMag', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FlowersMag.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FlowersMag_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FlowersMag_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FlowersMag] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FlowersMag].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FlowersMag] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FlowersMag] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FlowersMag] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FlowersMag] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FlowersMag] SET ARITHABORT OFF 
GO
ALTER DATABASE [FlowersMag] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FlowersMag] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FlowersMag] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FlowersMag] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FlowersMag] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FlowersMag] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FlowersMag] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FlowersMag] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FlowersMag] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FlowersMag] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FlowersMag] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FlowersMag] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FlowersMag] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FlowersMag] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FlowersMag] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FlowersMag] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FlowersMag] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FlowersMag] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FlowersMag] SET  MULTI_USER 
GO
ALTER DATABASE [FlowersMag] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FlowersMag] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FlowersMag] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FlowersMag] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FlowersMag] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FlowersMag] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FlowersMag] SET QUERY_STORE = OFF
GO
USE [FlowersMag]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 01.06.2022 18:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Birthday] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dostavka]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dostavka](
	[DostavkaID] [int] NOT NULL,
	[SposobDostavki] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dostavka] PRIMARY KEY CLUSTERED 
(
	[DostavkaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flowers]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flowers](
	[FlowerID] [int] IDENTITY(1,1) NOT NULL,
	[Naimenovanie] [nvarchar](50) NOT NULL,
	[IDType] [int] NULL,
	[Price] [float] NOT NULL,
	[IDPostavshika] [int] NULL,
	[Kolichestvo] [int] NULL,
	[image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Flowers] PRIMARY KEY CLUSTERED
(
	[FlowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlowerZakaz]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerZakaz](
	[IDZakaza] [int] NOT NULL,
	[Kolichestvo] [nvarchar](50) NOT NULL,
	[FlowerID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postavshik]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postavshik](
	[IDPostavshika] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Adres] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Postavshik] PRIMARY KEY CLUSTERED 
(
	[IDPostavshika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnik](
	[IDSotrudnika] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[passport] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sotrudnik] PRIMARY KEY CLUSTERED 
(
	[IDSotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SposobOplati]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SposobOplati](
	[SposobOplatiID] [int] NOT NULL,
	[SposobOplati] [nvarchar](50) NOT NULL,
	[ClientID] [int] NULL,
 CONSTRAINT [PK_SposobOplati_1] PRIMARY KEY CLUSTERED 
(
	[SposobOplatiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[IDType] [int] NOT NULL,
	[Categoriya] [nvarchar](50) NOT NULL,
	[Opisanie] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[IDType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uslugi](
	[IDUslugi] [int] NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
	[price] [nvarchar](50) NOT NULL,
	[prodolzhitelnost] [nvarchar](50) NOT NULL,
	[IDSotrudnika] [int] NULL,
 CONSTRAINT [PK_Uslugi] PRIMARY KEY CLUSTERED 
(
	[IDUslugi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UslugiZakaz]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UslugiZakaz](
	[IDZakaza] [int] NOT NULL,
	[IDUslugi] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakaz]    Script Date: 01.06.2022 18:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakaz](
	[IDZakaza] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
	[ClientAdres] [nvarchar](50) NOT NULL,
	[ClientCity] [nvarchar](50) NOT NULL,
	[DataZakaza] [nvarchar](50) NOT NULL,
	[DataDostavki] [nvarchar](50) NOT NULL,
	[DostavkaID] [int] NOT NULL,
	[DostavkaPrice] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Zakaz] PRIMARY KEY CLUSTERED 
(
	[IDZakaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Flowers]  WITH CHECK ADD  CONSTRAINT [FK_Flowers_Postavshik] FOREIGN KEY([IDPostavshika])
REFERENCES [dbo].[Postavshik] ([IDPostavshika])
GO
ALTER TABLE [dbo].[Flowers] CHECK CONSTRAINT [FK_Flowers_Postavshik]
GO
ALTER TABLE [dbo].[Flowers]  WITH CHECK ADD  CONSTRAINT [FK_Flowers_Type1] FOREIGN KEY([IDType])
REFERENCES [dbo].[Type] ([IDType])
GO
ALTER TABLE [dbo].[Flowers] CHECK CONSTRAINT [FK_Flowers_Type1]
GO
ALTER TABLE [dbo].[FlowerZakaz]  WITH CHECK ADD  CONSTRAINT [FK_FlowerZakaz_Flowers] FOREIGN KEY([FlowerID])
REFERENCES [dbo].[Flowers] ([FlowerID])
GO
ALTER TABLE [dbo].[FlowerZakaz] CHECK CONSTRAINT [FK_FlowerZakaz_Flowers]
GO
ALTER TABLE [dbo].[FlowerZakaz]  WITH CHECK ADD  CONSTRAINT [FK_FlowerZakaz_Zakaz] FOREIGN KEY([IDZakaza])
REFERENCES [dbo].[Zakaz] ([IDZakaza])
GO
ALTER TABLE [dbo].[FlowerZakaz] CHECK CONSTRAINT [FK_FlowerZakaz_Zakaz]
GO
ALTER TABLE [dbo].[SposobOplati]  WITH CHECK ADD  CONSTRAINT [FK_SposobOplati_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[SposobOplati] CHECK CONSTRAINT [FK_SposobOplati_Client]
GO
ALTER TABLE [dbo].[Uslugi]  WITH CHECK ADD  CONSTRAINT [FK_Uslugi_Sotrudnik] FOREIGN KEY([IDSotrudnika])
REFERENCES [dbo].[Sotrudnik] ([IDSotrudnika])
GO
ALTER TABLE [dbo].[Uslugi] CHECK CONSTRAINT [FK_Uslugi_Sotrudnik]
GO
ALTER TABLE [dbo].[UslugiZakaz]  WITH CHECK ADD  CONSTRAINT [FK_UslugiZakaz_Uslugi] FOREIGN KEY([IDUslugi])
REFERENCES [dbo].[Uslugi] ([IDUslugi])
GO
ALTER TABLE [dbo].[UslugiZakaz] CHECK CONSTRAINT [FK_UslugiZakaz_Uslugi]
GO
ALTER TABLE [dbo].[UslugiZakaz]  WITH CHECK ADD  CONSTRAINT [FK_UslugiZakaz_Zakaz] FOREIGN KEY([IDZakaza])
REFERENCES [dbo].[Zakaz] ([IDZakaza])
GO
ALTER TABLE [dbo].[UslugiZakaz] CHECK CONSTRAINT [FK_UslugiZakaz_Zakaz]
GO
ALTER TABLE [dbo].[Zakaz]  WITH CHECK ADD  CONSTRAINT [FK_Zakaz_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Zakaz] CHECK CONSTRAINT [FK_Zakaz_Client]
GO
ALTER TABLE [dbo].[Zakaz]  WITH CHECK ADD  CONSTRAINT [FK_Zakaz_Dostavka] FOREIGN KEY([DostavkaID])
REFERENCES [dbo].[Dostavka] ([DostavkaID])
GO
ALTER TABLE [dbo].[Zakaz] CHECK CONSTRAINT [FK_Zakaz_Dostavka]
GO
USE [master]
GO
ALTER DATABASE [FlowersMag] SET  READ_WRITE 
GO
