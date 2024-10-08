USE [ProductDB]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24-09-2024 16:46:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[Active] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [Name], [Price], [Quantity], [Active]) VALUES (1, N'Bat', CAST(100 AS Decimal(18, 0)), 10, 1)
INSERT [dbo].[Product] ([id], [Name], [Price], [Quantity], [Active]) VALUES (3, N'test', CAST(200 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[Product] ([id], [Name], [Price], [Quantity], [Active]) VALUES (4, N'test1', CAST(300 AS Decimal(18, 0)), 6, 1)
INSERT [dbo].[Product] ([id], [Name], [Price], [Quantity], [Active]) VALUES (5, N'test2', CAST(600 AS Decimal(18, 0)), 7, 1)
INSERT [dbo].[Product] ([id], [Name], [Price], [Quantity], [Active]) VALUES (6, N'abc', CAST(12 AS Decimal(18, 0)), 67, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
