/****** Object:  StoredProcedure [dbo].[login]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[login]
GO
/****** Object:  StoredProcedure [dbo].[signup1]    ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[signup1]
GO
/****** Object:  StoredProcedure [dbo].[signup2]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[signup2]
GO
/****** Object:  Table [dbo].[ordertable]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordertable]') AND type in (N'U'))
DROP TABLE [dbo].[ordertable]
GO
/****** Object:  Table [dbo].[signup]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
DROP TABLE [dbo].[signup]
GO
/****** Object:  Table [dbo].[addcart]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcart]') AND type in (N'U'))
DROP TABLE [dbo].[addcart]
GO
/****** Object:  Table [dbo].[addcart1]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcart1]') AND type in (N'U'))
DROP TABLE [dbo].[addcart1]
GO
/****** Object:  Table [dbo].[addcat]    ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcat]') AND type in (N'U'))
DROP TABLE [dbo].[addcat]
GO
/****** Object:  Table [dbo].[addproduct]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addproduct]') AND type in (N'U'))
DROP TABLE [dbo].[addproduct]
GO
/****** Object:  Table [dbo].[contactus]     ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contactus]') AND type in (N'U'))
DROP TABLE [dbo].[contactus]
GO
/****** Object:  Table [dbo].[contactus]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contactus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[contactus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Message] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MessageDate] [datetime] NULL,
 CONSTRAINT [PK__contactu__3214EC0707020F21] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[contactus] ON
INSERT [dbo].[contactus] ([Id], [Name], [Email], [Phone], [Message], [MessageDate]) VALUES (2, N'Manish', N'manish@gmail.com', N'7894561230', N'Wonderful', CAST(0x0000A5EB0101BA5F AS DateTime))
SET IDENTITY_INSERT [dbo].[contactus] OFF
/****** Object:  Table [dbo].[addproduct]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addproduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addproduct](
	[productid] [numeric](18, 0) IDENTITY(1000,1) NOT NULL,
	[productname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[catid] [numeric](18, 0) NULL,
	[rate] [numeric](18, 0) NULL,
	[description] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productimage] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[discount] [numeric](18, 0) NULL,
 CONSTRAINT [PK_addproduct] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addproduct] ON
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1113 AS Numeric(18, 0)), N'Methi Paratha', CAST(104 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), N'Flatbread made from whole wheat flour, stuffed with fenugreek leaves; Two pieces served with raita', N'methi_paratha.jpg', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1114 AS Numeric(18, 0)), N'Shaahi Paneer', CAST(104 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), N'Made with fresh cheese with lots of gravy.<br />', N'oetrq6agdhhjd_bigger.jpg', CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1115 AS Numeric(18, 0)), N'Lachha Parantha', CAST(104 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Made with ghee inside and rolled to give a unique look<br />', N'2327725-lachha-paratha.jpg', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1116 AS Numeric(18, 0)), N'Palak Paneer', CAST(104 AS Numeric(18, 0)), CAST(30 AS Numeric(18, 0)), N'Made with fresh cheese with spinach. <br />', N'2245067-palak-paneer-spinach-paneer.jpg', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1117 AS Numeric(18, 0)), N'Paneer Tikka ', CAST(105 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), N'Cottage cheese cubes marinated in spices and yogurt, roasted in charcoal oven with tomato, onion and lemon juice', N'paneer_ka_baap_cc.jpg', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1118 AS Numeric(18, 0)), N'Soya Malai Tikka ', CAST(105 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'Cottage cheese cuSoya chunks marinated in milk cream, cashew-nut paste and roasted in charcoal ovenbes marinated in spices and yogurt, roasted in charcoal oven with tomato, onion and lemon juice', N'1444199667-soya-malai.jpg', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1119 AS Numeric(18, 0)), N'Vanilla Shake ', CAST(106 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'Made with lots of milk and vanilla ice cream. A refreshing drink <br />', N'5741366736899.47287.png', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1120 AS Numeric(18, 0)), N'Strawberry Shake ', CAST(106 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), N'Made with lots of milk and real strawberries. A refreshing drink <br />', N'strawberry-milkshakes-ay-x.jpg', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[addproduct] ([productid], [productname], [catid], [rate], [description], [productimage], [discount]) VALUES (CAST(1121 AS Numeric(18, 0)), N'Dal Makhani', CAST(104 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'Mouth Watering Dal Makhani<br />', N'Dal-Makhani.jpg', CAST(10 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[addproduct] OFF
/****** Object:  Table [dbo].[addcat]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addcat](
	[CatID] [numeric](18, 0) IDENTITY(100,1) NOT NULL,
	[CatName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CatPic] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_addcat] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addcat] ON
INSERT [dbo].[addcat] ([CatID], [CatName], [CatPic]) VALUES (CAST(104 AS Numeric(18, 0)), N'Main Course', N'meat_main_course_112.PettoD''AnatraAll''Arancio_full.jpg')
INSERT [dbo].[addcat] ([CatID], [CatName], [CatPic]) VALUES (CAST(105 AS Numeric(18, 0)), N'Starter', N'2_starter.jpg')
INSERT [dbo].[addcat] ([CatID], [CatName], [CatPic]) VALUES (CAST(106 AS Numeric(18, 0)), N'Beverages', N'cocktails.jpg')
SET IDENTITY_INSERT [dbo].[addcat] OFF
/****** Object:  Table [dbo].[addcart1]    Script Date: 04/24/2017 17:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcart1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addcart1](
	[id] [numeric](18, 0) IDENTITY(2500,1) NOT NULL,
	[orderno] [numeric](18, 0) NULL,
	[productpic] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productname] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rate] [numeric](18, 0) NULL,
	[qty] [numeric](18, 0) NULL,
	[total] [numeric](18, 0) NULL,
	[username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productid] [numeric](18, 0) NULL,
 CONSTRAINT [PK_addcart1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addcart1] ON
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2535 AS Numeric(18, 0)), CAST(10028 AS Numeric(18, 0)), N'oetrq6agdhhjd_bigger.jpg', N'Shahi Paneer', CAST(35 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1114 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2536 AS Numeric(18, 0)), CAST(10028 AS Numeric(18, 0)), N'2327725-lachha-paratha.jpg', N'Lachha Parantha', CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1115 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2537 AS Numeric(18, 0)), CAST(10029 AS Numeric(18, 0)), N'oetrq6agdhhjd_bigger.jpg', N'Shahi Paneer', CAST(31 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(62 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1114 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2538 AS Numeric(18, 0)), CAST(10029 AS Numeric(18, 0)), N'oetrq6agdhhjd_bigger.jpg', N'Shahi Paneer', CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1114 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2539 AS Numeric(18, 0)), CAST(10030 AS Numeric(18, 0)), N'1444199667-soya-malai.jpg', N'Soya Malai Tikka ', CAST(16 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1118 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2540 AS Numeric(18, 0)), CAST(10030 AS Numeric(18, 0)), N'methi_paratha.jpg', N'Methi Paratha', CAST(23 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(23 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1113 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2541 AS Numeric(18, 0)), CAST(10030 AS Numeric(18, 0)), N'paneer_ka_baap_cc.jpg', N'Paneer Tikka ', CAST(17 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1117 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2542 AS Numeric(18, 0)), CAST(10030 AS Numeric(18, 0)), N'1444199667-soya-malai.jpg', N'Soya Malai Tikka ', CAST(16 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1118 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2543 AS Numeric(18, 0)), CAST(10031 AS Numeric(18, 0)), N'methi_paratha.jpg', N'Methi Paratha', CAST(23 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(23 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1113 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2544 AS Numeric(18, 0)), CAST(10032 AS Numeric(18, 0)), N'oetrq6agdhhjd_bigger.jpg', N'Shahi Paneer', CAST(31 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(31 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1114 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2545 AS Numeric(18, 0)), CAST(10032 AS Numeric(18, 0)), N'1444199667-soya-malai.jpg', N'Soya Malai Tikka ', CAST(16 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1118 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2546 AS Numeric(18, 0)), CAST(10032 AS Numeric(18, 0)), N'strawberry-milkshakes-ay-x.jpg', N'Strawberry Shake ', CAST(11 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), N'manish@yahoo.com', CAST(1120 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2547 AS Numeric(18, 0)), CAST(10033 AS Numeric(18, 0)), N'methi_paratha.jpg', N'Methi Paratha', CAST(24 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), N'manish1@yahoo.com', CAST(1113 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2548 AS Numeric(18, 0)), CAST(10033 AS Numeric(18, 0)), N'paneer_ka_baap_cc.jpg', N'Paneer Tikka ', CAST(17 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(51 AS Numeric(18, 0)), N'manish1@yahoo.com', CAST(1117 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2549 AS Numeric(18, 0)), CAST(10033 AS Numeric(18, 0)), N'strawberry-milkshakes-ay-x.jpg', N'Strawberry Shake ', CAST(11 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), N'manish1@yahoo.com', CAST(1120 AS Numeric(18, 0)))
INSERT [dbo].[addcart1] ([id], [orderno], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(2550 AS Numeric(18, 0)), CAST(10034 AS Numeric(18, 0)), N'1444199667-soya-malai.jpg', N'Soya Malai Tikka ', CAST(16 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'manish@gmail.com', CAST(1118 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[addcart1] OFF
/****** Object:  Table [dbo].[addcart]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addcart](
	[cartid] [numeric](18, 0) IDENTITY(10000,1) NOT NULL,
	[productpic] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productname] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rate] [numeric](18, 0) NULL,
	[qty] [numeric](18, 0) NULL,
	[total] [numeric](18, 0) NULL,
	[username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productid] [numeric](18, 0) NULL,
 CONSTRAINT [PK_addcart] PRIMARY KEY CLUSTERED 
(
	[cartid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[addcart] ON
INSERT [dbo].[addcart] ([cartid], [productpic], [productname], [rate], [qty], [total], [username], [productid]) VALUES (CAST(10024 AS Numeric(18, 0)), N'maxresdefault.jpg', N'Dal Makhani', CAST(9 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'manish1@yahoo.com', CAST(1121 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[addcart] OFF
/****** Object:  Table [dbo].[signup]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[signup](
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[State] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sq] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sa] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserType] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_signup] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [country], [sq], [sa], [UserType]) VALUES (N'Admin', N'Lacey', N'Lacey', N'Washington', N'7894561230', N'admin@gmail.com', N'123', N'USA', N'Who is favourite actor?', N'Leo', N'admin')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [country], [sq], [sa], [UserType]) VALUES (N'Sapama', N'211, Model Town', N'Jalandhar', N'Punjab', N'8745693210', N'sapana@gmail.com', N'123', N'USA', N'Who is favourite actor?', N'salman', N'normal')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [country], [sq], [sa], [UserType]) VALUES (N'j', N'klj', N'klj', N'klj', N'9087654321', N'manish@dd.com', N'321', N'USA', N'Who is favourite actor?', N'shah', N'normal')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [country], [sq], [sa], [UserType]) VALUES (N'Ghurab', N'121, MartinWay', N'Lacey', N'Washington', N'876543211', N'ghurab@gmail.com', N'123', NULL, N'What is your pet name?', N'tomy', N'normal')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [country], [sq], [sa], [UserType]) VALUES (N'Manish', N'211, Model Town', N'Jalandhar', N'Punjab', N'9876543210', N'manish1@yahoo.com', N'123', N'USA', N'What is your pet name?', N'rocky', N'normal')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [country], [sq], [sa], [UserType]) VALUES (N'Manish', N'hkjhkj', N'kjh', N'kjh', N'9876543210', N'manpreet@yahoo.com', N'123', N'USA', N'What is your pet name?', N'tomy', N'normal')
INSERT [dbo].[signup] ([Name], [Address], [City], [State], [Phone], [Username], [Password], [country], [sq], [sa], [UserType]) VALUES (N'Jacob Benton', N'82 Village Greenlane', N'Tacoma', N'Washington', N'7894561230', N'rakesh@gmail.com', N'111', N'USA', N'Who is favourite actor?', N'Brad', N'normal')
/****** Object:  Table [dbo].[ordertable]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordertable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ordertable](
	[OrderNo] [numeric](18, 0) IDENTITY(10000,1) NOT NULL,
	[TotalCost] [numeric](18, 0) NULL,
	[Username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShippingAddress] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PaymentMode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HolderName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CardNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Expiry] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OrderDate] [date] NULL,
	[Status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OrderTime] [datetime] NULL,
 CONSTRAINT [PK_ordertable] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ordertable] ON
INSERT [dbo].[ordertable] ([OrderNo], [TotalCost], [Username], [ShippingAddress], [PaymentMode], [HolderName], [CardNumber], [Company], [Expiry], [OrderDate], [Status], [OrderTime]) VALUES (CAST(10028 AS Numeric(18, 0)), CAST(40 AS Numeric(18, 0)), N'manish@yahoo.com', N'ABC', N'Cash on Delivery', N'Null', N'null', N'null', N'null', CAST(0x443B0B00 AS Date), N'Processing', CAST(0x0000000001352AAC AS DateTime))
INSERT [dbo].[ordertable] ([OrderNo], [TotalCost], [Username], [ShippingAddress], [PaymentMode], [HolderName], [CardNumber], [Company], [Expiry], [OrderDate], [Status], [OrderTime]) VALUES (CAST(10029 AS Numeric(18, 0)), CAST(94 AS Numeric(18, 0)), N'manish@yahoo.com', N'cvbcvbcb', N'Cash on Delivery', N'Null', N'null', N'null', N'null', CAST(0x453B0B00 AS Date), N'Processing', CAST(0x0000000000DB9557 AS DateTime))
INSERT [dbo].[ordertable] ([OrderNo], [TotalCost], [Username], [ShippingAddress], [PaymentMode], [HolderName], [CardNumber], [Company], [Expiry], [OrderDate], [Status], [OrderTime]) VALUES (CAST(10030 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'manish@yahoo.com', N'', N'Cash on Delivery', N'Null', N'null', N'null', N'null', CAST(0x453B0B00 AS Date), N'Processing', CAST(0x0000000000FD203E AS DateTime))
INSERT [dbo].[ordertable] ([OrderNo], [TotalCost], [Username], [ShippingAddress], [PaymentMode], [HolderName], [CardNumber], [Company], [Expiry], [OrderDate], [Status], [OrderTime]) VALUES (CAST(10031 AS Numeric(18, 0)), CAST(23 AS Numeric(18, 0)), N'manish@yahoo.com', N'', N'Cash on Delivery', N'Null', N'null', N'null', N'null', CAST(0x453B0B00 AS Date), N'Processing', CAST(0x0000000000FF28B5 AS DateTime))
INSERT [dbo].[ordertable] ([OrderNo], [TotalCost], [Username], [ShippingAddress], [PaymentMode], [HolderName], [CardNumber], [Company], [Expiry], [OrderDate], [Status], [OrderTime]) VALUES (CAST(10032 AS Numeric(18, 0)), CAST(58 AS Numeric(18, 0)), N'manish@yahoo.com', N'', N'Cash on Delivery', N'Null', N'null', N'null', N'null', CAST(0x453B0B00 AS Date), N'Order Approved', CAST(0x000000000101332D AS DateTime))
INSERT [dbo].[ordertable] ([OrderNo], [TotalCost], [Username], [ShippingAddress], [PaymentMode], [HolderName], [CardNumber], [Company], [Expiry], [OrderDate], [Status], [OrderTime]) VALUES (CAST(10033 AS Numeric(18, 0)), CAST(108 AS Numeric(18, 0)), N'manish1@yahoo.com', N'New delhi', N'Credit Card', N'ABC', N'98349853434', N'VISA', N'3/2018', CAST(0xB43C0B00 AS Date), N'Order Approved', CAST(0x00000000011B7334 AS DateTime))
INSERT [dbo].[ordertable] ([OrderNo], [TotalCost], [Username], [ShippingAddress], [PaymentMode], [HolderName], [CardNumber], [Company], [Expiry], [OrderDate], [Status], [OrderTime]) VALUES (CAST(10034 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'manish@gmail.com', N'dd', N'Cash on Delivery', N'Null', N'null', N'null', N'null', CAST(0xBA3C0B00 AS Date), N'Shipped', CAST(0x0000000001186232 AS DateTime))
SET IDENTITY_INSERT [dbo].[ordertable] OFF
/****** Object:  StoredProcedure [dbo].[signup2]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[signup2]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	@n varchar(50),
	@add varchar(50),
	@ct varchar(50),
	@st varchar(50),
	@ph varchar(50),
	@un varchar(50),
	@p varchar(50),
	@country varchar(50),
	@sq varchar(500),
	@sa varchar(50),
	@ut varchar(50)

AS   insert into signup values(@n,@add,@ct,@st,@ph,@un,@p,@country,@sq,@sa,@ut)
	/* SET NOCOUNT ON */
	RETURN' 
END
GO
/****** Object:  StoredProcedure [dbo].[signup1]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[signup1]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	@un varchar(50)
AS   select * from signup where username=@un
	/* SET NOCOUNT ON */
	RETURN' 
END
GO
/****** Object:  StoredProcedure [dbo].[login]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[login]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	@un varchar(50),
	@p varchar(50)
AS
	/* SET NOCOUNT ON */
	select * from signup  where username=@un and password=@p;
	RETURN' 
END
GO
