USE [GPS_Tracking]
GO
/****** Object:  Table [dbo].[BlockedArea]    Script Date: 14-May-19 11:43:54 PM ******/
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
/****** Object:  Table [dbo].[BlockedAreaCoordinate]    Script Date: 14-May-19 11:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedAreaCoordinate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lat] [nvarchar](50) NULL,
	[Long] [nvarchar](50) NULL,
	[BlockedAreaId] [int] NULL,
 CONSTRAINT [PK_BlockedAreaCoordinate] PRIMARY KEY CLUSTERED 
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
ALTER TABLE [dbo].[BlockedAreaCoordinate]  WITH CHECK ADD  CONSTRAINT [FK_BlockedAreaCoordinate_BlockedArea] FOREIGN KEY([BlockedAreaId])
REFERENCES [dbo].[BlockedArea] ([Id])
GO
ALTER TABLE [dbo].[BlockedAreaCoordinate] CHECK CONSTRAINT [FK_BlockedAreaCoordinate_BlockedArea]
GO
