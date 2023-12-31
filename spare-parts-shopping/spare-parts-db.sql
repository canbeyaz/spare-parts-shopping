USE [master]
GO
/****** Object:  Database [spare-parts-db-2]    Script Date: 6.10.2023 02:55:10 ******/
CREATE DATABASE [spare-parts-db-2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'spare-parts-db', FILENAME = N'C:\Users\pc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\spare-parts-db-2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'spare-parts-db_log', FILENAME = N'C:\Users\pc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\spare-parts-db-2.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [spare-parts-db-2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [spare-parts-db-2] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [spare-parts-db-2] SET ANSI_NULLS ON 
GO
ALTER DATABASE [spare-parts-db-2] SET ANSI_PADDING ON 
GO
ALTER DATABASE [spare-parts-db-2] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [spare-parts-db-2] SET ARITHABORT ON 
GO
ALTER DATABASE [spare-parts-db-2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [spare-parts-db-2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [spare-parts-db-2] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [spare-parts-db-2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [spare-parts-db-2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [spare-parts-db-2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [spare-parts-db-2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET RECOVERY FULL 
GO
ALTER DATABASE [spare-parts-db-2] SET  MULTI_USER 
GO
ALTER DATABASE [spare-parts-db-2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [spare-parts-db-2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [spare-parts-db-2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [spare-parts-db-2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [spare-parts-db-2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [spare-parts-db-2]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6.10.2023 02:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL DEFAULT ((0)),
	[IsPayment] [bit] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payments]    Script Date: 6.10.2023 02:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardNo] [nvarchar](50) NULL,
	[CardName] [nvarchar](50) NULL,
	[CardMonth] [nvarchar](50) NULL,
	[CardYear] [nvarchar](50) NULL,
	[CardCvv] [nvarchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 6.10.2023 02:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NULL,
	[Stock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6.10.2023 02:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Name] [nvarchar](50) NULL,
	[BasketItems] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [ProductId], [Quantity], [IsPayment]) VALUES (2006, 1, 10, 1, 0)
INSERT [dbo].[Orders] ([Id], [UserId], [ProductId], [Quantity], [IsPayment]) VALUES (2007, 1, 11, 1, 0)
INSERT [dbo].[Orders] ([Id], [UserId], [ProductId], [Quantity], [IsPayment]) VALUES (2008, 1, 12, 1, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Stock]) VALUES (9, N'akü', N'077ca2c5-b8e8-4bf6-a263-3bf12c477c33.jpg', CAST(4599 AS Decimal(18, 0)), 5)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Stock]) VALUES (11, N'triger seti', N'7fc22e05-ae3d-4062-9eb9-35e2e83769a8.jpg', CAST(5299 AS Decimal(18, 0)), 10)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Stock]) VALUES (12, N'vw sol far', N'bba0461b-1891-43a8-a1c3-b2a8561c0ae5.jpg', CAST(7999 AS Decimal(18, 0)), 14)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Mail], [Username], [Password], [CreateDate], [Name], [BasketItems]) VALUES (1, N'test@test.com', N'test', N'test', CAST(N'2023-10-02 21:35:48.000' AS DateTime), N'test', NULL)
INSERT [dbo].[Users] ([Id], [Mail], [Username], [Password], [CreateDate], [Name], [BasketItems]) VALUES (2, N'kamil@gmail.com', N'kamiluser', N'test', CAST(N'2023-10-02 21:35:48.540' AS DateTime), N'kamil', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ToTable] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ToTable]
GO
USE [master]
GO
ALTER DATABASE [spare-parts-db-2] SET  READ_WRITE 
GO
