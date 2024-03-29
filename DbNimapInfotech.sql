USE [master]
GO
/****** Object:  Database [DbNimapInfotech ]    Script Date: 21-02-2024 11:58:17 ******/
CREATE DATABASE [DbNimapInfotech ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbNimapInfotech', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbNimapInfotech .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbNimapInfotech _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbNimapInfotech _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbNimapInfotech ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbNimapInfotech ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbNimapInfotech ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbNimapInfotech ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbNimapInfotech ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DbNimapInfotech ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbNimapInfotech ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET RECOVERY FULL 
GO
ALTER DATABASE [DbNimapInfotech ] SET  MULTI_USER 
GO
ALTER DATABASE [DbNimapInfotech ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbNimapInfotech ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbNimapInfotech ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbNimapInfotech ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbNimapInfotech ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbNimapInfotech ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbNimapInfotech ', N'ON'
GO
ALTER DATABASE [DbNimapInfotech ] SET QUERY_STORE = OFF
GO
USE [DbNimapInfotech ]
GO
/****** Object:  Table [dbo].[MCategory]    Script Date: 21-02-2024 11:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[IsActiv] [bit] NULL,
 CONSTRAINT [PK_MCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MProduct]    Script Date: 21-02-2024 11:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MProduct](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_MProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MCategory] ON 

INSERT [dbo].[MCategory] ([CategoryId], [CategoryName], [IsActiv]) VALUES (1, N'Mobile phones', 1)
INSERT [dbo].[MCategory] ([CategoryId], [CategoryName], [IsActiv]) VALUES (2, N'Game consoles', 1)
SET IDENTITY_INSERT [dbo].[MCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[MProduct] ON 

INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (1, N'OppoA31', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (2, N'RealmeC12', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (3, N'IQOOZ6', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (4, N'Xbox one', 2)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (5, N'Atari Jaguar', 2)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (6, N'VivoY20G', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (8, N'Redmi', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (9, N'Samsung Gallaxy', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (10, N'Iphone', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (11, N'POCO', 1)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (12, N'Intellivision', 2)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (13, N'PC Engine', 2)
INSERT [dbo].[MProduct] ([ProductId], [ProductName], [CategoryId]) VALUES (2002, N'Samsumg j2', 1)
SET IDENTITY_INSERT [dbo].[MProduct] OFF
GO
/****** Object:  StoredProcedure [dbo].[SpProduct]    Script Date: 21-02-2024 11:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SpProduct] 
@ProductId int ,
@ProductName nvarchar(50),
@CategoryId int,
@Flag nvarchar(1)
As
Begin
if(@Flag='I')
Begin
Insert into MProduct values(@ProductName,@CategoryId)
End
If(@Flag='U')
Begin
Update MProduct Set 
ProductName=@ProductName,CategoryId=@CategoryId
Where ProductId=@ProductId
End
End
GO
USE [master]
GO
ALTER DATABASE [DbNimapInfotech ] SET  READ_WRITE 
GO
