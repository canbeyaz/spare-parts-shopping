USE [master]
GO
/****** Object:  Database [spare-parts-branch-db]    Script Date: 6.10.2023 02:50:28 ******/
CREATE DATABASE [spare-parts-branch-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'spare-parts-branch-db', FILENAME = N'C:\Users\pc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\spare-parts-branch-db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'spare-parts-branch-db_log', FILENAME = N'C:\Users\pc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\spare-parts-branch-db.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [spare-parts-branch-db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [spare-parts-branch-db] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET ANSI_NULLS ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET ANSI_PADDING ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET ARITHABORT ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [spare-parts-branch-db] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [spare-parts-branch-db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [spare-parts-branch-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [spare-parts-branch-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET RECOVERY FULL 
GO
ALTER DATABASE [spare-parts-branch-db] SET  MULTI_USER 
GO
ALTER DATABASE [spare-parts-branch-db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [spare-parts-branch-db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [spare-parts-branch-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [spare-parts-branch-db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [spare-parts-branch-db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [spare-parts-branch-db]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6.10.2023 02:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Roles] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users2]    Script Date: 6.10.2023 02:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Roles]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([Id], [Roles]) VALUES (2, N'Editör')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users2] ON 

INSERT [dbo].[Users2] ([Id], [Username], [Password], [RoleId]) VALUES (3, N'testsss', N'ss', 1)
INSERT [dbo].[Users2] ([Id], [Username], [Password], [RoleId]) VALUES (4, N'testsss', N'ss', 2)
INSERT [dbo].[Users2] ([Id], [Username], [Password], [RoleId]) VALUES (6, N'admin', N'admin', 1)
INSERT [dbo].[Users2] ([Id], [Username], [Password], [RoleId]) VALUES (7, N'user', N'user', 2)
SET IDENTITY_INSERT [dbo].[Users2] OFF
USE [master]
GO
ALTER DATABASE [spare-parts-branch-db] SET  READ_WRITE 
GO
