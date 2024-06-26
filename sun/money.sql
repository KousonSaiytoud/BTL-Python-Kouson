USE [master]
GO
/****** Object:  Database [Money]    Script Date: 5/27/2024 9:38:56 PM ******/
CREATE DATABASE [Money]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Money', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Money.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Money_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Money_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Money] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Money].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Money] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Money] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Money] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Money] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Money] SET ARITHABORT OFF 
GO
ALTER DATABASE [Money] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Money] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Money] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Money] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Money] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Money] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Money] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Money] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Money] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Money] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Money] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Money] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Money] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Money] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Money] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Money] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Money] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Money] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Money] SET  MULTI_USER 
GO
ALTER DATABASE [Money] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Money] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Money] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Money] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Money] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Money] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Money] SET QUERY_STORE = ON
GO
ALTER DATABASE [Money] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Money]
GO
/****** Object:  Table [dbo].[forex_rate]    Script Date: 5/27/2024 9:38:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forex_rate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[base_kip_lao] [nvarchar](max) NOT NULL,
	[rate_kip_to_vn] [float] NOT NULL,
	[update_at] [date] NOT NULL,
 CONSTRAINT [PK_forex_rate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[forex_rate] ON 

INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (1, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (2, N'KIP', 2.184638423294, CAST(N'2024-05-25' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (3, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (4, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (5, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (6, N'KIP', 1.1885184638423294, CAST(N'2024-05-26' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (7, N'KIP', 1.5188518463842329, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (8, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (9, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (10, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
INSERT [dbo].[forex_rate] ([id], [base_kip_lao], [rate_kip_to_vn], [update_at]) VALUES (11, N'KIP', 1.1885184638423294, CAST(N'2024-05-27' AS Date))
SET IDENTITY_INSERT [dbo].[forex_rate] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_Money]    Script Date: 5/27/2024 9:38:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Money]
	@action nvarchar(100) = null,
	@id int = null,
	@base_kip_lao nvarchar(30) = null,
	@rate_kip_to_vn float = null,
	@update_at date = null
AS
BEGIN
	IF(@action='addRateMoney')
	BEGIN
		INSERT INTO forex_rate(base_kip_lao,rate_kip_to_vn,update_at) 
		VALUES(@base_kip_lao,@rate_kip_to_vn,@update_at);
	END
	ELSE IF(@action='GetRateMoney')
	BEGIN
		SELECT id,base_kip_lao,rate_kip_to_vn,update_at FROM forex_rate ;
	END
END
GO
USE [master]
GO
ALTER DATABASE [Money] SET  READ_WRITE 
GO
