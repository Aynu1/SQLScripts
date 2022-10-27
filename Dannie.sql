USE [FlowersMag]
GO
INSERT [dbo].[Postavshik] ([IDPostavshika], [FIO], [Adres], [email], [PhoneNumber], [City]) VALUES (1, N'Андреев Игорь Сергеевич', N'г.Казань улица Короленко 12', N'Ert@gmail.com', N'89173156987', N'Казань')
INSERT [dbo].[Postavshik] ([IDPostavshika], [FIO], [Adres], [email], [PhoneNumber], [City]) VALUES (2, N'Иванов Иван Васильевич', N'г. Вологда  ', N'fgh@gmail.com', N'89065875621', N'Вологда')
GO
INSERT [dbo].[Type] ([IDType], [Categoriya], [Opisanie]) VALUES (1, N'Комнатные', NULL)
INSERT [dbo].[Type] ([IDType], [Categoriya], [Opisanie]) VALUES (2, N'Многоление цветы', NULL)
GO
SET IDENTITY_INSERT [dbo].[Flowers] ON 

INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (1, N'Лилия', 2, 100, 1, 45, N'Lilii.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (2, N'Питунии', 2, 120, 2, 35, N'Pitunii.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (3, N'Ромашки', 2, 75, 2, 100, N'Romashki.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (4, N'Роза', 1, 200, 1, 44, N'Roza.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (5, N'Тюльпани', 1, 170, 1, 79, N'Tulpani.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (6, N'test', NULL, 110, 1, 1, N'1devenv_Si0jnZ5BT3.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (7, N'tt', NULL, 1230, 2, 12, N'1devenv_uy751N6uC0.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (8, N'lol', NULL, 660, 2, 1, N'3devenv_uy751N6uC0.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (9, N'acc', NULL, 21110, 2, 1, N'2sha.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (10, N'chukcha', NULL, 21212120, 1, 1, N'1Screenshot_1.png')
INSERT [dbo].[Flowers] ([FlowerID], [Naimenovanie], [IDType], [Price], [IDPostavshika], [Kolichestvo], [image]) VALUES (11, N'olol', NULL, 123123120, 1, 1, N'3Screenshot_1.png')
SET IDENTITY_INSERT [dbo].[Flowers] OFF
GO
INSERT [dbo].[user] ([login], [password]) VALUES (N'111', N'111')
GO
