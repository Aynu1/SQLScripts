USE [master]
GO
/****** Object:  Database [testPrimer]    Script Date: 27.10.2022 14:13:30 ******/
CREATE DATABASE [testPrimer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testPrimer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\testPrimer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testPrimer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\testPrimer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [testPrimer] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testPrimer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testPrimer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testPrimer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testPrimer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testPrimer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testPrimer] SET ARITHABORT OFF 
GO
ALTER DATABASE [testPrimer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testPrimer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testPrimer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testPrimer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testPrimer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testPrimer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testPrimer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testPrimer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testPrimer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testPrimer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [testPrimer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testPrimer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testPrimer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testPrimer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testPrimer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testPrimer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testPrimer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testPrimer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testPrimer] SET  MULTI_USER 
GO
ALTER DATABASE [testPrimer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testPrimer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testPrimer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testPrimer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testPrimer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testPrimer] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [testPrimer] SET QUERY_STORE = OFF
GO
USE [testPrimer]
GO
/****** Object:  Table [dbo].[Dolzgnost]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dolzgnost](
	[ID_Dolzgnosti] [int] NOT NULL,
	[Dolzgnost] [nvarchar](50) NOT NULL,
	[Oklad] [float] NOT NULL,
 CONSTRAINT [PK_Dolzgnost] PRIMARY KEY CLUSTERED 
(
	[ID_Dolzgnosti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Komandirovki]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Komandirovki](
	[ID_Sotrudnika] [int] NOT NULL,
	[Kuda_komandirovan] [nvarchar](50) NOT NULL,
	[nomer_prikaza] [float] NOT NULL,
	[Date_prikaza] [date] NOT NULL,
	[Date_nachala] [date] NOT NULL,
	[Date_okonchaniya] [date] NOT NULL,
	[Kolvo_dney] [float] NOT NULL,
	[Cel_komandirovki] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Med_obsledovaniya]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Med_obsledovaniya](
	[ID] [int] NOT NULL,
	[ID_Sotrudnika] [int] NOT NULL,
	[Data_obsledovaniya] [date] NOT NULL,
	[Mesto] [nvarchar](50) NOT NULL,
	[Zakluchenie_vracha] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Med_obsledovaniya] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[kod_otdela] [int] NOT NULL,
	[Name_otdela] [nvarchar](50) NOT NULL,
	[Kabinet] [float] NOT NULL,
	[Phone_otdela] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[kod_otdela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otpuska]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otpuska](
	[ID] [int] NOT NULL,
	[Vid_otpuska] [nvarchar](50) NOT NULL,
	[ID_sotrudnika] [int] NOT NULL,
	[Data_otpuska] [date] NOT NULL,
	[Kolvo_dney] [float] NOT NULL,
	[Dni_dop] [float] NULL,
	[Data_okonchaniya] [date] NOT NULL,
	[Osnovaniya] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Otpuska] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasportnie_dannie]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasportnie_dannie](
	[ID_Sotrudnika] [int] NOT NULL,
	[Nomer_pasporta] [float] NOT NULL,
	[Seriya_pasporta] [float] NOT NULL,
	[Kem_vidan] [nvarchar](50) NOT NULL,
	[Kogda_vidan] [date] NOT NULL,
 CONSTRAINT [PK_Pasportnie_dannie] PRIMARY KEY CLUSTERED 
(
	[ID_Sotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pooshreniya]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pooshreniya](
	[ID] [int] NOT NULL,
	[ID_Sotrudnika] [int] NOT NULL,
	[Motiv] [nvarchar](50) NOT NULL,
	[Vid] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Osnovaniya] [nvarchar](50) NOT NULL,
	[Summa] [money] NOT NULL,
 CONSTRAINT [PK_Pooshreniya] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shtatnoe_raspisanie]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shtatnoe_raspisanie](
	[ID] [int] NOT NULL,
	[ID_Dolzgnosti] [int] NOT NULL,
	[Kod_otdela] [int] NOT NULL,
	[Kolvo_sotrudnikov] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shtatnoe_raspisanie] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soc_lgoti]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soc_lgoti](
	[ID_Sotrudnika] [int] NOT NULL,
	[Name_lgot] [nvarchar](50) NOT NULL,
	[nomer_documenta] [float] NOT NULL,
	[Data_vidachi_documenta] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[Id_Sotrudnika] [int] NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[Second_name] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Pol] [nvarchar](50) NOT NULL,
	[Semeynoe_polozhenie] [nvarchar](50) NULL,
	[ID_Dolzgnosti] [int] NULL,
	[Kod_otdela] [int] NULL,
	[Date_birthday] [date] NULL,
	[Data_priema] [date] NULL,
	[Stazh] [float] NULL,
	[Telephone] [nvarchar](12) NULL,
	[Adres] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sotrudniki_1] PRIMARY KEY CLUSTERED 
(
	[Id_Sotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Permission] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uvolneniya]    Script Date: 27.10.2022 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uvolneniya](
	[ID_Sotrudnika] [int] NOT NULL,
	[Date_uvolneniya] [date] NOT NULL,
	[Prichina] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Dolzgnost] ([ID_Dolzgnosti], [Dolzgnost], [Oklad]) VALUES (1, N'Директор', 50000)
INSERT [dbo].[Dolzgnost] ([ID_Dolzgnosti], [Dolzgnost], [Oklad]) VALUES (2, N'Администратор', 30000)
INSERT [dbo].[Dolzgnost] ([ID_Dolzgnosti], [Dolzgnost], [Oklad]) VALUES (3, N'Менеджер', 25000)
INSERT [dbo].[Dolzgnost] ([ID_Dolzgnosti], [Dolzgnost], [Oklad]) VALUES (4, N'Менеджер по работе склиентами', 25000)
GO
INSERT [dbo].[Otdel] ([kod_otdela], [Name_otdela], [Kabinet], [Phone_otdela]) VALUES (1, N'По работе с клиентами', 12, N'2344565')
INSERT [dbo].[Otdel] ([kod_otdela], [Name_otdela], [Kabinet], [Phone_otdela]) VALUES (2, N'Программисты', 13, N'2355678')
INSERT [dbo].[Otdel] ([kod_otdela], [Name_otdela], [Kabinet], [Phone_otdela]) VALUES (3, N'Бухгалтерия', 14, N'5431234')
GO
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (1, N'Gogolev.jpeg', N'Гоголев', N'Игорь', N'Сергеевич', N'м', NULL, 1, 1, NULL, NULL, 16, NULL, NULL)
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (2, N'Zolotuxa.jpg', N'Золотуха', N'Сергей', N'Иванович', N'м', NULL, 2, 2, NULL, NULL, 10, NULL, NULL)
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (3, N'Korgikov.jpg', N'Коржиков', N'Никита', N'Алексеевич', N'м', NULL, 3, 2, NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (4, N'Kostin.jpg', N'Костин', N'Антон', N'Никитиович', N'м', NULL, 3, 3, NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (5, N'Mironin.jpg', N'Миронин', N'Андрей', N'Антонович', N'м', NULL, 4, 3, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (6, N'Nosov.jpg', N'Носов', N'Анатолий', N'Игоревич', N'м', NULL, 4, 2, NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (7, N'Chibulina.jfif', N'Цибулина', N'Елена', N'Владимировна', N'ж', NULL, 3, 1, NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[Sotrudniki] ([Id_Sotrudnika], [Photo], [Second_name], [Name], [Surname], [Pol], [Semeynoe_polozhenie], [ID_Dolzgnosti], [Kod_otdela], [Date_birthday], [Data_priema], [Stazh], [Telephone], [Adres]) VALUES (8, N'Nasibullin.jfif', N'Насибуллин', N'Марат', N'Русланович', N'м', NULL, 4, 1, NULL, NULL, 2, NULL, NULL)
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Permission]) VALUES (1, N'111', N'111', N'lol')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Permission]) VALUES (2, N'123', N'123', N'1')
GO
ALTER TABLE [dbo].[Komandirovki]  WITH CHECK ADD  CONSTRAINT [FK_Komandirovki_Sotrudniki1] FOREIGN KEY([ID_Sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([Id_Sotrudnika])
GO
ALTER TABLE [dbo].[Komandirovki] CHECK CONSTRAINT [FK_Komandirovki_Sotrudniki1]
GO
ALTER TABLE [dbo].[Med_obsledovaniya]  WITH CHECK ADD  CONSTRAINT [FK_Med_obsledovaniya_Sotrudniki1] FOREIGN KEY([ID_Sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([Id_Sotrudnika])
GO
ALTER TABLE [dbo].[Med_obsledovaniya] CHECK CONSTRAINT [FK_Med_obsledovaniya_Sotrudniki1]
GO
ALTER TABLE [dbo].[Otpuska]  WITH CHECK ADD  CONSTRAINT [FK_Otpuska_Sotrudniki1] FOREIGN KEY([ID_sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([Id_Sotrudnika])
GO
ALTER TABLE [dbo].[Otpuska] CHECK CONSTRAINT [FK_Otpuska_Sotrudniki1]
GO
ALTER TABLE [dbo].[Pasportnie_dannie]  WITH CHECK ADD  CONSTRAINT [FK_Pasportnie_dannie_Sotrudniki1] FOREIGN KEY([ID_Sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([Id_Sotrudnika])
GO
ALTER TABLE [dbo].[Pasportnie_dannie] CHECK CONSTRAINT [FK_Pasportnie_dannie_Sotrudniki1]
GO
ALTER TABLE [dbo].[Pooshreniya]  WITH CHECK ADD  CONSTRAINT [FK_Pooshreniya_Sotrudniki1] FOREIGN KEY([ID_Sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([Id_Sotrudnika])
GO
ALTER TABLE [dbo].[Pooshreniya] CHECK CONSTRAINT [FK_Pooshreniya_Sotrudniki1]
GO
ALTER TABLE [dbo].[Shtatnoe_raspisanie]  WITH CHECK ADD  CONSTRAINT [FK_Shtatnoe_raspisanie_Dolzgnost] FOREIGN KEY([ID_Dolzgnosti])
REFERENCES [dbo].[Dolzgnost] ([ID_Dolzgnosti])
GO
ALTER TABLE [dbo].[Shtatnoe_raspisanie] CHECK CONSTRAINT [FK_Shtatnoe_raspisanie_Dolzgnost]
GO
ALTER TABLE [dbo].[Shtatnoe_raspisanie]  WITH CHECK ADD  CONSTRAINT [FK_Shtatnoe_raspisanie_Otdel] FOREIGN KEY([Kod_otdela])
REFERENCES [dbo].[Otdel] ([kod_otdela])
GO
ALTER TABLE [dbo].[Shtatnoe_raspisanie] CHECK CONSTRAINT [FK_Shtatnoe_raspisanie_Otdel]
GO
ALTER TABLE [dbo].[Soc_lgoti]  WITH CHECK ADD  CONSTRAINT [FK_Soc_lgoti_Sotrudniki1] FOREIGN KEY([ID_Sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([Id_Sotrudnika])
GO
ALTER TABLE [dbo].[Soc_lgoti] CHECK CONSTRAINT [FK_Soc_lgoti_Sotrudniki1]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Dolzgnost] FOREIGN KEY([ID_Dolzgnosti])
REFERENCES [dbo].[Dolzgnost] ([ID_Dolzgnosti])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Dolzgnost]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Otdel] FOREIGN KEY([Kod_otdela])
REFERENCES [dbo].[Otdel] ([kod_otdela])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Otdel]
GO
ALTER TABLE [dbo].[Uvolneniya]  WITH CHECK ADD  CONSTRAINT [FK_Uvolneniya_Sotrudniki] FOREIGN KEY([ID_Sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([Id_Sotrudnika])
GO
ALTER TABLE [dbo].[Uvolneniya] CHECK CONSTRAINT [FK_Uvolneniya_Sotrudniki]
GO
USE [master]
GO
ALTER DATABASE [testPrimer] SET  READ_WRITE 
GO
