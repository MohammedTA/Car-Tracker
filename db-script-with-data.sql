USE [GPS_Tracking]
GO
/****** Object:  Table [dbo].[BlockedArea]    Script Date: 16-May-19 12:25:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedArea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BlockedArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlockedAreaCoordinate]    Script Date: 16-May-19 12:25:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedAreaCoordinate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lat] [nvarchar](50) NULL,
	[Long] [nvarchar](50) NULL,
	[BlockedAreaId] [int] NOT NULL,
 CONSTRAINT [PK_BlockedAreaCoordinate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPS_Real]    Script Date: 16-May-19 12:25:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPS_Real](
	[ModemId] [nvarchar](50) NULL,
	[ServerTimestamp] [nvarchar](50) NULL,
	[Long] [nvarchar](50) NULL,
	[Lat] [nvarchar](50) NULL,
	[Altitude] [nvarchar](50) NULL,
	[Direction] [nvarchar](50) NULL,
	[Satellites] [nvarchar](50) NULL,
	[Speed] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_GPS_Real] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BlockedArea] ON 

INSERT [dbo].[BlockedArea] ([Id], [Name], [CreatedOn]) VALUES (87, N'JVO991DC7CC8K', CAST(N'2019-05-14T20:37:32.857' AS DateTime))
SET IDENTITY_INSERT [dbo].[BlockedArea] OFF
SET IDENTITY_INSERT [dbo].[BlockedAreaCoordinate] ON 

INSERT [dbo].[BlockedAreaCoordinate] ([Id], [Lat], [Long], [BlockedAreaId]) VALUES (328, N'25.0968452880413', N'46.5500273109375', 87)
INSERT [dbo].[BlockedAreaCoordinate] ([Id], [Lat], [Long], [BlockedAreaId]) VALUES (329, N'24.0277045210114', N'46.6049589515625', 87)
INSERT [dbo].[BlockedAreaCoordinate] ([Id], [Lat], [Long], [BlockedAreaId]) VALUES (330, N'24.5384320050586', N'48.1430448890625', 87)
INSERT [dbo].[BlockedAreaCoordinate] ([Id], [Lat], [Long], [BlockedAreaId]) VALUES (331, N'25.2062367400857', N'47.5827421546875', 87)
SET IDENTITY_INSERT [dbo].[BlockedAreaCoordinate] OFF
SET IDENTITY_INSERT [dbo].[GPS_Real] ON 

INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/2/2018 7:29:27 AM', N'46.6434111', N'24.7281755', N'648', N'41', N'7', N'3', 169)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:29 AM', N'46.6433998', N'24.7281668', N'649', N'283', N'7', N'6', 170)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:25 AM', N'46.6434238', N'24.728158', N'648', N'328', N'7', N'11', 171)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:24 AM', N'46.6434256', N'24.7281408', N'647', N'43', N'7', N'11', 172)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:23 AM', N'46.643397', N'24.72813', N'647', N'67', N'7', N'15', 173)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:20 AM', N'46.6432756', N'24.7276566', N'646', N'173', N'7', N'0', 174)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:45 AM', N'46.6432829', N'24.7280795', N'646', N'205', N'7', N'3', 175)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:50 AM', N'46.6432828', N'24.7280325', N'645', N'277', N'7', N'2', 176)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:50 AM', N'46.643264', N'24.7280458', N'645', N'132', N'7', N'6', 177)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:49 AM', N'46.6432533', N'24.7280561', N'645', N'238', N'7', N'7', 178)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:48 AM', N'46.6432571', N'24.7280683', N'645', N'219', N'7', N'6', 179)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:47 AM', N'46.643271', N'24.7280768', N'645', N'255', N'7', N'12', 180)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:45 AM', N'46.6432873', N'24.7280893', N'647', N'217', N'7', N'6', 181)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:44 AM', N'46.6433028', N'24.728101', N'647', N'252', N'7', N'8', 182)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:29:43 AM', N'46.6433263', N'24.7281088', N'648', N'264', N'7', N'6', 183)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:30:15 AM', N'46.643346', N'24.7279916', N'640', N'98', N'7', N'6', 184)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:30:22 AM', N'46.6434078', N'24.728004', N'639', N'86', N'7', N'6', 185)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:33:05 AM', N'46.6433635', N'24.7278048', N'645', N'164', N'7', N'1', 186)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:33:04 AM', N'46.6433486', N'24.727786', N'645', N'190', N'7', N'8', 187)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:33:02 AM', N'46.6433611', N'24.7278281', N'646', N'202', N'7', N'7', 188)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:33:00 AM', N'46.6433313', N'24.727803', N'646', N'192', N'6', N'9', 189)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:32:57 AM', N'46.6433635', N'24.7278758', N'647', N'207', N'6', N'9', 190)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:33:21 AM', N'46.6433673', N'24.727851', N'645', N'122', N'8', N'7', 191)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:33:22 AM', N'46.6433685', N'24.7278405', N'645', N'196', N'8', N'7', 192)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:37:22 AM', N'46.6433643', N'24.7279035', N'646', N'193', N'7', N'0', 193)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:37:21 AM', N'46.6433643', N'24.7279035', N'646', N'193', N'7', N'0', 194)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:37:29 AM', N'46.6434023', N'24.7279695', N'646', N'50', N'8', N'7', 195)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:37:28 AM', N'46.6433885', N'24.7279598', N'646', N'68', N'8', N'6', 196)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:37:38 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 197)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:40:25 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 198)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:40:16 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 199)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:40:16 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 200)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:40:12 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 201)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:40:07 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 202)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:40:07 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 203)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:40:06 AM', N'46.6435334', N'24.7280446', N'0', N'0', N'0', N'0', 204)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:29 AM', N'46.6412218', N'24.7293456', N'633', N'312', N'8', N'46', 205)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:21 AM', N'46.6419293', N'24.7286826', N'634', N'318', N'8', N'41', 206)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:11 AM', N'46.6426501', N'24.7279816', N'642', N'325', N'6', N'26', 207)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:08 AM', N'46.6427953', N'24.7278521', N'641', N'315', N'6', N'21', 208)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:36 AM', N'46.6404793', N'24.7299665', N'634', N'311', N'8', N'55', 209)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:43 AM', N'46.6396251', N'24.7306129', N'634', N'311', N'9', N'61', 210)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:49 AM', N'46.6388573', N'24.7311916', N'639', N'309', N'10', N'60', 211)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:42:55 AM', N'46.6380633', N'24.7317793', N'642', N'309', N'10', N'61', 212)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:01 AM', N'46.6372626', N'24.7324136', N'645', N'312', N'9', N'66', 213)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:07 AM', N'46.6364286', N'24.733121', N'639', N'311', N'10', N'69', 214)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:12 AM', N'46.6356863', N'24.7337236', N'637', N'311', N'10', N'74', 215)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:17 AM', N'46.6349313', N'24.7343446', N'635', N'311', N'10', N'77', 216)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:22 AM', N'46.63415', N'24.7349703', N'633', N'311', N'9', N'75', 217)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:30 AM', N'46.6338391', N'24.7352208', N'0', N'0', N'0', N'0', 218)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:38 AM', N'46.6315316', N'24.7370958', N'633', N'312', N'6', N'76', 219)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:43 AM', N'46.6307898', N'24.7377481', N'635', N'311', N'9', N'75', 220)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:48 AM', N'46.6300511', N'24.7383661', N'637', N'311', N'10', N'74', 221)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:53 AM', N'46.6293166', N'24.738979', N'641', N'311', N'10', N'73', 222)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:43:58 AM', N'46.6285598', N'24.739576', N'646', N'310', N'10', N'73', 223)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:13 AM', N'46.6261978', N'24.7414543', N'650', N'311', N'12', N'78', 224)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:08 AM', N'46.6269965', N'24.740799', N'651', N'312', N'12', N'78', 225)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:03 AM', N'46.6277858', N'24.7401653', N'648', N'311', N'12', N'75', 226)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:18 AM', N'46.6253839', N'24.7420915', N'650', N'308', N'12', N'76', 227)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:23 AM', N'46.6245478', N'24.7426486', N'652', N'304', N'12', N'73', 228)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:28 AM', N'46.6237036', N'24.7431536', N'654', N'303', N'11', N'74', 229)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:33 AM', N'46.6228733', N'24.7436911', N'657', N'307', N'11', N'74', 230)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:38 AM', N'46.6220926', N'24.7442898', N'658', N'312', N'12', N'75', 231)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:43 AM', N'46.621317', N'24.7449378', N'658', N'311', N'13', N'76', 232)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:48 AM', N'46.6205463', N'24.7455611', N'656', N'311', N'13', N'71', 233)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:54 AM', N'46.6197923', N'24.7461836', N'656', N'311', N'12', N'49', 234)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:00 AM', N'46.6194216', N'24.7464475', N'657', N'245', N'12', N'12', 235)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:44:59 AM', N'46.6194576', N'24.7464498', N'657', N'283', N'12', N'14', 236)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:05 AM', N'46.6194783', N'24.7462899', N'659', N'133', N'11', N'21', 237)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:03 AM', N'46.6194088', N'24.7463655', N'658', N'145', N'12', N'12', 238)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:02 AM', N'46.6193925', N'24.7463958', N'658', N'182', N'12', N'10', 239)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:01 AM', N'46.6193983', N'24.7464248', N'657', N'208', N'12', N'11', 240)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:14 AM', N'46.6202795', N'24.7456353', N'661', N'131', N'12', N'55', 241)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:21 AM', N'46.6211158', N'24.7449348', N'662', N'131', N'12', N'62', 242)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:27 AM', N'46.6219168', N'24.7442819', N'664', N'132', N'12', N'65', 243)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:33 AM', N'46.6227815', N'24.7436018', N'665', N'127', N'12', N'71', 244)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:38 AM', N'46.6236061', N'24.7430691', N'665', N'123', N'12', N'76', 245)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:43 AM', N'46.6245055', N'24.7425375', N'663', N'124', N'14', N'80', 246)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:48 AM', N'46.625417', N'24.7419233', N'660', N'128', N'14', N'85', 247)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:08 AM', N'46.6289776', N'24.739061', N'656', N'130', N'15', N'88', 248)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:03 AM', N'46.6280715', N'24.7397683', N'657', N'131', N'15', N'84', 249)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:58 AM', N'46.6272036', N'24.7404805', N'657', N'131', N'15', N'86', 250)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:45:53 AM', N'46.6263251', N'24.7412121', N'657', N'132', N'15', N'86', 251)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:13 AM', N'46.6299013', N'24.73832', N'654', N'131', N'15', N'90', 252)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:29 AM', N'46.6329648', N'24.7358143', N'641', N'132', N'11', N'96', 253)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:25 AM', N'46.6321775', N'24.7364598', N'644', N'131', N'15', N'95', 254)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:21 AM', N'46.6314015', N'24.7370965', N'648', N'132', N'14', N'94', 255)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:17 AM', N'46.6306443', N'24.7377156', N'652', N'131', N'15', N'90', 256)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:33 AM', N'46.633732', N'24.7351608', N'637', N'134', N'8', N'92', 257)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:41 AM', N'46.635273', N'24.7338558', N'634', N'131', N'9', N'99', 258)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:37 AM', N'46.634457', N'24.7345036', N'635', N'134', N'5', N'95', 259)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:45 AM', N'46.6360995', N'24.733197', N'634', N'132', N'14', N'97', 260)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:49 AM', N'46.636892', N'24.7325498', N'636', N'132', N'14', N'92', 261)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:53 AM', N'46.6376448', N'24.731922', N'639', N'132', N'14', N'90', 262)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:46:58 AM', N'46.6385535', N'24.7311771', N'641', N'132', N'14', N'87', 263)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:03 AM', N'46.6394406', N'24.7304526', N'643', N'132', N'15', N'85', 264)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:08 AM', N'46.6402808', N'24.7297613', N'643', N'132', N'15', N'80', 265)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:13 AM', N'46.6411145', N'24.7290666', N'641', N'133', N'15', N'83', 266)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:18 AM', N'46.6419066', N'24.7283261', N'640', N'137', N'15', N'81', 267)
GO
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:23 AM', N'46.6426256', N'24.7275658', N'639', N'141', N'15', N'78', 268)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:28 AM', N'46.6432553', N'24.7267985', N'640', N'146', N'15', N'74', 269)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:33 AM', N'46.6437898', N'24.726009', N'640', N'150', N'14', N'72', 270)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:43 AM', N'46.6447083', N'24.7243418', N'637', N'155', N'14', N'75', 271)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:38 AM', N'46.6442608', N'24.7251978', N'638', N'152', N'14', N'74', 272)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:48 AM', N'46.6451595', N'24.7234926', N'637', N'153', N'14', N'74', 273)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:53 AM', N'46.645625', N'24.722689', N'639', N'152', N'14', N'71', 274)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:47:58 AM', N'46.6460566', N'24.7218705', N'640', N'154', N'14', N'72', 275)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:04 AM', N'46.6465731', N'24.7209025', N'641', N'154', N'15', N'69', 276)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:10 AM', N'46.6470429', N'24.7199638', N'642', N'155', N'16', N'68', 277)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:16 AM', N'46.6475135', N'24.719012', N'643', N'156', N'16', N'70', 278)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:22 AM', N'46.6479945', N'24.7180755', N'644', N'155', N'16', N'67', 279)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:34 AM', N'46.6489308', N'24.7161463', N'643', N'155', N'16', N'70', 280)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:28 AM', N'46.6484465', N'24.7171163', N'644', N'155', N'15', N'71', 281)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:40 AM', N'46.6494376', N'24.7152016', N'642', N'153', N'16', N'72', 282)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:45 AM', N'46.6498603', N'24.7143656', N'640', N'154', N'16', N'74', 283)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:50 AM', N'46.6502835', N'24.71351', N'638', N'155', N'16', N'75', 284)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:48:55 AM', N'46.6507128', N'24.7126493', N'636', N'155', N'16', N'77', 285)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:00 AM', N'46.6510933', N'24.7117955', N'634', N'160', N'16', N'73', 286)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:06 AM', N'46.651431', N'24.7107803', N'633', N'164', N'16', N'68', 287)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:12 AM', N'46.6517248', N'24.709775', N'632', N'166', N'16', N'70', 288)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:23 AM', N'46.652303', N'24.7078786', N'631', N'163', N'16', N'69', 289)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:17 AM', N'46.6519698', N'24.7089013', N'631', N'164', N'16', N'72', 290)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:29 AM', N'46.6526503', N'24.7069518', N'631', N'158', N'16', N'58', 291)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:45 AM', N'46.653377', N'24.7056123', N'630', N'106', N'15', N'15', 292)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:44 AM', N'46.6533401', N'24.7056311', N'630', N'129', N'15', N'15', 293)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:36 AM', N'46.6530691', N'24.7061356', N'630', N'154', N'16', N'47', 294)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:50 AM', N'46.6535895', N'24.7057076', N'629', N'15', N'16', N'21', 295)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:49 AM', N'46.6535623', N'24.7056616', N'629', N'39', N'16', N'20', 296)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:48 AM', N'46.6535191', N'24.7056295', N'629', N'61', N'15', N'19', 297)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:47 AM', N'46.6534706', N'24.705612', N'629', N'76', N'15', N'17', 298)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:46 AM', N'46.6534211', N'24.7056061', N'629', N'89', N'15', N'17', 299)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:54 AM', N'46.6535148', N'24.7059481', N'629', N'332', N'16', N'30', 300)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:52 AM', N'46.653581', N'24.7058151', N'629', N'343', N'16', N'24', 301)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:49:51 AM', N'46.6535951', N'24.70576', N'629', N'353', N'16', N'20', 302)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:02 AM', N'46.653111', N'24.7067921', N'628', N'339', N'15', N'56', 303)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:08 AM', N'46.6527386', N'24.7076713', N'628', N'341', N'16', N'69', 304)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:14 AM', N'46.6523968', N'24.7087016', N'628', N'343', N'16', N'73', 305)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:19 AM', N'46.6521083', N'24.7095945', N'629', N'343', N'16', N'72', 306)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:25 AM', N'46.6517703', N'24.7106299', N'629', N'343', N'16', N'73', 307)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:30 AM', N'46.651449', N'24.7115411', N'629', N'341', N'16', N'79', 308)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:35 AM', N'46.6510721', N'24.712471', N'630', N'336', N'15', N'79', 309)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:40 AM', N'46.6506153', N'24.7133836', N'631', N'334', N'16', N'78', 310)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:50 AM', N'46.6496928', N'24.7150976', N'635', N'333', N'16', N'72', 311)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:45 AM', N'46.6501635', N'24.7142715', N'633', N'333', N'17', N'76', 312)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:50:55 AM', N'46.649246', N'24.7159285', N'637', N'333', N'16', N'74', 313)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:00 AM', N'46.6487981', N'24.716777', N'638', N'335', N'17', N'74', 314)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:05 AM', N'46.648373', N'24.7176288', N'639', N'335', N'17', N'73', 315)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:11 AM', N'46.6478886', N'24.7185873', N'640', N'335', N'17', N'67', 316)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:17 AM', N'46.6474478', N'24.7194856', N'640', N'336', N'17', N'63', 317)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:23 AM', N'46.6470473', N'24.7203498', N'640', N'335', N'17', N'61', 318)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:29 AM', N'46.6466276', N'24.7211713', N'641', N'336', N'17', N'58', 319)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:35 AM', N'46.6462016', N'24.7219906', N'640', N'333', N'17', N'60', 320)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:41 AM', N'46.6457605', N'24.7228796', N'639', N'334', N'17', N'68', 321)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:47 AM', N'46.6453374', N'24.723761', N'637', N'336', N'17', N'55', 322)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:51:54 AM', N'46.644868', N'24.7246976', N'636', N'335', N'17', N'61', 323)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:52:00 AM', N'46.6443946', N'24.7255541', N'635', N'331', N'17', N'61', 324)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:52:07 AM', N'46.6438301', N'24.7264525', N'636', N'327', N'17', N'54', 325)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:52:14 AM', N'46.643245', N'24.7272433', N'638', N'324', N'16', N'49', 326)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:52:21 AM', N'46.6429191', N'24.7277293', N'639', N'10', N'16', N'10', 327)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:52:20 AM', N'46.6429158', N'24.7276953', N'638', N'353', N'16', N'17', 328)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:52:23 AM', N'46.6429468', N'24.7277436', N'639', N'113', N'16', N'2', 329)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:56:04 AM', N'46.6433571', N'24.7279698', N'643', N'279', N'9', N'2', 330)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:55:54 AM', N'46.643439', N'24.7279681', N'643', N'96', N'9', N'5', 331)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:55:50 AM', N'46.6433733', N'24.7279798', N'641', N'91', N'8', N'1', 332)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:53:50 AM', N'46.6429845', N'24.7277535', N'0', N'0', N'0', N'0', 333)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:53:49 AM', N'46.6429845', N'24.7277535', N'0', N'0', N'0', N'0', 334)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/2/2018 7:56:01 AM', N'46.6434188', N'24.7279678', N'643', N'284', N'9', N'7', 335)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582746', N'5/14/2018 7:55:48 AM', N'46.6433996', N'24.7279436', N'641', N'280', N'8', N'7', 336)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.6433996', N'24.7279436', N'641', N'280', N'8', N'7', 337)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.6433997', N'24.7279437', N'0', N'0', N'0', N'0', 338)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.6433998', N'24.7279438', N'0', N'0', N'0', N'0', 339)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.6433999', N'24.7279439', N'0', N'0', N'0', N'0', 340)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.6433997', N'24.7279441', N'0', N'0', N'0', N'0', 341)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.6433997', N'24.7279441', N'0', N'0', N'0', N'0', 342)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.6433997', N'25.7279441', N'0', N'0', N'0', N'0', 343)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'45.9433997', N'24.9279441', N'0', N'0', N'0', N'0', 344)
INSERT [dbo].[GPS_Real] ([ModemId], [ServerTimestamp], [Long], [Lat], [Altitude], [Direction], [Satellites], [Speed], [Id]) VALUES (N'356307047582741', N'5/13/2018 7:55:48 AM', N'44.9833997', N'24.9879441', N'0', N'100', N'0', N'0', 345)
SET IDENTITY_INSERT [dbo].[GPS_Real] OFF
ALTER TABLE [dbo].[BlockedAreaCoordinate]  WITH CHECK ADD  CONSTRAINT [FK_BlockedAreaCoordinate_BlockedArea] FOREIGN KEY([BlockedAreaId])
REFERENCES [dbo].[BlockedArea] ([Id])
GO
ALTER TABLE [dbo].[BlockedAreaCoordinate] CHECK CONSTRAINT [FK_BlockedAreaCoordinate_BlockedArea]
GO
/****** Object:  StoredProcedure [dbo].[GPS_RealPagging]    Script Date: 16-May-19 12:25:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GPS_RealPagging]
(
	@RowsPerPage		int=10,
	@Page				int=1,
	@ModemId			nvarchar(50)=null,
	@FromDate				DateTime=null,
	@ToDate				DateTime=null
)
as

declare @start int
declare @end int

set @start = ((@Page-1)*@RowsPerPage)+1
set @End = @Page*@RowsPerPage

select *
 from
(select ROW_NUMBER() OVER(ORDER by id desc) as Row_num,* from GPS_Real
 where ModemId=isnull(@ModemId,ModemId )
 and CONVERT(DATETIME, ServerTimestamp, 101)>= isnull(@FromDate,CONVERT(DATETIME, ServerTimestamp, 101)) and CONVERT(DATETIME, ServerTimestamp, 101)<=isnull(@ToDate,CONVERT(DATETIME, ServerTimestamp, 101))
) as MyTable
where 
Row_Num between @start and @End order by id desc
GO
