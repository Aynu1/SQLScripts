--Сначала это выдели и выполни
CREATE DATABASE [FlowersMag]
--Потом это
USE [FlowersMag]
--И теперь все это полностью
CREATE TABLE [dbo].[Client](
	[ClientID] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Birthday] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dostavka]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flowers]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlowerZakaz]    Script Date: 17.10.2022 12:06:07 ******/
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
/****** Object:  Table [dbo].[Postavshik]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SposobOplati]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 17.10.2022 12:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UslugiZakaz]    Script Date: 17.10.2022 12:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UslugiZakaz](
	[IDZakaza] [int] NOT NULL,
	[IDUslugi] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakaz]    Script Date: 17.10.2022 12:06:07 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Flowers] ON 

INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (1, N'Лилия', 2, 100, 1, 45, N'Lilii.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (2, N'Питунии', 2, 120, 2, 35, N'Pitunii.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (3, N'Ромашки', 2, 75, 2, 100, N'Romashki.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (4, N'Роза', 1, 200, 1, 44, N'Roza.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (5, N'Тюльпани', 1, 170, 1, 79, N'Tulpani.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (7, N'tt', NULL, 1230, 2, 12, N'1devenv_uy751N6uC0.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (12, N'тест', NULL, 2290, 1, 1, N'31Tulpani.png')
SET IDENTITY_INSERT [dbo].[Flowers] OFF
GO
INSERT [dbo].[Postavshik] ([IDPostavshika], [FIO], [Adres], [email], [PhoneNumber], [City]) VALUES (1, N'Андреев Игорь Сергеевич', N'г.Казань улица Короленко 12', N'Ert@gmail.com', N'89173156987', N'Казань')
INSERT [dbo].[Postavshik] ([IDPostavshika], [FIO], [Adres], [email], [PhoneNumber], [City]) VALUES (2, N'Иванов Иван Васильевич', N'г. Вологда  ', N'fgh@gmail.com', N'89065875621', N'Вологда')
GO
INSERT [dbo].[Type] ([IDType], [Categoriya], [Opisanie]) VALUES (1, N'Комнатные', NULL)
INSERT [dbo].[Type] ([IDType], [Categoriya], [Opisanie]) VALUES (2, N'Многоление цветы', NULL)
GO
INSERT [dbo].[user] ([login], [password]) VALUES (N'111', N'111')
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