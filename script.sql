USE [master]
GO
/****** Object:  Database [PRODUCT]    Script Date: 07.03.2025 12:25:17 ******/
CREATE DATABASE [PRODUCT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRODUCT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRODUCT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRODUCT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRODUCT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PRODUCT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRODUCT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRODUCT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRODUCT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRODUCT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRODUCT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRODUCT] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRODUCT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRODUCT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRODUCT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRODUCT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRODUCT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRODUCT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRODUCT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRODUCT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRODUCT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRODUCT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRODUCT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRODUCT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRODUCT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRODUCT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRODUCT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRODUCT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRODUCT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRODUCT] SET RECOVERY FULL 
GO
ALTER DATABASE [PRODUCT] SET  MULTI_USER 
GO
ALTER DATABASE [PRODUCT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRODUCT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRODUCT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRODUCT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRODUCT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRODUCT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRODUCT', N'ON'
GO
ALTER DATABASE [PRODUCT] SET QUERY_STORE = ON
GO
ALTER DATABASE [PRODUCT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PRODUCT]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 07.03.2025 12:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
	[category] [nchar](10) NULL,
	[price] [float] NULL,
	[discont] [float] NULL,
	[quantity] [int] NULL,
	[measurement] [ntext] NULL,
	[producer] [nchar](10) NULL,
	[country] [nchar](10) NULL,
	[supplier] [nchar](10) NULL,
	[date_of_delivery] [nchar](10) NULL,
	[expire_date] [nchar](10) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Table_1] ON 

INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'coca cola ', N'drinks    ', 30, 10, 500, N'бутилки', N'coca cola ', N'Україна   ', N'cola      ', N'07/03/2025', N'31/07/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (2, N'rise      ', N'cereals   ', 40, 20, 300, N'ящики', N'Аттуаль   ', N'Україна   ', N'Дружба    ', N'01/03/2025', N'30/12/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'milk      ', N'drinks    ', 40, 0, 500, N'бутилок', N'Молокія   ', N'Україна   ', N'ПрАТ      ', N'07/03/2025', N'18/03/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (4, N'juice     ', N'drinks    ', 30, 0, 100, N'ящиків', N'Sandora   ', N'Україна   ', N'Sandora   ', N'07/03/2025', N'02/05/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'butter    ', N'milk      ', 80, 25, 400, N'пачок', N'Молокія   ', N'Укра      ', N'ПрАТ      ', N'07/03/2025', N'25/03/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'tea       ', N'drinks    ', 50, 40, 300, N'ящиків', N'Lovare    ', N'Україна   ', N'Monomach  ', N'07/03/2025', N'07/12/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'coffe     ', N'drinks    ', 114, 19, 200, N'ящиків', N'Jacobs    ', N'Німеччина ', N'import    ', N'06/03/2025', N'30/12/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'crisps    ', N'снеки     ', 50, 30, 100, N'ящиків', N'Lays      ', N'Україна   ', N'PepsiCO   ', N'07/03/2025', N'30/12/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (13, N'ice cream ', N'desert    ', 100, 50, 100, N'ящиків', N'Monaco    ', N'Україна   ', N'Триведмеді', N'07/03/2025', N'26/08/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (14, N'oil       ', N'fats      ', 60, 20, 200, N'бутилок', N'Чедрий дар', N'Україна   ', N'Щедрий    ', N'07/03/2025', N'19/01/2026')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'potate    ', N'vegetables', 60, 0, 100, N'кілограм', N'Фастів    ', N'Україна   ', N'Фастів    ', N'07/03/2025', N'26/09/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (16, N'bread     ', N'bakery    ', 30, 0, 10, N'ящиків', N'Хліб      ', N'Україна   ', N'АгроБізнес', N'07/03/2025', N'09/03/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'yogurt    ', N'desert    ', 30, 0, 10, N'ящиків', N'Дольче    ', N'Україна   ', N'Галичина  ', N'07/03/2025', N'13/03/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (18, N'kefir     ', N'drinks    ', 25, 0, 10, N'ящики', N'Молокія   ', N'Україна   ', N'ПрАТ      ', N'07/03/2025', N'12/03/2025')
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discont], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (20, N'cheese    ', N'desert    ', 20, 0, 10, N'ящики', N'Ферма     ', N'Україна   ', N'Ферма     ', N'07/03/2025', N'01/03/2025')
SET IDENTITY_INSERT [dbo].[Table_1] OFF
GO
USE [master]
GO
ALTER DATABASE [PRODUCT] SET  READ_WRITE 
GO
