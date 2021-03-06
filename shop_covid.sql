USE [master]
GO
/****** Object:  Database [ShopCovid]    Script Date: 27/03/2022 12:48:25 SA ******/
CREATE DATABASE [ShopCovid]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopCovid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopCovid.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopCovid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopCovid_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopCovid] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopCovid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopCovid] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopCovid] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopCovid] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopCovid] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopCovid] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopCovid] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopCovid] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopCovid] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopCovid] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopCovid] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopCovid] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopCovid] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopCovid] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopCovid] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopCovid] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopCovid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopCovid] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopCovid] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopCovid] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopCovid] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopCovid] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopCovid] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopCovid] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopCovid] SET  MULTI_USER 
GO
ALTER DATABASE [ShopCovid] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopCovid] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopCovid] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopCovid] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopCovid] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopCovid] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopCovid] SET QUERY_STORE = OFF
GO
USE [ShopCovid]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27/03/2022 12:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[categoryID] [nvarchar](50) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 27/03/2022 12:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details](
	[detailID] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[OrderID] [int] NULL,
	[productID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Details] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 27/03/2022 12:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [date] NULL,
	[total] [float] NULL,
	[userName] [nvarchar](50) NULL,
	[phone] [varchar](20) NULL,
	[address] [nvarchar](200) NULL,
	[userID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 27/03/2022 12:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productID] [nvarchar](50) NOT NULL,
	[productName] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[status] [nvarchar](50) NULL,
	[categoryID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27/03/2022 12:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [nvarchar](50) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](10) NULL,
	[roleID] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([categoryID], [categoryName], [image]) VALUES (N'1', N'Drink Fruit', N'cat-4.jpg')
INSERT [dbo].[Categories] ([categoryID], [categoryName], [image]) VALUES (N'2', N'Fresh Fruit', N'cat-1.jpg')
INSERT [dbo].[Categories] ([categoryID], [categoryName], [image]) VALUES (N'3', N'Vegetable', N'cat-3.jpg')
INSERT [dbo].[Categories] ([categoryID], [categoryName], [image]) VALUES (N'4', N'Dried Fruit', N'cat-2.jpg')
GO
SET IDENTITY_INSERT [dbo].[Details] ON 

INSERT [dbo].[Details] ([detailID], [price], [quantity], [OrderID], [productID]) VALUES (1, 9, 1, 1, N'1')
INSERT [dbo].[Details] ([detailID], [price], [quantity], [OrderID], [productID]) VALUES (2, 5, 1, 1, N'7')
INSERT [dbo].[Details] ([detailID], [price], [quantity], [OrderID], [productID]) VALUES (3, 3, 13, 2, N'3')
INSERT [dbo].[Details] ([detailID], [price], [quantity], [OrderID], [productID]) VALUES (4, 5, 1, 2, N'7')
SET IDENTITY_INSERT [dbo].[Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [DateOrder], [total], [userName], [phone], [address], [userID]) VALUES (1, CAST(N'2021-10-20' AS Date), 14, N'Nguyen Dang Quang', N'0356449764', N'chung cu sky 9', N'quang')
INSERT [dbo].[Orders] ([OrderID], [DateOrder], [total], [userName], [phone], [address], [userID]) VALUES (2, CAST(N'2021-10-21' AS Date), 44, N'Nguyen Dang Quang', N'0356449764', N'chung cu sky 9', N'quang')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'1', N'Orange Juice', N'product-11.jpg', 9, 9, N'Inactive', N'1')
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'2', N'Grape', N'product-4.jpg', 15, 5, N'Active', N'2')
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'3', N'Guava', N'product-3.jpg', 10, 3, N'Active', N'2')
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'4', N'Banana', N'product-2.jpg', 27, 2, N'Active', N'2')
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'5', N'Mango', N'product-6.jpg', 24, 3, N'Active', N'2')
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'6', N'Watermelon', N'product-7.jpg', 28, 4, N'Active', N'2')
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'7', N'Apple', N'product-8.jpg', 22, 5, N'Active', N'2')
INSERT [dbo].[Products] ([productID], [productName], [image], [quantity], [price], [status], [categoryID]) VALUES (N'8', N'Raisins', N'product-9.jpg', 21, 9, N'Active', N'4')
GO
INSERT [dbo].[Users] ([userID], [userName], [password], [address], [phone], [roleID], [status]) VALUES (N'admin', N'admin', N'admin', N'chung cu sky 9', N'0356449764', N'1', N'Active')
INSERT [dbo].[Users] ([userID], [userName], [password], [address], [phone], [roleID], [status]) VALUES (N'quang', N'Nguyen Dang Quang', N'1', N'chung cu sky 9', N'0356449764', N'2', N'Active')
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_Orders]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_Products1] FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_Products1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Categories] ([categoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
USE [master]
GO
ALTER DATABASE [ShopCovid] SET  READ_WRITE 
GO
