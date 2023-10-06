USE [master]
GO
/****** Object:  Database [spare_parts_shopping.API.Models.SparePartsPaymentDb]    Script Date: 6.10.2023 02:55:49 ******/
CREATE DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'spare_parts_shopping.API.Models.SparePartsPaymentDb.mdf', FILENAME = N'C:\Users\pc\Documents\GitHub\spare-parts-shopping\spare-parts-shopping\spare-parts-shopping.API\App_Data\spare_parts_shopping.API.Models.SparePartsPaymentDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'spare_parts_shopping.API.Models.SparePartsPaymentDb_log.ldf', FILENAME = N'C:\Users\pc\Documents\GitHub\spare-parts-shopping\spare-parts-shopping\spare-parts-shopping.API\App_Data\spare_parts_shopping.API.Models.SparePartsPaymentDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [spare_parts_shopping.API.Models.SparePartsPaymentDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET  MULTI_USER 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [spare_parts_shopping.API.Models.SparePartsPaymentDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6.10.2023 02:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pay]    Script Date: 6.10.2023 02:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardNo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Pay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payments]    Script Date: 6.10.2023 02:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardNo] [nvarchar](max) NULL,
	[CardName] [nvarchar](max) NULL,
	[CardMonth] [nvarchar](max) NULL,
	[CardYear] [nvarchar](max) NULL,
	[CardCvv] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202310051718011_InitialCreate', N'spare_parts_shopping.API.Models.SparePartsPaymentDb', 0x1F8B0800000000000400ED58DB6EE336107D2FD07F10F8D4028999CB4B1BC8BB48EDA430BA4E8C5576813E2D68696C0BA54895A48CF8DBFAD04FEA2F742851174B766CC76EBA408B008E349A3973A3E6A2BFFEF8D37FFF9C706F094AC752F4C965EF8278204219C562DE2799999DFF40DEBFFBF61BFF2E4A9EBDCF25DFB5E54349A1FB64614C7A43A90E179030DD4BE250492D67A617CA84B248D2AB8B8B1FE9E52505842088E579FEC74C983881FC066F075284909A8CF1B18C806B47C727418EEA3DB00474CA42E813FCA7E00BFE18FD452F649AA2A5BDDBC9A8578812EF96C70CCD0A80CF88C78490861934FAE69386C02829E6418A04C69F562920DF8C710DCE999B9A7D5FBF2EAEAC5FB4162CA1C24C1B991C087879ED0245DBE2AF0A37A90289A1BCC3909B95F53A0F679F4CD88A786D3D3703AE2CCFCE40F750FCCCCB99CE73A6F326D3597556F048D9BF336F90719329E80BC88C62FCCC9B64531E87BFC0EA49FE06A22F32CE9B06A3C9F86C8D80A489922928B3FA0833E7C628221E5D97A36DC14AAC2153783912E6FA8A780FA89C4D3954E7A11191C048053F8300C50C4413660C286131208F68477B4BD780A9E84196FAF0086288883766CF1F40CCCDA24FF09278F7F1334425C5D9F049C4F826A2905119ACABF1699DCE5D494ED04E7D64A6738CFFD3FD6FA57B8B1ABC7A13456329CCE24D34FD0A4CBD89A2C172F98FEB99A8383C75825E7EF1B1911A16E3D1751604F67D9DD8D7D5BDC3C3E98642809DD1D502ED54AEBB556007609A8DA336A3E8B5BD9C4A774ABA6AB449DC3DDAE46EE5583D1AD06236286708BA6588F0C72C2F538DA1C251BCA0982806E7C1E1DD35293068A83734D9CADA4A13D6143687D653548D96DEC74A9B21336CCA6CEE0751D261DB94C62D812E35D6996A97D43AF225AFBD2EF8F7E8046DBC3A9EF7E8A2352EF7162A8B365A91CB0521E34C6DA8D503C9B3446CABF72F4997D5B78950D2BA283E6D99DE8E15ED04ABD579DA71DF372BC5513F716A3682EE979F2DA25F43925E44C93B600727A71E86E45A5C1BCA910FC32A9A581BAAA01E869477A936504EDC1FC775A1268A23BDF10BD1A9E56D964A7B55D35BB5DB777574F796D829AC050BF13038CB38CA8BEA4A1B487A96A117FCCE073C467F6B863113F10CB429A65582BBD9556BB7FC7AF63CAA75C4772F7B6F3E6DC736A03BE7E9CE307EC8802D964C850BA6BE4BD8F3F74DAC53EC4CFFF180EDDE3A8E065BDB2C8E466B6E0F4783353684A3B0D6B680931DD7F6A4DF9D245F3DC317A5B24FA2A93D348579F8409F66BADF827EDCECDFED0B3E6D7E63F487A0E3790D61BF380A086DC1AD414B9E9198C93287E85CD3A292A595E231181661DC6F9589672C34F83804ADF37DEF33E319B2DC25538846E2313369666EB58664CAD7F6259FBEAC3F5F70D66DF61F537BA74FE1029A19A30BF0287ECA621E5576DF772BCC36087B045DD942AB70DF45B8F9AA427A90624F2017BE21A4206CD17B8224E508A61F45C096F01ADB70C5FD007316AECAF6BE1D647722D6C3EE0F6336572CD10EA396B7DFCDA9FD70FEEE6F254098976A170000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202310051725133_mg1', N'spare_parts_shopping.API.Models.SparePartsPaymentDb', 0x1F8B0800000000000400ED58DB6EE336107D2FD07F10F8D4028999CB4B1BC8BB48EDA430BA4E8C5576813E2D68696C0BA54895A48CF8DBFAD04FEA2F742851174B766CC76EBA408B008E349A3973A3E6A2BFFEF8D37FFF9C706F094AC752F4C965EF8278204219C562DE2799999DFF40DEBFFBF61BFF2E4A9EBDCF25DFB5E54349A1FB64614C7A43A90E179030DD4BE250492D67A617CA84B248D2AB8B8B1FE9E52505842088E579FEC74C983881FC066F075284909A8CF1B18C806B47C727418EEA3DB00474CA42E813FCA7E00BFE18FD452F649AA2A5BDDBC9A8578812EF96C70CCD0A80CF88C78490861934FAE69386C02829E6418A04C69F562920DF8C710DCE999B9A7D5FBF2EAEAC5FB4162CA1C24C1B991C087879ED0245DBE2AF0A37A90289A1BCC3909B95F53A0F679F4CD88A786D3D3703AE2CCFCE40F750FCCCCB99CE73A6F326D3597556F048D9BF336F90719329E80BC88C62FCCC9B64531E87BFC0EA49FE06A22F32CE9B06A3C9F86C8D80A489922928B3FA0833E7C628221E5D97A36DC14AAC2153783912E6FA8A780FA89C4D3954E7A11191C048053F8300C50C4413660C286131208F68477B4BD780A9E84196FAF0086288883766CF1F40CCCDA24FF09278F7F1334425C5D9F049C4F826A2905119ACABF1699DCE5D494ED04E7D64A6738CFFD3FD6FA57B8B1ABC7A13456329CCE24D34FD0A4CBD89A2C172F98FEB99A8383C75825E7EF1B1911A16E3D1751604F67D9DD8D7D5BDC3C3E98642809DD1D502ED54AEBB556007609A8DA336A3E8B5BD9C4A774ABA6AB449DC3DDAE46EE5583D1AD06236286708BA6588F0C72C2F538DA1C251BCA0982806E7C1E1DD35293068A83734D9CADA4A13D6143687D653548D96DEC74A9B21336CCA6CEE0751D261DB94C62D812E35D6996A97D43AF225AFBD2EF8F7E8046DBC3A9EF7E8A2352EF7162A8B365A91CB0521E34C6DA8D503C9B3446CABF72F4997D5B78950D2BA283E6D99DE8E15ED04ABD579DA71DF372BC5513F716A3682EE979F2DA25F43925E44C93B600727A71E86E45A5C1BCA910FC32A9A581BAAA01E869477A936504EDC1FC775A1268A23BDF10BD1A9E56D964A7B55D35BB5DB777574F796D829AC050BF13038CB38CA8BEA4A1B487A96A117FCCE073C467F6B863113F10CB429A65582BBD9556BB7FC7AF63CAA75C4772F7B6F3E6DC736A03BE7E9CE307EC8802D964C850BA6BE4BD8F3F74DAC53EC4CFFF180EDDE3A8E065BDB2C8E466B6E0F4783353684A3B0D6B680931DD7F6A4DF9D245F3DC317A5B24FA2A93D348579271BEEB7801F37FA77DB824F9B9F18FD21E8785E43D80F8E02425B6F6BD092672466B24C213AD7B4A8646965780C864518F65B65E2190B0D3E0E41EB7CDDFBCC78862C77C914A29178CC4C9A995BAD2199F2B588FAF465FDF97EB36EB3FF98DA3B7D0A17D0CC185D8047F15316F3A8B2FBBE5B60B641D813E8AA165A85EB2EC2CD5715D283147B02B9F00D2105616BDE1324294730FD2802B684D7D8861BEE0798B3705576F7ED20BB13B11E767F18B3B962897618B5BCFD6C4EED77F3777F03C93816AD69170000, N'6.4.4')
SET IDENTITY_INSERT [dbo].[Pay] ON 

INSERT [dbo].[Pay] ([Id], [CardNo]) VALUES (1, N'312')
INSERT [dbo].[Pay] ([Id], [CardNo]) VALUES (2, N'1421')
SET IDENTITY_INSERT [dbo].[Pay] OFF
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (2, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (3, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (4, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (5, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (6, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (7, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (8, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (9, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (10, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (11, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (12, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (13, N'12312312', N'test', N'04', N'2023', N'222', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (14, N'12312312', N'test', N'04', N'2023', N'', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (15, N'12312312', N'test', N'04', N'2023', N'123', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (16, N'12312312', N'test', N'04', N'2023', N'123', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (17, N'12312312', N'test', N'04', N'2023', N'123', N'3000')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (18, N'tes', N'test', N'test', N'test', N'set', N'30')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (19, N'tes', N'test', N'test', N'test', N'set', N'30')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (20, N'tes', N'test', N'test', N'test', N'set', N'30')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (21, N'test', N'test', N'test', N'test', N'test', N'30')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (22, N'test', N'test', N'test', N'test', N'test', N'25896')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (23, N'test', N'test', N'test', N'test', N'test', N'25896')
INSERT [dbo].[Payments] ([Id], [CardNo], [CardName], [CardMonth], [CardYear], [CardCvv], [Price]) VALUES (24, N'test', N'etest', N'tset', N'test', N'test', N'45692')
SET IDENTITY_INSERT [dbo].[Payments] OFF
USE [master]
GO
ALTER DATABASE [spare_parts_shopping.API.Models.SparePartsPaymentDb] SET  READ_WRITE 
GO
