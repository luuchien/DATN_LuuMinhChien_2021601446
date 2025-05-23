USE [master]
GO
/****** Object:  Database [PhoneStore]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE DATABASE [PhoneStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhoneStore_Data', FILENAME = N'D:\SQL2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\PhoneStore.mdf' , SIZE = 11264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PhoneStore_Log', FILENAME = N'D:\SQL2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\PhoneStore.ldf' , SIZE = 9024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PhoneStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhoneStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhoneStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhoneStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhoneStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhoneStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhoneStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhoneStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhoneStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhoneStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhoneStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhoneStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhoneStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhoneStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhoneStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhoneStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhoneStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PhoneStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhoneStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhoneStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhoneStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhoneStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhoneStore] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PhoneStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhoneStore] SET RECOVERY FULL 
GO
ALTER DATABASE [PhoneStore] SET  MULTI_USER 
GO
ALTER DATABASE [PhoneStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhoneStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhoneStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhoneStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhoneStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PhoneStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PhoneStore', N'ON'
GO
ALTER DATABASE [PhoneStore] SET QUERY_STORE = OFF
GO
USE [PhoneStore]
GO
/****** Object:  Schema [HangFire]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Sex] [nvarchar](max) NULL,
	[Images] [nvarchar](max) NULL,
	[IsBanned] [bit] NOT NULL,
	[BanExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StarRating] [real] NOT NULL,
	[Date] [datetime] NOT NULL,
	[CustomerId] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_AddressBook]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_AddressBook](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
	[UserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.tb_AddressBook] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Adv]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Adv](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](500) NULL,
	[Link] [nvarchar](500) NULL,
	[Type] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Adv] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Branchs]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Branchs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](150) NULL,
	[Location] [nvarchar](max) NULL,
	[Image] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[Phone] [nvarchar](150) NULL,
	[Map] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.tb_Branchs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[SeoKeywords] [nvarchar](150) NULL,
	[IsActive] [bit] NOT NULL,
	[Position] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Contact]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Website] [nvarchar](max) NULL,
	[Messsage] [nvarchar](max) NULL,
	[IsRead] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_New]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_New](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeywords] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_New] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TypePayment] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[IdUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetails]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tb_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PaymentSetting]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PaymentSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrlVNP] [nvarchar](150) NULL,
	[ReturnUrlVNP] [nvarchar](150) NULL,
	[TmnCodeVNP] [nvarchar](150) NULL,
	[HashSecretVNP] [nvarchar](150) NULL,
	[EndpointMomo] [nvarchar](150) NULL,
	[PartnerCodeMomo] [nvarchar](150) NULL,
	[AccessKeyMomo] [nvarchar](150) NULL,
	[SerectkeyMomo] [nvarchar](150) NULL,
	[OrderInfoMomo] [nvarchar](150) NULL,
	[ReturnUrlMomo] [nvarchar](150) NULL,
	[NotifyurlMomo] [nvarchar](150) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_PaymentSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Posts]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](500) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[ProductCode] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PriceScale] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[IsHome] [bit] NOT NULL,
	[IsSale] [bit] NOT NULL,
	[IsFeature] [bit] NOT NULL,
	[IsHot] [bit] NOT NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeywords] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[ProductCategoryId] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[StarRating] [real] NOT NULL,
 CONSTRAINT [PK_dbo.tb_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeywords] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductImage]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tb_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Subcribe]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Subcribe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.tb_Subcribe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_SystemSetting]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SystemSetting](
	[SettingKey] [nvarchar](50) NOT NULL,
	[SettingValue] [nvarchar](400) NULL,
	[SettingDescription] [nvarchar](400) NULL,
 CONSTRAINT [PK_dbo.tb_SystemSetting] PRIMARY KEY CLUSTERED 
(
	[SettingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongKes]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[SoTruyCap] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ThongKes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](200) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'37d0e83a-0b02-40ea-bd67-44957461cb88', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'207e1422-8e2a-471b-8deb-d0c05bd1e7fd', N'Guest')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8ea9ee32-1711-4c70-ae9a-3a4df910edc2', N'StaffOrder')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'6c84a7eb-44f2-4a17-b68f-9291de4de0a3', N'StaffProductPostNew')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b0281ac8-5752-4547-b5c6-6900db471f0d', N'37d0e83a-0b02-40ea-bd67-44957461cb88')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Phone], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [DateOfBirth], [Sex], [Images], [IsBanned], [BanExpirationDate]) VALUES (N'b0281ac8-5752-4547-b5c6-6900db471f0d', N'Nguyễn Văn Admin', N'0967626489', N'nguyenvana123@gmail.com', 0, N'AGohFw0N2J3lkV2W16KxyfEnaqjGhktNYB0rolGWNArkIqk/n4InUBk4Fw7UtSzFmg==', N'0e9520ac-3845-497f-a3ac-26fc7220ce20', NULL, 0, 0, CAST(N'2025-04-12T02:47:12.253' AS DateTime), 0, 0, N'admin123', CAST(N'2002-10-03T00:00:00.000' AS DateTime), N'Nam', NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (1, N'Test', 4, CAST(N'2023-05-31T19:17:53.437' AS DateTime), N'68024dca-3428-427c-811f-a1844b904baf', 25)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (2, N'aaaa', 1, CAST(N'2023-05-31T19:18:09.900' AS DateTime), N'68024dca-3428-427c-811f-a1844b904baf', 25)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (3, N'dddddđ', 5, CAST(N'2023-05-31T19:18:16.773' AS DateTime), N'68024dca-3428-427c-811f-a1844b904baf', 25)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (4, N'hihi', 4, CAST(N'2023-05-31T20:00:45.087' AS DateTime), N'68024dca-3428-427c-811f-a1844b904baf', 1064)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (5, N'Sản phẩm dùng tốt mùi hương dễ chịu', 5, CAST(N'2023-06-01T07:39:04.803' AS DateTime), N'68024dca-3428-427c-811f-a1844b904baf', 25)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (6, N'Tác dụng rất tốt', 5, CAST(N'2023-06-01T07:39:57.123' AS DateTime), N'856ec462-3d61-4649-a31f-6ae7987aef4c', 1067)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (7, N'Sản phẩm rất tốt xài rất đã', 5, CAST(N'2023-06-01T08:55:12.447' AS DateTime), N'68024dca-3428-427c-811f-a1844b904baf', 32)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (8, N'Mình xài bị dị ứng ko phù hợp', 2, CAST(N'2023-06-01T08:55:39.253' AS DateTime), N'c48ec2c6-2d4f-4eed-811e-5db36c433d60', 32)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (9, N'Dùng tốt mùi hương dịu nhẹ ko kích ứng cho da mặt', 4, CAST(N'2023-06-01T08:56:50.420' AS DateTime), N'258501c1-70dd-4db3-abbd-0a5c706d6d3e', 32)
INSERT [dbo].[Reviews] ([Id], [Description], [StarRating], [Date], [CustomerId], [ProductId]) VALUES (10, N'Rất tốt', 5, CAST(N'2025-04-12T02:54:16.907' AS DateTime), N'b0281ac8-5752-4547-b5c6-6900db471f0d', 1079)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_AddressBook] ON 

INSERT [dbo].[tb_AddressBook] ([Id], [CustomerName], [Address], [Phone], [Email], [IsDefault], [UserID]) VALUES (2011, N'Nguyễn Văn A', N'Hà Nội', N'0987654321', N'admin123@gmail.com', 1, N'b0281ac8-5752-4547-b5c6-6900db471f0d')
SET IDENTITY_INSERT [dbo].[tb_AddressBook] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Category] ON 

INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Trang chủ', N'trang-chu', N'Trang chủ', NULL, NULL, NULL, 0, 1, NULL, CAST(N'2023-03-10T12:59:04.800' AS DateTime), CAST(N'2023-03-10T12:59:04.800' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Sản Phẩm', N'san-pham', N'Sản phẩm', NULL, NULL, NULL, 0, 2, NULL, CAST(N'2023-03-10T12:59:13.593' AS DateTime), CAST(N'2023-03-12T14:35:00.667' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Tin tức', N'tin-tuc', N'Tin tức', NULL, NULL, NULL, 0, 3, NULL, CAST(N'2023-03-10T12:59:28.870' AS DateTime), CAST(N'2023-03-10T12:59:28.870' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Alias], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Liên hệ', N'lien-he', N'Liên hệ', NULL, NULL, NULL, 0, 4, NULL, CAST(N'2023-03-10T12:59:38.453' AS DateTime), CAST(N'2023-03-10T12:59:38.453' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_New] ON 

INSERT [dbo].[tb_New] ([Id], [Image], [Title], [Alias], [Description], [Detail], [CategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (9, N'/Uploads/images/news/1.jpg', N'OPPO Find X8 Ultra ra mắt: Thiết kế mới, cảm biến hình ảnh siêu lớn và được tích hợp loạt tính năng AI', N'oppo-find-x8-ultra-ra-mat-thiet-ke-moi-cam-bien-hinh-anh-sieu-lon-va-duoc-tich-hop-loat-tinh-nang-ai', N'OPPO Find X8 Ultra ra mắt: Thiết kế mới, cảm biến hình ảnh siêu lớn và được tích hợp loạt tính năng AI', N'<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="OPPO Find X8 Ultra chính thức ra mắt với thông số kỹ thuật đỉnh cao. " src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576752/logo-mxh%20OPPO%20Find%20X8%20Ultra.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="OPPO Find X8 Ultra chính thức ra mắt với thông số kỹ thuật đỉnh cao. " /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">OPPO Find X8 Ultra ch&iacute;nh thức ra mắt với th&ocirc;ng số kỹ thuật đỉnh cao (Ảnh: OPPO).</div>

<h2><a href="https://www.thegioididong.com/dtdd-oppo" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="OPPO">OPPO</a>&nbsp;đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ đ&ocirc;i&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-find-x8" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="OPPO Find X8">OPPO Find X8</a>&nbsp;v&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-find-x8-pro" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="OPPO Find X8 Pro">OPPO Find X8 Pro</a>&nbsp;với vi xử l&yacute; Dimensity 9400 v&agrave;o cuối năm ngo&aacute;i tại thị trường Trung Quốc. Giờ đ&acirc;y, OPPO Find X8 Ultra cũng đ&atilde; gia nhập đội h&igrave;nh với vi xử l&yacute; Snapdragon 8 Elite. Được biết, đ&acirc;y l&agrave; mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="smartphone">smartphone</a>&nbsp;mạnh mẽ nhất hiện tại của OPPO với nhiều th&ocirc;ng số kỹ thuật đỉnh cao.&nbsp;</h2>

<h3><strong>Th&ocirc;ng số cấu h&igrave;nh OPPO Find X8 Ultra</strong></h3>

<p>Trước ti&ecirc;n l&agrave; về ngoại h&igrave;nh, OPPO Find X8 Ultra l&agrave; mẫu điện thoại mang lại trải nghiệm kh&aacute;c ho&agrave;n to&agrave;n so với thế hệ tiền nhiệm. Điều n&agrave;y c&ograve;n đến từ việc OPPO đ&atilde; chuyển sang sử dụng thiết kế phẳng ho&agrave;n to&agrave;n v&agrave; với ng&ocirc;n ngữ thiết kế n&agrave;y ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng li&ecirc;n tưởng đến c&aacute;c sản phẩm kh&aacute;c đến từ c&aacute;c đối thủ sừng sỏ hơn.</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="OPPO Find X8 Ultra có thiết kế phẳng hoàn toàn. " src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576752/Find%20X8%20Ultra%201.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="OPPO Find X8 Ultra có thiết kế phẳng hoàn toàn. " /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">OPPO Find X8 Ultra c&oacute; thiết kế phẳng ho&agrave;n to&agrave;n.</div>

<p>Về k&iacute;ch thước, Find X8 Ultra c&oacute; th&acirc;n h&igrave;nh kh&ocirc;ng hề nhỏ gọn, với m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước l&ecirc;n đến 6.82 inch v&agrave; c&oacute; khối lượng 226 gram. Tuy nhi&ecirc;n, với độ mỏng chỉ 8.78 mm, m&aacute;y lại c&oacute; sự thanh tho&aacute;t v&agrave; nhẹ nh&agrave;ng hơn so với hai đối thủ kh&aacute;c l&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/xiaomi-15-ultra" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214);" target="_blank" title="Xiaomi 15 Ultra">Xiaomi 15 Ultra</a>&nbsp;v&agrave; vivo X100 Ultra.</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Mặc dù sở hữu cấu hình mạnh mẽ nhưng Find X8 Ultra vẫn có thiết kế khá mỏng." src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576752/Find%20X8%20Ultra%205.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Mặc dù sở hữu cấu hình mạnh mẽ nhưng Find X8 Ultra vẫn có thiết kế khá mỏng." /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">Mặc d&ugrave; sở hữu cấu h&igrave;nh mạnh mẽ nhưng Find X8 Ultra vẫn c&oacute; thiết kế kh&aacute; mỏng.</div>

<p>Hơn nữa, Find X8 Ultra c&ograve;n sở hữu cho m&igrave;nh th&ecirc;m một n&uacute;t bấm đặt b&ecirc;n cạnh tr&aacute;i để thay thế hế cho cần gạt rung quen thuộc v&agrave; th&ecirc;m một n&uacute;t Quick Button được đặt b&ecirc;n dưới cạnh tr&aacute;i. Điều đ&aacute;ng ch&uacute; &yacute; l&agrave; n&uacute;t n&agrave;y c&oacute; chức năng tương tự như Capture Button tr&ecirc;n d&ograve;ng&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-16" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214);" target="_blank" title="iPhone 16">iPhone 16</a>, n&uacute;t n&agrave;y cho ph&eacute;p người d&ugrave;ng khởi động camera nhanh hoặc thực hiện thao t&aacute;c chụp ảnh, quay video tức th&igrave;.</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Nút Quick Button đặt bên cạnh của máy giúp người dùng có thể truy cập nhanh nhiều tính năng khác." src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576752/Find%20X8%20Ultra%206.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Nút Quick Button đặt bên cạnh của máy giúp người dùng có thể truy cập nhanh nhiều tính năng khác." /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">N&uacute;t Quick Button đặt b&ecirc;n cạnh của m&aacute;y gi&uacute;p người d&ugrave;ng c&oacute; thể truy cập nhanh nhiều t&iacute;nh năng kh&aacute;c.</div>

<p>Về hệ thống camera, Find X8 Ultra được trang bị bốn camera sau đều c&oacute; độ ph&acirc;n giải 50 MP v&agrave; tất cả đều được tinh chỉnh bởi Hasselblad. Trong khi đ&oacute;, hai camera tele k&iacute;nh tiềm vọng 3X v&agrave; 6X nay đ&atilde; đươc n&acirc;ng cấp với khẩu độ lớn hơn.&nbsp;</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Hệ thống camera trên Find X8 Ultra cực kỳ mạnh mẽ và được tinh chỉnh bởi Hasselblad." src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576752/Find%20X8%20Ultra%204.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Hệ thống camera trên Find X8 Ultra cực kỳ mạnh mẽ và được tinh chỉnh bởi Hasselblad." /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">Hệ thống camera tr&ecirc;n Find X8 Ultra cực kỳ mạnh mẽ v&agrave; được tinh chỉnh bởi Hasselblad.</div>

<p>Cung cấp sức mạnh cho OPPO Find X8 Ultra l&agrave; vi xử l&yacute; Snapdragon 8 Elite, đi k&egrave;m với t&ugrave;y chọn cấu h&igrave;nh l&ecirc;n đến 16 GB RAM v&agrave; 1 TB bộ nhớ trong. M&aacute;y c&ograve;n sở hữu vi&ecirc;n pin dung lượng lớn l&ecirc;n đ&ecirc;nns 6.100 mAh, hỗ trợ sạc nhanh c&oacute; d&acirc;y 100 W v&agrave; sạc nhanh kh&ocirc;ng d&acirc;y 50 W. Hơn nữa, Find X8 Ultra c&ograve;n đạt chuẩn kh&aacute;ng nước v&agrave; bụi IP68 lẫn IP69.</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Cung cấp sức mạnh cho OPPO Find X8 Ultra là vi xử lý Snapdragon 8 Elite. " src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576752/Find%20X8%20Ultra%203.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Cung cấp sức mạnh cho OPPO Find X8 Ultra là vi xử lý Snapdragon 8 Elite. " /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">Cung cấp sức mạnh cho OPPO Find X8 Ultra l&agrave; vi xử l&yacute; Snapdragon 8 Elite.</div>

<p>Về khả năng hiển thị, Find X8 Ultra được trang bị m&agrave;n h&igrave;nh AMOLED LTPO c&oacute; k&iacute;ch thước 6.82 inch, độ ph&acirc;n giải 2K với độ s&aacute;ng to&agrave;n m&agrave;n h&igrave;nh l&ecirc;n đến 1.600 nits v&agrave; độ s&aacute;ng cục bộ cao nhất l&ecirc;n đến 2.500 nits. Hơn nữa, để tăng cường bảo mật, Find X8 Ultra c&ograve;n sở hữu cảm biến v&acirc;n tay si&ecirc;u &acirc;m dưới m&agrave;n h&igrave;nh.&nbsp;</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Thông số màn hình cực ấn tượng trên OPPO Find X8 Ultra." src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576752/Find%20X8%20Ultra%202.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Thông số màn hình cực ấn tượng trên OPPO Find X8 Ultra." /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">Th&ocirc;ng số m&agrave;n h&igrave;nh cực ấn tượng tr&ecirc;n OPPO Find X8 Ultra.</div>

<h3><strong>Gi&aacute; b&aacute;n OPPO Find X8 Ultra</strong></h3>

<p>OPPO Find X8 Ultra mang đến cho người d&ugrave;ng ba t&ugrave;y chọn m&agrave;u sắc kh&aacute;c nhau, gồm: Moonlight White, Morning Glimmer v&agrave; Hoshino Black. Tại thị trường Trung Quốc, Find X8 Ultra c&oacute; gi&aacute; b&aacute;n c&ugrave;ng với c&aacute;c t&ugrave;y chọn cấu h&igrave;nh như sau:</p>

<ul>
	<li>Phi&ecirc;n bản RAM 12 GB + ROM 256 GB c&oacute; gi&aacute; 6.499 CNY (khoảng 22.4 triệu đồng).</li>
	<li>Phi&ecirc;n bản RAM 16 GB + ROM 512 GB c&oacute; gi&aacute; 6.999 CNY (khoảng 24.1 triệu đồng).</li>
	<li>Phi&ecirc;n bản RAM 16 GB + ROM 1 TB c&oacute; gi&aacute; 7.999 CNY (khoảng 27.6 triệu đồng).</li>
</ul>
', 3, NULL, NULL, NULL, 1, NULL, CAST(N'2025-04-12T02:34:42.787' AS DateTime), CAST(N'2025-04-12T02:34:42.787' AS DateTime), NULL)
INSERT [dbo].[tb_New] ([Id], [Image], [Title], [Alias], [Description], [Detail], [CategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (10, N'/Uploads/images/news/2.jpg', N'Ứng dụng ngay 3 mẹo hay này để sử dụng realme C75x dễ dàng hơn', N'ung-dung-ngay-3-meo-hay-nay-de-su-dung-realme-c75x-de-dang-hon', N'Ứng dụng ngay 3 mẹo hay này để sử dụng realme C75x dễ dàng hơn', N'<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Mẹo sử dụng realme C75x" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576294/realme%20C75x%20-%20Hong%20san%20ho%201.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Mẹo sử dụng realme C75x" /></div>

<h2><a href="https://www.thegioididong.com/dtdd/realme-c75x" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="realme C75x">realme C75x</a>&nbsp;kh&ocirc;ng chỉ g&acirc;y ấn tượng với thiết kế thời trang hai m&agrave;u Xanh v&agrave; Hồng bắt mắt, m&agrave; c&ograve;n sở hữu vi&ecirc;n pin 5.600 mAh bền bỉ c&ugrave;ng sạc nhanh 45 W tiện lợi cho người d&ugrave;ng thường xuy&ecirc;n di chuyển. B&ecirc;n cạnh đ&oacute;, m&aacute;y c&ograve;n đạt c&aacute;c ti&ecirc;u chuẩn bền bỉ như IP69 chống nước bụi, chứng nhận chống sốc SGS, mang lại sự y&ecirc;n t&acirc;m khi sử dụng. Để tận dụng tối đa sức mạnh từ chiếc điện thoại n&agrave;y, dưới đ&acirc;y l&agrave; 3&nbsp;<a href="https://www.thegioididong.com/tin-tuc/meo-su-dung-realme-c75x-1576294" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="mẹo sử dụng realme C75x">mẹo sử dụng realme C75x</a>&nbsp;để bạn x&agrave;i m&aacute;y hiệu quả v&agrave; tiện lợi hơn mỗi ng&agrave;y.</h2>

<h3><strong>1. C&aacute;ch ph&aacute;t mạng tr&ecirc;n realme C75x</strong></h3>

<p>Tr&ecirc;n chiếc điện thoại realme C75x, t&iacute;nh năng ph&aacute;t Wi-Fi c&aacute; nh&acirc;n được t&iacute;ch hợp sẵn v&agrave; cực kỳ dễ d&ugrave;ng. Khi cần chia sẻ mạng cho laptop, m&aacute;y t&iacute;nh bảng hay điện thoại kh&aacute;c, bạn chỉ cần v&agrave;i thao t&aacute;c để biến thiết bị của m&igrave;nh th&agrave;nh điểm ph&aacute;t s&oacute;ng di động. Giải ph&aacute;p tiện lợi n&agrave;y đặc biệt hữu &iacute;ch khi bạn đang di chuyển hoặc kh&ocirc;ng c&oacute; Wi-Fi cố định. Dưới đ&acirc;y l&agrave; hướng dẫn c&aacute;ch ph&aacute;t mạng tr&ecirc;n realme C75x d&agrave;nh cho bạn.</p>

<p><strong>Xem b&agrave;i viết chi tiết:</strong>&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cach-phat-mang-tren-realme-c75x-1576291" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214);" target="_blank" title="Hướng dẫn cách phát mạng trên realme C75x cực đơn giản nhưng không phải ai cũng biết">Hướng dẫn c&aacute;ch ph&aacute;t mạng tr&ecirc;n realme C75x cực đơn giản nhưng kh&ocirc;ng phải ai cũng biết</a></p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Cách phát mạng trên realme C75x" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576291/realme%20C75x%20-%20Hong%20san%20ho%207.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Cách phát mạng trên realme C75x" /></div>

<h3><strong>2. C&aacute;ch bật chế độ tiết kiệm pin tr&ecirc;n realme C75x</strong></h3>

<p>Điện thoại realme C75x được trang bị sẵn chế độ tiết kiệm pin, gi&uacute;p k&eacute;o d&agrave;i thời gian sử dụng khi pin sắp cạn. T&iacute;nh năng n&agrave;y đặc biệt hữu &iacute;ch trong những l&uacute;c bạn kh&ocirc;ng thể sạc ngay hoặc cần duy tr&igrave; hoạt động của m&aacute;y l&acirc;u hơn. Sau đ&acirc;y m&igrave;nh sẽ hướng dẫn bạn c&aacute;ch bật chế độ tiết kiệm pin tr&ecirc;n realme C75x nh&eacute;.</p>

<p><strong>Xem b&agrave;i viết chi tiết:</strong>&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cach-bat-che-do-tiet-kiem-pin-tren-realme-c75x-1576292" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214);" target="_blank" title="Hướng dẫn cách bật chế độ tiết kiệm pin trên realme C75x để kéo dài thời gian sử dụng">Hướng dẫn c&aacute;ch bật chế độ tiết kiệm pin tr&ecirc;n realme C75x để k&eacute;o d&agrave;i thời gian sử dụng</a></p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Cách bật chế độ tiết kiệm pin trên realme C75x" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576292/realme%20C75x%20-%20Hong%20san%20ho%2021.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Cách bật chế độ tiết kiệm pin trên realme C75x" /></div>

<h3><strong>3. C&aacute;ch nh&acirc;n bản ứng dụng tr&ecirc;n realme C75x</strong></h3>

<p>Tr&ecirc;n realme C75x bạn c&oacute; thể nh&acirc;n bản ứng dụng để sử dụng song song hai t&agrave;i khoản mạng x&atilde; hội hoặc nhắn tin tr&ecirc;n c&ugrave;ng một chiếc điện thoại. T&iacute;nh năng n&agrave;y cực kỳ tiện lợi nếu bạn vừa d&ugrave;ng t&agrave;i khoản c&aacute; nh&acirc;n vừa cần quản l&yacute; t&agrave;i khoản c&ocirc;ng việc. Dưới đ&acirc;y l&agrave; hướng dẫn c&aacute;ch nh&acirc;n bản ứng dụng tr&ecirc;n realme C75x đơn giản v&agrave; nhanh ch&oacute;ng nhất.</p>

<p><strong>Xem b&agrave;i viết chi tiết:</strong>&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cach-nhan-ban-ung-dung-tren-realme-c75x-1576293" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214);" target="_blank" title="Hướng dẫn cách nhân bản ứng dụng trên realme C75x để dùng nhiều tài khoản cực tiện">Hướng dẫn c&aacute;ch nh&acirc;n bản ứng dụng tr&ecirc;n realme C75x để d&ugrave;ng nhiều t&agrave;i khoản cực tiện</a></p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="Cách nhân bản ứng dụng trên realme C75x" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576293/realme%20C75x%20-%20Hong%20san%20ho%2019.jpg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="Cách nhân bản ứng dụng trên realme C75x" /></div>

<p>Với những mẹo sử dụng realme C75x tr&ecirc;n đ&acirc;y, bạn sẽ c&oacute; trải nghiệm mượt m&agrave; v&agrave; tối ưu h&oacute;a hiệu suất của thiết bị. H&atilde;y tận dụng tối đa c&aacute;c t&iacute;nh năng n&agrave;y để sử dụng realme C75x một c&aacute;ch hiệu quả nhất. Cảm ơn bạn đ&atilde; theo d&otilde;i b&agrave;i viết n&agrave;y.</p>
', 3, NULL, NULL, NULL, 1, NULL, CAST(N'2025-04-12T02:35:03.567' AS DateTime), CAST(N'2025-04-12T02:35:03.567' AS DateTime), NULL)
INSERT [dbo].[tb_New] ([Id], [Image], [Title], [Alias], [Description], [Detail], [CategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (11, N'/Uploads/images/news/3.png', N'vivo V50e ra mắt: Màn hình cong 4 cạnh 120Hz, camera kép 50MP, sạc nhanh 90W', N'vivo-v50e-ra-mat-man-hinh-cong-4-canh-120hz-camera-kep-50mp-sac-nhanh-90w', N'vivo V50e ra mắt: Màn hình cong 4 cạnh 120Hz, camera kép 50MP, sạc nhanh 90W', N'<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="vivo V50e" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576747/A%CC%89nh%20ma%CC%80n%20hi%CC%80nh%202025-04-10%20lu%CC%81c%2018.50.27-Photoroom%20%281%29.png" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="vivo V50e" /></div>

<div class="captionnews" style="margin: 0px 0px 15px; padding: 10px; color: rgb(153, 153, 153); font-size: 14px; font-style: italic; text-align: center; font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif;">vivo V50e ch&iacute;nh thức được ra mắt tại Ấn Độ (Ảnh: vivo).</div>

<h2><a href="https://www.thegioididong.com/dtdd-vivo" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="vivo">vivo</a>&nbsp;vừa ch&iacute;nh thức giới thiệu mẫu&nbsp;<a href="https://www.thegioididong.com/dtdd" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; line-height: 18px; outline: 0px; zoom: 1;" target="_blank" title="điện thoại">điện thoại</a>&nbsp;l&agrave; vivo V50e tại Ấn Độ, phi&ecirc;n bản gi&aacute; mềm hơn của d&ograve;ng V50 được ra mắt hồi đầu năm nay. Theo th&ocirc;ng tin từ h&atilde;ng, thiết bị nổi bật với m&agrave;n h&igrave;nh cong 4 cạnh tần số qu&eacute;t cao, cụm camera ấn tượng v&agrave; khả năng sạc nhanh vượt trội. Dưới đ&acirc;y l&agrave; th&ocirc;ng số cấu h&igrave;nh v&agrave; gi&aacute; b&aacute;n vivo V50e.</h2>

<h3><strong>Th&ocirc;ng số cấu h&igrave;nh vivo V50e</strong></h3>

<p>vivo V50e sở hữu thiết kế mỏng nhẹ với độ d&agrave;y chỉ 7.39 mm v&agrave; trọng lượng 186 gam. M&aacute;y đạt chuẩn kh&aacute;ng nước v&agrave; bụi IP68/IP69. Ph&iacute;a trước l&agrave; m&agrave;n h&igrave;nh AMOLED 6.77 inch, độ ph&acirc;n giải 1.5K, tần số qu&eacute;t 120 Hz v&agrave; độ s&aacute;ng tối đa 1800 nits.</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="vivo V50e" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576747/A%CC%89nh%20ma%CC%80n%20hi%CC%80nh%202025-04-10%20lu%CC%81c%2018.54.25.png" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="vivo V50e" /></div>

<p>Thiết bị sử dụng chip MediaTek Dimensity 7300, kết hợp với 8 GB RAM LPDDR4x v&agrave; hỗ trợ th&ecirc;m 8 GB RAM ảo. M&aacute;y c&oacute; 2 t&ugrave;y chọn bộ nhớ trong: 128 GB v&agrave; 256 GB, sử dụng chuẩn UFS 2.2. Dung lượng pin đạt 5600 mAh, hỗ trợ sạc nhanh 90 W, gi&uacute;p nạp pin nhanh ch&oacute;ng.</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="vivo V50e" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576747/A%CC%89nh%20ma%CC%80n%20hi%CC%80nh%202025-04-10%20lu%CC%81c%2018.56.52.jpeg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="vivo V50e" /></div>

<p>Về camera, vivo V50e được trang bị camera selfie 50 MP c&oacute; tự động lấy n&eacute;t. Ở mặt sau, m&aacute;y sở hữu cảm biến ch&iacute;nh Sony IMX882 50 MP c&oacute; chống rung quang học (OIS), kết hợp với camera g&oacute;c si&ecirc;u rộng 8 MP v&agrave; đ&egrave;n flash Aura LED.</p>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="vivo V50e" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576747/A%CC%89nh%20ma%CC%80n%20hi%CC%80nh%202025-04-10%20lu%CC%81c%2018.52.18.jpeg" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="vivo V50e" /></div>

<p>Thiết bị chạy Funtouch OS 15 dựa tr&ecirc;n Android 15, được cam kết hỗ trợ 3 bản cập nhật hệ điều h&agrave;nh Android v&agrave; 4 năm cập nhật bảo mật. M&aacute;y hỗ trợ 2 SIM, Wi-Fi 6, Bluetooth 5.4, cổng USB Type-C, c&oacute; cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh v&agrave; loa k&eacute;p stereo.</p>

<h3><strong>Gi&aacute; b&aacute;n vivo V50e</strong></h3>

<div class="imgwrap" style="margin: 5px 0px 0px; padding: 0px; position: relative; min-height: 100px; background: rgb(241, 241, 241); font-family: Helvetica, Arial, &quot;DejaVu Sans&quot;, &quot;Liberation Sans&quot;, Freesans, sans-serif; font-size: 14px;"><img alt="vivo V50e" src="https://cdnv2.tgdd.vn/mwg-static/common/News/1576747/A%CC%89nh%20ma%CC%80n%20hi%CC%80nh%202025-04-10%20lu%CC%81c%2018.51.02.png" style="border:0px; display:block; height:auto; margin:0px auto; max-width:100%; padding:0px; width:auto" title="vivo V50e" /></div>

<p>vivo V50e được b&aacute;n với gi&aacute; 28.999 INR (~ 8.7 triệu đồng) cho phi&ecirc;n bản 8 GB/128 GB v&agrave; 30.999 INR (~ 9.3 triệu đồng) cho bản 8 GB/256 GB. M&aacute;y c&oacute; hai t&ugrave;y chọn m&agrave;u sắc: Xanh Sapphire v&agrave; Trắng Ngọc Trai.</p>

<p>Bạn c&oacute; suy nghĩ g&igrave; về vivo V50e?</p>

<p>Mời bạn đọc tham khảo&nbsp;<a href="https://www.thegioididong.com/dtdd/vivo-v40-5g" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214);" target="_blank" title="vivo V40 5G">vivo V40 5G</a>&nbsp;đang được b&aacute;n tại&nbsp;<a href="https://www.thegioididong.com/" rel="noopener" style="margin: 0px; padding: 0px; text-decoration-line: none; transition: 0.2s; color: rgb(40, 138, 214);" target="_blank" title="Thế Giới Di Động">Thế Giới Di Động</a>&nbsp;với rất nhiều ưu đ&atilde;i v&agrave; đặc quyền hấp dẫn. Nhấn ngay v&agrave;o n&uacute;t sản phẩm ở b&ecirc;n dưới để xem chi tiết nh&eacute;!</p>
', 3, NULL, NULL, NULL, 1, NULL, CAST(N'2025-04-12T02:35:23.783' AS DateTime), CAST(N'2025-04-12T02:35:23.783' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_New] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Email], [Address], [TotalAmount], [Quantity], [TypePayment], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [IdUser]) VALUES (14019, N'DH8184', N'Nguyễn Văn A', N'0987654321', N'admin123@gmail.com', N'Hà Nội', CAST(19920000.00 AS Decimal(18, 2)), 0, 1, NULL, CAST(N'2025-04-12T02:48:07.740' AS DateTime), CAST(N'2025-04-12T02:48:07.740' AS DateTime), NULL, N'b0281ac8-5752-4547-b5c6-6900db471f0d')
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OrderDetails] ON 

INSERT [dbo].[tb_OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (16041, 14019, 1082, CAST(19920000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[tb_OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_PaymentSetting] ON 

INSERT [dbo].[tb_PaymentSetting] ([Id], [UrlVNP], [ReturnUrlVNP], [TmnCodeVNP], [HashSecretVNP], [EndpointMomo], [PartnerCodeMomo], [AccessKeyMomo], [SerectkeyMomo], [OrderInfoMomo], [ReturnUrlMomo], [NotifyurlMomo], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (1, N'http://sandbox.vnpayment.vn/paymentv2/vpcpay.html', N'https://localhost:44303/ShoppingCart/PaymentVNPConfirm', N'FYJL2QHA', N'JOWHMKFHFDUHLQQAVQDIJVDNNTDPJSBE', N'https://test-payment.momo.vn/gw_payment/transactionProcessor', N'MOMOJMUD20220907', N'4P1sX4jWK4RhExaX', N'FcnI5hgWY9fkaf5rNRNrR8Ugrq7LaRCw', N'Hasaki', N'https://localhost:44303/ShoppingCart/ConfirmPaymentClient', N'https://dashboard.ngrok.com/events/subscriptions', NULL, CAST(N'2023-04-05T01:04:59.990' AS DateTime), CAST(N'2023-04-05T01:04:59.990' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_PaymentSetting] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1079, N'Điện thoại iPhone 16 Pro Max 256GB', N'dien-thoai-iphone-16-pro-max-256gb', N'IP00001', N'iPhone 16 Pro Max 256GB sở hữu thiết kế tinh xảo với khung titan siêu nhẹ, màn hình Super Retina XDR sắc nét và hiệu suất vượt trội từ chip A18 Pro. Cụm camera nâng cấp mạnh mẽ, hỗ trợ quay video chuyên nghiệp và chụp ảnh thiếu sáng ấn tượng. Dung lượng 256GB thoải mái lưu trữ. Đẳng cấp – mạnh mẽ – xứng tầm flagship!', N'<div style="font-family: Arial, sans-serif; max-width: 800px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">iPhone 16 Pro Max 256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;">
        <th colspan="2" style="padding: 12px; text-align: left; font-size: 17px; border-bottom: 2px solid #ddd;">Cấu hình & Bộ nhớ</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>iOS 18</td></tr>
      <tr><td>Chip xử lý</td><td>Apple A18 Pro 6 nhân</td></tr>
      <tr><td>GPU</td><td>Apple GPU 6 nhân</td></tr>
      <tr><td>RAM</td><td>8 GB</td></tr>
      <tr><td>Bộ nhớ trong</td><td>256 GB (khả dụng ~241 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;">
        <th colspan="2" style="padding: 12px; text-align: left; font-size: 17px; border-bottom: 2px solid #ddd;">Camera & Màn hình</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>48MP (chính) + 48MP + 12MP</td></tr>
      <tr><td>Quay phim</td><td>720p đến 4K@120fps, Log, ProRes, Cinematic, Slow Motion</td></tr>
      <tr><td>Camera trước</td><td>12MP, HDR5, Raw, chống rung, quay 4K</td></tr>
      <tr><td>Màn hình</td><td>6.9" OLED, Super Retina XDR, 120Hz, 2000 nits</td></tr>
      <tr><td>Mặt kính</td><td>Ceramic Shield</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;">
        <th colspan="2" style="padding: 12px; text-align: left; font-size: 17px; border-bottom: 2px solid #ddd;">Pin & Sạc</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>Thời lượng sử dụng</td><td>~33 giờ</td></tr>
      <tr><td>Công nghệ sạc</td><td>Nhanh 20W, MagSafe, không dây & sạc ngược</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion, tiết kiệm pin</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;">
        <th colspan="2" style="padding: 12px; text-align: left; font-size: 17px; border-bottom: 2px solid #ddd;">Tính năng</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật & âm thanh</td><td>Face ID, Dolby Atmos, Loa kép</td></tr>
      <tr><td>Tính năng khác</td><td>AOD, phát hiện va chạm, chạm 2 lần sáng màn hình</td></tr>
      <tr><td>Tiêu chuẩn</td><td>Chống nước IP68, Apple Pay, HDR10, Dolby Vision, HLG</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;">
        <th colspan="2" style="padding: 12px; text-align: left; font-size: 17px; border-bottom: 2px solid #ddd;">Kết nối</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>SIM & mạng</td><td>5G, 1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Chuẩn kết nối</td><td>Wi-Fi 7, Bluetooth 5.3, GPS đầy đủ</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C, hỗ trợ NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;">
        <th colspan="2" style="padding: 12px; text-align: left; font-size: 17px; border-bottom: 2px solid #ddd;">Thiết kế</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>Chất liệu</td><td>Nguyên khối, khung Titan & kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>163 x 77.6 x 8.25 mm – Nặng 227 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>09/2024</td></tr>
    </tbody>
  </table>
</div>
', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(34990000.00 AS Decimal(18, 2)), CAST(31990000.00 AS Decimal(18, 2)), 150, 7, 0, 1, 0, 0, N'Điện thoại iPhone 16 Pro Max 256GB', NULL, NULL, 1, 14, NULL, CAST(N'2025-04-12T01:34:17.000' AS DateTime), CAST(N'2025-04-12T01:40:50.193' AS DateTime), NULL, 5)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1080, N'Điện thoại iPhone 16e 128GB', N'dien-thoai-iphone-16e-128gb', N'IP00002', N'​iPhone 16e 128GB là mẫu iPhone mới nhất của Apple, ra mắt vào tháng 2/2025, hướng đến người dùng muốn trải nghiệm công nghệ hiện đại với mức giá hợp lý. Sở hữu thiết kế tinh tế, hiệu năng mạnh mẽ và thời lượng pin ấn tượng, iPhone 16e là lựa chọn đáng cân nhắc trong phân khúc tầm trung.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">iPhone 16e 128GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>iOS 18</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Apple A18 6 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>Hãng không công bố</td></tr>
      <tr><td>GPU</td><td>Apple GPU 4 nhân</td></tr>
      <tr><td>RAM</td><td>8 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>128 GB (khả dụng ~113 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>48 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps đến 4K@60fps, Slow Motion, Time Lapse</td></tr>
      <tr><td>Tính năng camera sau</td><td>Zoom quang, kỹ thuật số, HDR, Panorama, Deep Fusion, Night Mode, OIS, EIS...</td></tr>
      <tr><td>Camera trước</td><td>12 MP, Quay 4K, Retina Flash, Deep Fusion, EIS</td></tr>
      <tr><td>Màn hình</td><td>6.1" OLED, Super Retina XDR, 1170x2532, 60Hz, 1200 nits</td></tr>
      <tr><td>Mặt kính</td><td>Ceramic Shield</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Thời lượng sử dụng</td><td>~26 giờ</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>20W</td></tr>
      <tr><td>Công nghệ</td><td>Tiết kiệm pin, sạc nhanh, không dây</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Face ID</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Dolby Atmos, Crash Detection, Dolby Vision, HLG, HDR10+, DCI-P3, IP68</td></tr>
      <tr><td>Âm thanh</td><td>MP3, FLAC, Apple Lossless, AAC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>1 Nano SIM & 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 6, 6GHz, Dual-band, hotspot</td></tr>
      <tr><td>GPS</td><td>QZSS, NavIC, iBeacon, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.3</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>146.7 x 71.5 x 7.8 mm</td></tr>
      <tr><td>Khối lượng</td><td>167 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>02/2025</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/iphone/2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(16990000.00 AS Decimal(18, 2)), CAST(16390000.00 AS Decimal(18, 2)), 100, 1, 0, 1, 1, 1, N'Điện thoại iPhone 16e 128GB', NULL, NULL, 1, 14, NULL, CAST(N'2025-04-12T01:45:27.660' AS DateTime), CAST(N'2025-04-12T01:45:27.660' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1081, N'Điện thoại iPhone 16 Plus 128GB', N'dien-thoai-iphone-16-plus-128gb', N'IP00003', N'​iPhone 16 Plus 128GB là phiên bản màn hình lớn trong dòng iPhone 16 của Apple, ra mắt vào tháng 9/2024. Với thiết kế tinh tế, hiệu năng mạnh mẽ và thời lượng pin ấn tượng, iPhone 16 Plus là lựa chọn lý tưởng cho người dùng yêu thích màn hình lớn và trải nghiệm giải trí đỉnh cao.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">iPhone 16 Plus 128GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>iOS 18</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Apple A18 6 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>Hãng không công bố</td></tr>
      <tr><td>GPU</td><td>Apple GPU 5 nhân</td></tr>
      <tr><td>RAM</td><td>8 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>128 GB (khả dụng ~113 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 48 MP & Phụ 12 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps đến 4K@60fps, 2.8K@60fps, Slow Motion, Cinematic</td></tr>
      <tr><td>Tính năng camera sau</td><td>Zoom quang, HDR 5, Macro, Ultrawide, Deep Fusion, Dolby Vision, Night Mode, Action Mode, Photonic Engine...</td></tr>
      <tr><td>Camera trước</td><td>12 MP, Smart HDR 5, 4K, TrueDepth, Photonic Engine, Retina Flash</td></tr>
      <tr><td>Màn hình</td><td>6.7" OLED, Super Retina XDR, 1290x2796, 60Hz, 2000 nits</td></tr>
      <tr><td>Mặt kính</td><td>Ceramic Shield</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Thời lượng sử dụng</td><td>~27 giờ</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>20W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin, sạc ngược qua cáp, sạc không dây & MagSafe</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Face ID</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Dolby Atmos, Dolby Vision, True Tone, HDR10+, HLG, Crash Detection, Apple Pay, IP68, Loa kép, Chạm 2 lần sáng màn hình</td></tr>
      <tr><td>Âm thanh</td><td>MP3, FLAC, Apple Lossless, AAC, APAC</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định</td></tr>
      <tr><td>Xem phim</td><td>MP4, HEVC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>1 Nano SIM & 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 7</td></tr>
      <tr><td>GPS</td><td>QZSS, iBeacon, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.3</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>160.9 x 77.8 x 7.8 mm</td></tr>
      <tr><td>Khối lượng</td><td>199 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>09/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/iphone/3.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(25990000.00 AS Decimal(18, 2)), CAST(23490000.00 AS Decimal(18, 2)), 75, 1, 0, 1, 1, 0, N'Điện thoại iPhone 16 Plus 128GB', NULL, NULL, 1, 14, NULL, CAST(N'2025-04-12T01:47:27.153' AS DateTime), CAST(N'2025-04-12T01:47:27.153' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1082, N'Điện thoại iPhone 16 128GB', N'dien-thoai-iphone-16-128gb', N'IP00004', N'​iPhone 16 128GB là phiên bản tiêu chuẩn trong dòng iPhone 16 Series, ra mắt vào tháng 9/2024. Với thiết kế hiện đại, hiệu năng mạnh mẽ và nhiều tính năng thông minh, iPhone 16 128GB đáp ứng tốt nhu cầu sử dụng hàng ngày của người dùng.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">iPhone 16 128GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>iOS 18</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Apple A18 6 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>Hãng không công bố</td></tr>
      <tr><td>GPU</td><td>Apple GPU 5 nhân</td></tr>
      <tr><td>RAM</td><td>8 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>128 GB (khả dụng ~113 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 48 MP & Phụ 12 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps đến 4K@60fps, 2.8K@60fps, Slow Motion, Cinematic</td></tr>
      <tr><td>Tính năng camera sau</td><td>Camera Control, Zoom quang, Macro, HDR 5, Dolby Vision, Night Mode, Deep Fusion, Photonic Engine...</td></tr>
      <tr><td>Camera trước</td><td>12 MP, Smart HDR 5, 4K, TrueDepth, Photonic Engine, Retina Flash</td></tr>
      <tr><td>Màn hình</td><td>6.1" OLED, Super Retina XDR, 1179x2556, 60Hz, 2000 nits</td></tr>
      <tr><td>Mặt kính</td><td>Ceramic Shield</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Thời lượng sử dụng</td><td>~22 giờ</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>20W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin, sạc ngược qua cáp, sạc không dây & MagSafe</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Face ID</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Dolby Atmos, Dolby Vision, True Tone, HDR10+, HLG, Crash Detection, Apple Pay, IP68, Loa kép, Chạm 2 lần sáng màn hình</td></tr>
      <tr><td>Âm thanh</td><td>MP3, FLAC, Apple Lossless, AAC, APAC</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định</td></tr>
      <tr><td>Xem phim</td><td>MP4, HEVC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>1 Nano SIM & 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 7</td></tr>
      <tr><td>GPS</td><td>QZSS, iBeacon, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.3</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>147.6 x 71.6 x 7.8 mm</td></tr>
      <tr><td>Khối lượng</td><td>170 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>09/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/iphone/4.png', CAST(0.00 AS Decimal(18, 2)), CAST(22990000.00 AS Decimal(18, 2)), CAST(19920000.00 AS Decimal(18, 2)), 99, 1, 0, 1, 1, 0, N'Điện thoại iPhone 16 128GB', NULL, NULL, 1, 14, NULL, CAST(N'2025-04-12T01:49:07.173' AS DateTime), CAST(N'2025-04-12T01:49:07.173' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1083, N'Điện thoại iPhone 15 128GB', N'dien-thoai-iphone-15-128gb', N'IP00005', N'​iPhone 15 128GB là phiên bản tiêu chuẩn trong dòng iPhone 15 Series, ra mắt vào tháng 9/2023. Sở hữu thiết kế hiện đại, hiệu năng mạnh mẽ và nhiều tính năng thông minh, iPhone 15 128GB đáp ứng tốt nhu cầu sử dụng hàng ngày của người dùng.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">iPhone 15 128GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>iOS 17</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Apple A16 Bionic</td></tr>
      <tr><td>Tốc độ CPU</td><td>3.46 GHz</td></tr>
      <tr><td>GPU</td><td>Apple GPU 5 nhân</td></tr>
      <tr><td>RAM</td><td>6 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>128 GB (khả dụng ~113 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 48 MP & Phụ 12 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps đến 4K@60fps, Slow Motion, Cinematic</td></tr>
      <tr><td>Tính năng camera sau</td><td>Zoom quang, Macro, HDR 5, Dolby Vision, Night Mode, Deep Fusion, Action Mode, Photonic Engine...</td></tr>
      <tr><td>Camera trước</td><td>12 MP, Smart HDR 5, 4K, TrueDepth, EIS, Cinematic, Photonic Engine</td></tr>
      <tr><td>Màn hình</td><td>6.1" OLED, Super Retina XDR, 1179x2556, 60Hz, 2000 nits</td></tr>
      <tr><td>Mặt kính</td><td>Ceramic Shield</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>3349 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>20W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin, sạc ngược qua cáp, sạc không dây & MagSafe</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Face ID</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Dolby Atmos, Dolby Vision, True Tone, HDR10, HLG, Crash Detection, Apple Pay, IP68, Loa kép, Chạm 2 lần sáng màn hình</td></tr>
      <tr><td>Âm thanh</td><td>MP3, FLAC, AAC</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định</td></tr>
      <tr><td>Xem phim</td><td>H.264 (MPEG4-AVC), ProRes, HEVC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>1 Nano SIM & 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax (Wi-Fi 6)</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.3</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>147.6 x 71.6 x 7.8 mm</td></tr>
      <tr><td>Khối lượng</td><td>171 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>09/2023</td></tr>
    </tbody>
  </table>
</div>', N'/Uploads/images/product/iphone/5.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(19990000.00 AS Decimal(18, 2)), CAST(15990000.00 AS Decimal(18, 2)), 50, 1, 0, 1, 1, 0, N'Điện thoại iPhone 15 128GB', NULL, NULL, 1, 14, NULL, CAST(N'2025-04-12T01:51:22.467' AS DateTime), CAST(N'2025-04-12T01:51:22.467' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1084, N'Điện thoại Samsung Galaxy S25 Ultra 5G 12GB/256GB', N'dien-thoai-samsung-galaxy-s25-ultra-5g-12gb256gb', N'SS00001', N'​Samsung Galaxy S25 Ultra 5G 12GB/256GB là mẫu flagship cao cấp nhất của Samsung ra mắt đầu năm 2025, nổi bật với thiết kế sang trọng, hiệu năng mạnh mẽ và tích hợp trí tuệ nhân tạo (AI) tiên tiến.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">Samsung Galaxy S25 Ultra 5G 12GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 15</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Qualcomm Snapdragon 8 Elite For Galaxy 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>4.47 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 830</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~222.7 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 200 MP & Phụ 50 MP, 50 MP, 10 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>1080p@240fps, 8K@30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>Ảnh Raw, Zoom quang & số, Super HDR, Log, Night Mode, OIS, Ultrawide...</td></tr>
      <tr><td>Camera trước</td><td>12 MP, AF, Night Mode, Làm đẹp</td></tr>
      <tr><td>Màn hình</td><td>6.9" Dynamic AMOLED 2X, 1440x3120 (2K+), 120Hz, 2600 nits</td></tr>
      <tr><td>Mặt kính</td><td>Corning Gorilla Armor 2</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5000 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>45W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin, sạc ngược không dây, sạc không dây</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Samsung DeX, Trợ lý AI, S Pen, phiên dịch, tìm kiếm hình, IP68</td></tr>
      <tr><td>Âm thanh</td><td>WAV, MP3, FLAC, OGG, AAC, Midi, AMR, 3GA...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>WEBM, MP4, MKV, M4V, FLV, AVI, 3GP, 3G2</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM hoặc 2 eSIM hoặc 1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 7, hotspot, Direct, Dual-band, 6GHz</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung Titan & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>162.8 x 77.6 x 8.2 mm</td></tr>
      <tr><td>Khối lượng</td><td>218 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>01/2025</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/samsung/1.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(33990000.00 AS Decimal(18, 2)), CAST(27990000.00 AS Decimal(18, 2)), 50, 2, 0, 1, 0, 0, N'Điện thoại Samsung Galaxy S25 Ultra 5G 12GB/256GB', NULL, NULL, 1, 15, NULL, CAST(N'2025-04-12T01:54:35.590' AS DateTime), CAST(N'2025-04-12T01:54:35.590' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1085, N'Điện thoại Samsung Galaxy Z Fold6 5G 12GB/256GB', N'dien-thoai-samsung-galaxy-z-fold6-5g-12gb256gb', N'SS00002', N'Samsung Galaxy Z Fold6 5G là mẫu điện thoại gập cao cấp nhất dự kiến ra mắt giữa năm 2025, kế thừa sự thành công của dòng Fold5. Thiết bị kết hợp giữa thiết kế sáng tạo, hiệu năng mạnh mẽ và khả năng đa nhiệm vượt trội.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">Samsung Galaxy Z Fold6 5G 12GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 14</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Snapdragon 8 Gen 3 for Galaxy</td></tr>
      <tr><td>Tốc độ CPU</td><td>3.39 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 750</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~216.1 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 12 MP, 10 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps đến 8K@60fps, Slow Motion, FlexCam</td></tr>
      <tr><td>Tính năng camera sau</td><td>Zoom quang & số, HDR, Pro, Night Mode, Panorama, QR Scan, FlexCam, Slow Motion, chống rung OIS...</td></tr>
      <tr><td>Camera trước</td><td>10 MP & 4 MP, quay 4K, Flash màn hình, FlexCam</td></tr>
      <tr><td>Màn hình</td><td>Chính 7.6" QXGA+ (1856 x 2160), Phụ 6.3" HD+ (968 x 2376), 120Hz, 2600 nits</td></tr>
      <tr><td>Mặt kính</td><td>Gorilla Glass Victus 2</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>4400 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>25W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin, sạc không dây</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay cạnh viền, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>DeX, FlexCam, Bixby, chia đôi màn hình, AOD, Samsung Pay, ghi âm cuộc gọi, trợ lý thông minh, chống nước IP48</td></tr>
      <tr><td>Âm thanh</td><td>AKG, Dolby Atmos, MP3, FLAC, AAC, WAV, APE, OGG...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>MP4, MKV, AVI, WEBM, M4V, FLV, 3GP, 3G2</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 6E/7, Dual-band, Direct, Hotspot</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.3</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C</td></tr>
      <tr><td>Kết nối khác</td><td>NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối, gập</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>Mở: 153.5 x 132.6 x 5.6 mm | Gập: 153.5 x 68.1 x 12.1 mm</td></tr>
      <tr><td>Khối lượng</td><td>239 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>07/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/samsung/2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(43990000.00 AS Decimal(18, 2)), CAST(35990000.00 AS Decimal(18, 2)), 50, 1, 0, 1, 1, 0, N'Điện thoại Samsung Galaxy Z Fold6 5G 12GB/256GB', NULL, NULL, 1, 15, NULL, CAST(N'2025-04-12T01:56:29.040' AS DateTime), CAST(N'2025-04-12T01:56:29.040' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1086, N'Điện thoại Samsung Galaxy Z Flip6 5G 12GB/256GB', N'dien-thoai-samsung-galaxy-z-flip6-5g-12gb256gb', N'SS00003', N'Samsung Galaxy Z Flip6 5G (12GB/256GB) là mẫu điện thoại gập cao cấp của Samsung, ra mắt vào tháng 7/2024. Thiết bị kết hợp thiết kế thời trang, hiệu năng mạnh mẽ và các tính năng AI tiên tiến, mang đến trải nghiệm độc đáo cho người dùng.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">Samsung Galaxy Z Flip6 5G 12GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 14</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Snapdragon 8 Gen 3 for Galaxy</td></tr>
      <tr><td>Tốc độ CPU</td><td>3.39 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 750</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~216.6 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 12 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps đến 4K@60fps, Slow Motion, FlexCam</td></tr>
      <tr><td>Tính năng camera sau</td><td>Zoom quang, HDR, Pro, Night Mode, Panorama, Slow Motion, FlexCam, chống rung OIS...</td></tr>
      <tr><td>Camera trước</td><td>10 MP, quay 4K, FlexCam, làm đẹp, chụp đêm</td></tr>
      <tr><td>Màn hình</td><td>Chính 6.7" FHD+ (1080 x 2640), Phụ 3.4" HD+ (720 x 748), Chính 120Hz / Phụ 60Hz, 2600/1600 nits</td></tr>
      <tr><td>Mặt kính</td><td>Gorilla Glass Victus 2</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>4000 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>25W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin, sạc không dây</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay cạnh viền, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Game Booster, Bixby, chia đôi màn hình, AOD, Samsung Pay, thư mục bảo mật, phiên dịch, ghi âm cuộc gọi, chống nước IP48</td></tr>
      <tr><td>Âm thanh</td><td>Dolby Atmos, MP3, FLAC, AAC, WAV, APE, OGG...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>MP4, MKV, AVI, WEBM, M4V, FLV, 3GP, 3G2</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>1 Nano SIM + 1 eSIM hoặc 2 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 6/6E, Dual-band, Direct, Hotspot</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.3</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối, gập</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>Mở: 165.1 x 71.9 x 6.9 mm | Gập: 85.1 x 71.9 x 14.9 mm</td></tr>
      <tr><td>Khối lượng</td><td>187 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>07/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/samsung/3.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(28990000.00 AS Decimal(18, 2)), CAST(18990000.00 AS Decimal(18, 2)), 50, 2, 0, 1, 1, 0, N'Điện thoại Samsung Galaxy Z Flip6 5G 12GB/256GB', NULL, NULL, 1, 15, NULL, CAST(N'2025-04-12T01:58:15.217' AS DateTime), CAST(N'2025-04-12T01:58:15.217' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1087, N'Điện thoại Samsung Galaxy M35 5G 8GB/256GB', N'dien-thoai-samsung-galaxy-m35-5g-8gb256gb', N'SS00004', N'Samsung Galaxy M35 5G (8GB/256GB) là mẫu smartphone tầm trung nổi bật của Samsung, ra mắt vào tháng 5 năm 2024. Thiết bị này được trang bị màn hình Super AMOLED 120Hz, pin dung lượng lớn 6000mAh và hiệu năng mạnh mẽ, phù hợp cho cả công việc lẫn giải trí', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">Samsung Galaxy M35 5G 8GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr>
    </thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 14</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Exynos 1380 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>4 nhân 2.4 GHz & 4 nhân 2 GHz</td></tr>
      <tr><td>GPU</td><td>Mali-G68 MP5</td></tr>
      <tr><td>RAM</td><td>8 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~236 GB)</td></tr>
      <tr><td>Thẻ nhớ</td><td>MicroSD, tối đa 1 TB</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr>
    </thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 8 MP, 2 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/240/480fps, 1080p@30/60fps, 4K@30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>HDR, OIS, Night Mode, Macro, Slow Motion, Panorama, Pro, VDIS, siêu độ phân giải, QR Scan...</td></tr>
      <tr><td>Camera trước</td><td>13 MP, quay 4K, HDR, làm đẹp, flash màn hình</td></tr>
      <tr><td>Màn hình</td><td>6.6" Super AMOLED, FHD+ (1080 x 2340), 120Hz, 1000 nits</td></tr>
      <tr><td>Mặt kính</td><td>Kính cường lực</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr>
    </thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>6000 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>25W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr>
    </thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay cạnh viền, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Game Booster, chia đôi màn hình, AOD, Smart Switch, thư mục bảo mật, Vision Booster, giao diện đơn giản, chống nước IP48</td></tr>
      <tr><td>Âm thanh</td><td>Dolby Atmos, MP3, FLAC, AAC, WAV, APE, OGG...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>MP4, MKV, AVI, WEBM, M4V, FLV, 3GP, 3G2</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr>
    </thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 6, Dual-band, Direct, Hotspot</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.3</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C</td></tr>
      <tr><td>Kết nối khác</td><td>NFC</td></tr>
    </tbody>

    <thead>
      <tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr>
    </thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung & mặt lưng nhựa</td></tr>
      <tr><td>Kích thước</td><td>162.3 x 78.6 x 9.1 mm</td></tr>
      <tr><td>Khối lượng</td><td>222 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>06/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/samsung/4.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(8790000.00 AS Decimal(18, 2)), CAST(7990000.00 AS Decimal(18, 2)), 50, 1, 0, 1, 1, 0, N'Điện thoại Samsung Galaxy M35 5G 8GB/256GB', NULL, NULL, 1, 15, NULL, CAST(N'2025-04-12T02:01:31.387' AS DateTime), CAST(N'2025-04-12T02:01:31.387' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1088, N'Điện thoại Samsung Galaxy S24 Ultra 5G 12GB/256GB', N'dien-thoai-samsung-galaxy-s24-ultra-5g-12gb256gb', N'SS00005', N'Samsung Galaxy S24 Ultra 5G (12GB/256GB) là mẫu flagship cao cấp nhất của Samsung ra mắt đầu năm 2024, nổi bật với thiết kế khung titan, màn hình siêu sáng, hiệu năng mạnh mẽ và tích hợp nhiều tính năng AI thông minh.​
', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
<h2 style="text-align:center">Samsung Galaxy S24 Ultra 5G 12GB/256GB &ndash; Cấu h&igrave;nh chi tiết</h2>

<table style="border-collapse:collapse; font-size:15px; width:100%">
	<thead>
		<tr>
			<th colspan="2" style="text-align:left">Cấu h&igrave;nh &amp; Bộ nhớ</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 14</td>
		</tr>
		<tr>
			<td>Chip xử l&yacute; (CPU)</td>
			<td>Snapdragon 8 Gen 3 for Galaxy</td>
		</tr>
		<tr>
			<td>Tốc độ CPU</td>
			<td>3.39 GHz</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Adreno 750</td>
		</tr>
		<tr>
			<td>RAM</td>
			<td>12 GB</td>
		</tr>
		<tr>
			<td>Dung lượng lưu trữ</td>
			<td>256 GB (khả dụng ~229 GB)</td>
		</tr>
		<tr>
			<td>Danh bạ</td>
			<td>Kh&ocirc;ng giới hạn</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th colspan="2" style="text-align:left">Camera &amp; M&agrave;n h&igrave;nh</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Camera sau</td>
			<td>Ch&iacute;nh 200 MP &amp; Phụ 50 MP, 12 MP, 10 MP, Flash: C&oacute;</td>
		</tr>
		<tr>
			<td>Quay phim</td>
			<td>720p@30fps đến 8K@30fps, 4K@120fps, Slow Motion, Super Slow Motion</td>
		</tr>
		<tr>
			<td>T&iacute;nh năng camera sau</td>
			<td>Ảnh Raw, Zoom quang &amp; số, HDR, Pro, Night Mode, Panorama, QR Scan, chống rung OIS/VDIS...</td>
		</tr>
		<tr>
			<td>Camera trước</td>
			<td>12 MP, quay 4K, HDR, l&agrave;m đẹp, ch&acirc;n dung đ&ecirc;m, flash m&agrave;n h&igrave;nh</td>
		</tr>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>6.8&quot; Dynamic AMOLED 2X, 2K+ (1440 x 3120), 120Hz, 2600 nits</td>
		</tr>
		<tr>
			<td>Mặt k&iacute;nh</td>
			<td>Gorilla Armor</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th colspan="2" style="text-align:left">Pin &amp; Sạc</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Dung lượng pin</td>
			<td>5000 mAh</td>
		</tr>
		<tr>
			<td>Loại pin</td>
			<td>Li-Ion</td>
		</tr>
		<tr>
			<td>Sạc tối đa</td>
			<td>45W</td>
		</tr>
		<tr>
			<td>C&ocirc;ng nghệ</td>
			<td>Sạc nhanh, tiết kiệm pin, sạc ngược kh&ocirc;ng d&acirc;y, sạc kh&ocirc;ng d&acirc;y</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th colspan="2" style="text-align:left">Tiện &iacute;ch</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Bảo mật</td>
			<td>V&acirc;n tay dưới m&agrave;n h&igrave;nh, nhận diện khu&ocirc;n mặt</td>
		</tr>
		<tr>
			<td>T&iacute;nh năng nổi bật</td>
			<td>DeX, Game Booster, Bixby, Ray Tracing, chia đ&ocirc;i m&agrave;n h&igrave;nh, AOD, Samsung Pay, thư mục bảo mật, chống nước IP68</td>
		</tr>
		<tr>
			<td>&Acirc;m thanh</td>
			<td>AKG, Dolby Atmos, MP3, FLAC, AAC, WAV, APE, OGG...</td>
		</tr>
		<tr>
			<td>Ghi &acirc;m</td>
			<td>Ghi &acirc;m mặc định, ghi &acirc;m cuộc gọi</td>
		</tr>
		<tr>
			<td>Xem phim</td>
			<td>MP4, MKV, AVI, WEBM, M4V, FLV, AV1, 3GP, 3G2</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th colspan="2" style="text-align:left">Kết nối</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Mạng</td>
			<td>5G</td>
		</tr>
		<tr>
			<td>SIM</td>
			<td>2 Nano SIM hoặc 2 eSIM hoặc 1 Nano SIM + 1 eSIM</td>
		</tr>
		<tr>
			<td>Wi-Fi</td>
			<td>Wi-Fi MIMO, Wi-Fi 6, Dual-band, Direct, Hotspot</td>
		</tr>
		<tr>
			<td>GPS</td>
			<td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td>
		</tr>
		<tr>
			<td>Bluetooth</td>
			<td>v5.3</td>
		</tr>
		<tr>
			<td>Cổng sạc</td>
			<td>Type-C</td>
		</tr>
		<tr>
			<td>Kết nối kh&aacute;c</td>
			<td>NFC</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th colspan="2" style="text-align:left">Thiết kế &amp; Chất liệu</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Thiết kế</td>
			<td>Nguy&ecirc;n khối</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>Khung Titan &amp; mặt lưng k&iacute;nh cường lực</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>162.3 x 79 x 8.6 mm</td>
		</tr>
		<tr>
			<td>Khối lượng</td>
			<td>232 g</td>
		</tr>
		<tr>
			<td>Thời điểm ra mắt</td>
			<td>01/2024</td>
		</tr>
	</tbody>
</table>
</div>
', N'/Uploads/images/product/samsung/5.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(29990000.00 AS Decimal(18, 2)), CAST(23990000.00 AS Decimal(18, 2)), 50, 0, 0, 0, 0, 0, N'Điện thoại Samsung Galaxy S24 Ultra 5G 12GB/256GB', NULL, NULL, 1, 15, NULL, CAST(N'2025-04-12T02:08:28.157' AS DateTime), CAST(N'2025-04-12T02:08:28.157' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1089, N'Điện thoại OPPO Find N5 5G 16GB/512GB', N'dien-thoai-oppo-find-n5-5g-16gb512gb', N'OP00001', N'OPPO Find N5 5G (16GB/512GB) là mẫu điện thoại gập cao cấp nhất của OPPO, ra mắt vào tháng 2/2025. Thiết bị này nổi bật với thiết kế siêu mỏng, hiệu năng mạnh mẽ và tích hợp nhiều công nghệ tiên tiến.​', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">OPPO Find N5 5G 16GB/512GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 15</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Qualcomm Snapdragon 8 Elite 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>4.32 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 830</td></tr>
      <tr><td>RAM</td><td>16 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>512 GB (khả dụng ~489 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 50 MP, 8 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/240/480fps, 1080p@30/60/240fps, 4K@30/60fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>HDR, OIS, EIS, XPAN, Night Mode, Panorama, Slow Motion, Phơi sáng, Cinematic...</td></tr>
      <tr><td>Camera trước</td><td>8 MP, HDR, làm đẹp, quay video kép, Night Mode</td></tr>
      <tr><td>Màn hình</td><td>Chính 8.12" QXGA+ (2248 x 2480), Phụ 6.62" FHD+ (1140 x 2616), 120Hz, 1400/1600 nits</td></tr>
      <tr><td>Mặt kính</td><td>Chính: Ultra Thin Glass, Phụ: Nanocrystal</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5600 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>80W</td></tr>
      <tr><td>Sạc kèm theo máy</td><td>80W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh SuperVOOC, tiết kiệm pin, sạc không dây</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay cạnh viền, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Xoá vật thể AI, Google Gemini, chia đôi màn hình, HDR10+, HDR Vivid, thư mục bảo mật, chống nước IPX6/X8/X9</td></tr>
      <tr><td>Âm thanh</td><td>Loa kép, MP3, FLAC, AAC, WAV, APE, OGG...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>Có</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM hoặc 1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi 7/6/5, Dual-band, Direct, Hotspot</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC, Hồng ngoại</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối, gập</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng sợi thủy tinh</td></tr>
      <tr><td>Kích thước</td><td>Mở: 160.87 x 146.58 x 4.21 mm | Gập: 160.87 x 74.42 x 8.93 mm</td></tr>
      <tr><td>Khối lượng</td><td>229 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>04/2025</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/oppo/1.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(44990000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 50, 0, 0, 0, 1, 1, N'Điện thoại OPPO Find N5 5G 16GB/512GB', NULL, NULL, 1, 17, NULL, CAST(N'2025-04-12T02:15:14.340' AS DateTime), CAST(N'2025-04-12T02:15:14.340' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1090, N'Điện thoại OPPO Reno13 Pro 5G 12GB/512GB', N'dien-thoai-oppo-reno13-pro-5g-12gb512gb', N'OP00002', N'OPPO Reno13 Pro 5G (12GB/512GB) là mẫu điện thoại tầm trung cao cấp ra mắt vào cuối năm 2024, nổi bật với thiết kế hiện đại, hiệu năng mạnh mẽ và nhiều tính năng AI thông minh.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">OPPO Reno13 Pro 5G 12GB/512GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 15</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>MediaTek Dimensity 8350 5G 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>1 x 3.35 GHz + 3 x 3.2 GHz + 4 x 2.2 GHz</td></tr>
      <tr><td>GPU</td><td>Mali-G615</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>512 GB (khả dụng ~450 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 50 MP, 8 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/240/960fps, 1080p@30/60/120/480fps, 4K@30/60fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>HDR, OIS, Night Mode, Panorama, Slow Motion, AI làm đẹp, Ultrawide...</td></tr>
      <tr><td>Camera trước</td><td>50 MP, HDR, làm đẹp AI, Time Lapse, Panorama</td></tr>
      <tr><td>Màn hình</td><td>6.83" AMOLED, 1.5K (1272 x 2800), 120Hz, 1200 nits</td></tr>
      <tr><td>Mặt kính</td><td>Gorilla Glass 7i</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5800 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>80W</td></tr>
      <tr><td>Sạc kèm theo máy</td><td>80W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh SuperVOOC, tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Nhân bản ứng dụng, HDR, chống nước IP66/IP68/IP69, chụp hình dưới nước, cử chỉ thông minh</td></tr>
      <tr><td>Âm thanh</td><td>MP3, FLAC, OGG, Midi...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>MP4, AVI</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi hotspot, Wi-Fi 6, Dual-band (2.4 GHz/5 GHz)</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC, Hồng ngoại</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung kim loại & mặt lưng kính</td></tr>
      <tr><td>Kích thước</td><td>162.73 x 76.55 x 7.55 mm</td></tr>
      <tr><td>Khối lượng</td><td>195 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>01/2025</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/oppo/2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(18990000.00 AS Decimal(18, 2)), CAST(18490000.00 AS Decimal(18, 2)), 50, 0, 0, 0, 1, 0, N'Điện thoại OPPO Reno13 Pro 5G 12GB/512GB', NULL, NULL, 1, 17, NULL, CAST(N'2025-04-12T02:16:29.723' AS DateTime), CAST(N'2025-04-12T02:16:29.723' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1091, N'Điện thoại OPPO Reno13 5G 12GB/256GB', N'dien-thoai-oppo-reno13-5g-12gb256gb', N'OP00003', N'OPPO Reno13 5G (12GB/256GB) là mẫu điện thoại tầm trung cao cấp ra mắt vào tháng 11 năm 2024, nổi bật với thiết kế hiện đại, hiệu năng mạnh mẽ và nhiều tính năng thông minh.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">OPPO Reno13 5G 12GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 15</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>MediaTek Dimensity 8350 5G 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>1 x 3.35 GHz + 3 x 3.2 GHz + 4 x 2.2 GHz</td></tr>
      <tr><td>GPU</td><td>Mali-G615</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~210 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 8 MP, 2 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/240/960fps, 1080p@30/60/120/480fps, 4K@30/60fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>Xóa phông, HDR, OIS, Ultrawide, Macro, Night Mode, Panorama, AI làm đẹp...</td></tr>
      <tr><td>Camera trước</td><td>50 MP, HDR, làm đẹp AI, Time Lapse, Panorama</td></tr>
      <tr><td>Màn hình</td><td>6.59" AMOLED, 1.5K (1256 x 2760), 120Hz, 1200 nits</td></tr>
      <tr><td>Mặt kính</td><td>Gorilla Glass 7i</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5600 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>80W</td></tr>
      <tr><td>Sạc kèm theo máy</td><td>80W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh SuperVOOC, tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Nhân bản ứng dụng, HDR, chống nước IP66/IP68/IP69, chụp hình dưới nước, cử chỉ thông minh</td></tr>
      <tr><td>Âm thanh</td><td>MP3, FLAC, OGG, Midi...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>MP4, AVI</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi hotspot, Wi-Fi 6, Dual-band (2.4 GHz/5 GHz)</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC, Hồng ngoại</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung kim loại & mặt lưng kính</td></tr>
      <tr><td>Kích thước</td><td>157.9 x 74.73 x 7.24 mm (Trắng) / 7.29 mm (Xanh)</td></tr>
      <tr><td>Khối lượng</td><td>181 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>01/2025</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/oppo/3.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(15990000.00 AS Decimal(18, 2)), CAST(14950000.00 AS Decimal(18, 2)), 50, 0, 0, 1, 1, 0, N'Điện thoại OPPO Reno13 5G 12GB/256GB', NULL, NULL, 1, 17, NULL, CAST(N'2025-04-12T02:17:54.460' AS DateTime), CAST(N'2025-04-12T02:17:54.460' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1092, N'Điện thoại OPPO Find X8 5G 16GB/512GB', N'dien-thoai-oppo-find-x8-5g-16gb512gb', N'OP00004', N'Điện thoại OPPO Find X8 5G (16GB/512GB) là mẫu flagship cao cấp của OPPO, ra mắt tại Việt Nam vào cuối năm 2024. Thiết bị nổi bật với thiết kế tinh tế, hiệu năng mạnh mẽ và hệ thống camera chất lượng, đáp ứng nhu cầu đa dạng của người dùng.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">OPPO Find X8 5G 16GB/512GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 15</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>MediaTek Dimensity 9400 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>1 x 3.6 GHz + 3 x 3.3 GHz + 4 x 2.4 GHz</td></tr>
      <tr><td>GPU</td><td>ARM Immortalis G925 MC12</td></tr>
      <tr><td>RAM</td><td>16 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>512 GB (khả dụng ~475 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>3 camera 50 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/60/240/480fps, 1080p@30/60/240fps, 4K@30/60fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>HDR, OIS, Night Mode, Panorama, Slow Motion, XPAN, Ultrawide, AR Stickers...</td></tr>
      <tr><td>Camera trước</td><td>32 MP, HDR, làm đẹp, chụp đêm, Time Lapse, Panorama</td></tr>
      <tr><td>Màn hình</td><td>6.59" AMOLED, 1.5K+ (1256 x 2760), 120Hz, 1600 nits</td></tr>
      <tr><td>Mặt kính</td><td>Gorilla Glass 7i</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5630 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>80W</td></tr>
      <tr><td>Sạc kèm theo máy</td><td>80W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh SuperVOOC, sạc không dây, tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Nhân bản ứng dụng, mở rộng RAM, chống nước IP68/IP69, cử chỉ thông minh</td></tr>
      <tr><td>Âm thanh</td><td>MP3, FLAC, OGG, Midi...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>MP4, AVI</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM hoặc 1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi hotspot, Wi-Fi 6, Dual-band (2.4 GHz/5 GHz)</td></tr>
      <tr><td>GPS</td><td>QZSS, NavIC, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC, Hồng ngoại</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng kính cường lực</td></tr>
      <tr><td>Kích thước</td><td>157.35 x 74.33 x 7.85 mm</td></tr>
      <tr><td>Khối lượng</td><td>193 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>11/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/oppo/4.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(22990000.00 AS Decimal(18, 2)), CAST(21990000.00 AS Decimal(18, 2)), 50, 0, 0, 0, 1, 0, N'Điện thoại OPPO Find X8 5G 16GB/512GB', NULL, NULL, 1, 17, NULL, CAST(N'2025-04-12T02:19:38.193' AS DateTime), CAST(N'2025-04-12T02:19:38.193' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1093, N'Điện thoại Xiaomi 14T Pro 5G 12GB/256GB', N'dien-thoai-xiaomi-14t-pro-5g-12gb256gb', N'XI00001', N'Điện thoại Xiaomi 14T Pro 5G 12GB/256GB là mẫu flagship cao cấp ra mắt vào cuối năm 2024, nổi bật với thiết kế tinh tế, hiệu năng mạnh mẽ và hệ thống camera chất lượng cao, đáp ứng nhu cầu đa dạng của người dùng.​', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">Xiaomi 14T Pro 5G 12GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Xiaomi HyperOS (Android 14)</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>MediaTek Dimensity 9300+ 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>1 x 3.4 GHz + 3 x 2.85 GHz + 4 x 2 GHz</td></tr>
      <tr><td>GPU</td><td>ARM Immortalis-G720 MP12</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~243 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 50 MP, 12 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/120/240/960fps, 1080p@30/60/120/240/960fps, 4K@24/30/60fps, 8K@24/30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>HDR, OIS, Night Mode, AI Camera, Pro Mode, Panorama, Slow Motion, Xiaomi ProFocus, Log, Tilt-shift, Director Mode...</td></tr>
      <tr><td>Camera trước</td><td>32 MP, HDR, làm đẹp, quay video HDR10+, Slow Motion, Time Lapse, Panorama</td></tr>
      <tr><td>Màn hình</td><td>6.67" AMOLED, 1.5K (1220 x 2712), 144Hz, 4000 nits</td></tr>
      <tr><td>Mặt kính</td><td>Gorilla Glass 5</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5000 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>120W</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Xoá vật thể AI, đo nhịp tim, mở rộng RAM, Google Gemini, IceLoop Cooling, Dolby Vision, chống nước IP68...</td></tr>
      <tr><td>Âm thanh</td><td>Dolby Atmos, Hi-Res Audio, MP3, FLAC, WAV, OGG, AAC...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi, ghi âm AI</td></tr>
      <tr><td>Xem phim</td><td>WEBM, MP4, MOV, MKV, AVI, 3GP</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM hoặc 1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi MIMO, Wi-Fi Direct, Wi-Fi 6, Dual-band</td></tr>
      <tr><td>GPS</td><td>NavIC, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC, Hồng ngoại</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung hợp kim nhôm & mặt lưng kính</td></tr>
      <tr><td>Kích thước</td><td>160.4 x 75.1 x 8.39 mm</td></tr>
      <tr><td>Khối lượng</td><td>209 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>09/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/xiaomi/1.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(16990000.00 AS Decimal(18, 2)), CAST(14990000.00 AS Decimal(18, 2)), 50, 0, 0, 1, 1, 0, N'Điện thoại Xiaomi 14T Pro 5G 12GB/256GB', NULL, NULL, 1, 16, NULL, CAST(N'2025-04-12T02:22:16.947' AS DateTime), CAST(N'2025-04-12T02:22:16.947' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1094, N'Điện thoại Xiaomi 15 5G 12GB/512GB', N'dien-thoai-xiaomi-15-5g-12gb512gb', N'XI00002', N'Điện thoại Xiaomi 15 5G 12GB/512GB', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">Xiaomi 15 5G 12GB/512GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Xiaomi HyperOS 2</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Qualcomm Snapdragon 8 Elite 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>2 x 4.32 GHz + 6 x 3.35 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 830</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>512 GB (khả dụng ~494 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>3 camera 50 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/120/240/480/960/1920fps, 1080p@30/60/120/240/960fps, 4K@24/30/60fps, 8K@24/30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>HDR, OIS, Night Mode, Pro, Macro, Panorama, AI Camera, ProFocus, Log, Slow Motion, Super Zoom, Siêu cận, Quay kép...</td></tr>
      <tr><td>Camera trước</td><td>32 MP, HDR, làm đẹp, quay video 4K, Flash màn hình, Time Lapse, Slow Motion</td></tr>
      <tr><td>Màn hình</td><td>6.36" AMOLED, 1.5K (1200 x 2670), 120Hz, 3200 nits</td></tr>
      <tr><td>Mặt kính</td><td>Kính cường lực Xiaomi Shield</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5240 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>90W (có kèm)</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, sạc không dây, siêu tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Google Gemini, AI Tìm kiếm/Viết/Phụ đề/Nghệ thuật, ProFocus, IceLoop, Xoá vật thể, AOD AI, Dolby Vision, phản ứng cử chỉ, HDR10+, chống nước IP68...</td></tr>
      <tr><td>Âm thanh</td><td>Dolby Atmos, Hi-Res Audio, MP3, FLAC, WAV, OGG, AAC...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>WEBM, MP4, MKV, TS, 3GP</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM hoặc 2 eSIM hoặc 1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi 7/6E/6, MIMO, Wi-Fi Direct, Dual-band</td></tr>
      <tr><td>GPS</td><td>QZSS, NavIC, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v6.0</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng sợi thuỷ tinh</td></tr>
      <tr><td>Kích thước</td><td>152.3 x 71.2 x 8.08 mm</td></tr>
      <tr><td>Khối lượng</td><td>191 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>03/2025</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/xiaomi/2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(26990000.00 AS Decimal(18, 2)), CAST(22990000.00 AS Decimal(18, 2)), 50, 0, 0, 0, 0, 0, N'Điện thoại Xiaomi 15 5G 12GB/512GB', NULL, NULL, 1, 16, NULL, CAST(N'2025-04-12T02:23:48.687' AS DateTime), CAST(N'2025-04-12T02:23:48.687' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1095, N'Điện thoại Xiaomi 15 Ultra 5G 16GB/512GB Trắng', N'dien-thoai-xiaomi-15-ultra-5g-16gb512gb-trang', N'XI00003', N'Điện thoại Xiaomi 15 Ultra 5G 16GB/512GB phiên bản màu trắng đặc quyền là mẫu flagship cao cấp của Xiaomi, ra mắt tại Việt Nam vào tháng 3/2025. Thiết bị nổi bật với thiết kế tinh tế, hiệu năng mạnh mẽ và hệ thống camera chất lượng cao, đáp ứng nhu cầu đa dạng của người dùng.​', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">Xiaomi 15 Ultra 5G 16GB/512GB Trắng – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Xiaomi HyperOS 2</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Qualcomm Snapdragon 8 Elite 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>2 x 4.32 GHz + 6 x 3.35 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 830</td></tr>
      <tr><td>RAM</td><td>16 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>512 GB (khả dụng ~496 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 200 MP, 50 MP, 50 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/120/240/480/960/1920fps, 1080p@30/60/120/240/480/960/1920fps, 4K@30/60/120fps, 8K@30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>Ảnh Raw, OIS, Night Mode, Macro, AI Camera, ProFocus, Log, Slow Motion, Panorama, Siêu trăng, quay đêm, quay kép, chế độ chuyên nghiệp...</td></tr>
      <tr><td>Camera trước</td><td>32 MP, HDR, làm đẹp, quay 4K, Flash màn hình, Time Lapse</td></tr>
      <tr><td>Màn hình</td><td>6.73" AMOLED, 2K+ (1440 x 3200), 120Hz, 3200 nits</td></tr>
      <tr><td>Mặt kính</td><td>Xiaomi Shield 2.0</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5410 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>90W (có kèm)</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, sạc không dây, siêu tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Xoá vật thể AI, Google Gemini, AI nghệ thuật/viết/phụ đề/nhận diện giọng nói, IceLoop, Dolby Vision, HDR10+, phản ứng cử chỉ, chống nước IP68...</td></tr>
      <tr><td>Âm thanh</td><td>Dolby Atmos, Hi-Res Audio, MP3, FLAC, WAV, OGG, AAC...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>WEBM, MP4, MKV, TS, 3GP</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM hoặc 2 eSIM hoặc 1 Nano SIM + 1 eSIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi 7/6E/6, MIMO, Wi-Fi Direct, Dual-band</td></tr>
      <tr><td>GPS</td><td>QZSS, NavIC, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v6.0</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhôm & mặt lưng sợi thuỷ tinh</td></tr>
      <tr><td>Kích thước</td><td>161.3 x 75.3 x 9.35 mm</td></tr>
      <tr><td>Khối lượng</td><td>226 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>03/2025</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/xiaomi/3.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(34990000.00 AS Decimal(18, 2)), CAST(32990000.00 AS Decimal(18, 2)), 50, 0, 0, 0, 1, 1, N'Điện thoại Xiaomi 15 Ultra 5G 16GB/512GB Trắng', NULL, NULL, 1, 16, NULL, CAST(N'2025-04-12T02:25:04.167' AS DateTime), CAST(N'2025-04-12T02:25:04.167' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1096, N'Điện thoại vivo V40 5G 12GB/256GB', N'dien-thoai-vivo-v40-5g-12gb256gb', N'VI00001', N'Điện thoại vivo V40 5G (12GB/256GB) là một mẫu smartphone tầm trung cao cấp, ra mắt vào tháng 7/2024. Thiết bị nổi bật với thiết kế sang trọng, hiệu năng mạnh mẽ và hệ thống camera chất lượng cao, đáp ứng nhu cầu đa dạng của người dùng.', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">vivo V40 5G 12GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 14</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Snapdragon 7 Gen 3 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>1 x 2.63 GHz + 3 x 2.4 GHz + 4 x 1.8 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 720</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~228 GB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>2 camera 50 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30/60fps, 1080p@30/60fps, 4K@30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>OIS, Night Mode, Slow Motion, Pro, Panorama, Time Lapse, Ultrawide, quay kép, Live Photos...</td></tr>
      <tr><td>Camera trước</td><td>50 MP, HDR, làm đẹp, quay Full HD, Live Photos, chụp đêm</td></tr>
      <tr><td>Màn hình</td><td>6.78" AMOLED, 1.5K (1260 x 2800), 120Hz, 4500 nits</td></tr>
      <tr><td>Mặt kính</td><td>Schott Xensation UP</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5500 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>80W (có kèm)</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Hi-Res Audio, tản nhiệt LiquidCool, loa kép, game booster, chống nước IP68/IP69, mở rộng RAM, nhân bản ứng dụng...</td></tr>
      <tr><td>Âm thanh</td><td>WAV, MP3, FLAC, APE, Vorbis, Midi, AAC...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>WEBM, MP4, MKV, TS, FLV, AVI, 3GP</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi hotspot, Dual-band (2.4 GHz/5 GHz)</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C (kiêm jack tai nghe)</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhựa & mặt lưng kính</td></tr>
      <tr><td>Kích thước</td><td>164.16 x 74.93 x 7.58 mm</td></tr>
      <tr><td>Khối lượng</td><td>190 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>11/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/vivorealme/1.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(12990000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 50, 0, 0, 1, 1, 0, N'Điện thoại vivo V40 5G 12GB/256GB', NULL, NULL, 1, 18, NULL, CAST(N'2025-04-12T02:29:00.153' AS DateTime), CAST(N'2025-04-12T02:29:00.153' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1097, N'Điện thoại vivo Y19s 6GB/128GB', N'dien-thoai-vivo-y19s-6gb128gb', N'VI00002', N'Điện thoại vivo Y19s 6GB/128GB là một lựa chọn hấp dẫn trong phân khúc tầm trung, nổi bật với thiết kế bền bỉ, hiệu năng ổn định và thời lượng pin ấn tượng. Dưới đây là thông tin chi tiết về sản phẩm', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">vivo Y19s 6GB/128GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 14</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Unisoc Tiger T612</td></tr>
      <tr><td>Tốc độ CPU</td><td>1.8 GHz</td></tr>
      <tr><td>GPU</td><td>Mali-G57</td></tr>
      <tr><td>RAM</td><td>6 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>128 GB (khả dụng ~113 GB)</td></tr>
      <tr><td>Thẻ nhớ</td><td>MicroSD (tối đa 1 TB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 0.08 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps, 1080p@30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>HDR, Pro, Night Mode, Slow Motion, Panorama, Time Lapse, Macro, làm đẹp, quét mã QR, Google Lens...</td></tr>
      <tr><td>Camera trước</td><td>5 MP, HDR, làm đẹp, quay Full HD, chụp đêm</td></tr>
      <tr><td>Màn hình</td><td>6.68" IPS LCD, HD+ (720 x 1608), 90Hz, 1000 nits</td></tr>
      <tr><td>Mặt kính</td><td>Kính cường lực</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5500 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Ion</td></tr>
      <tr><td>Sạc tối đa</td><td>15W (có kèm)</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, siêu tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay cạnh viền, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Siêu trò chơi, mở rộng RAM, nhân bản ứng dụng, loa kép, chống nước IP64, độ bền chuẩn MIL-STD 810H, LiquidCool...</td></tr>
      <tr><td>Âm thanh</td><td>WAV, MP3, FLAC, APE, Vorbis, Midi, AAC...</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Radio</td><td>Có</td></tr>
      <tr><td>Xem phim</td><td>WEBM, MP4, MKV, TS, FLV, AVI, 3GP</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>4G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi hotspot, Dual-band (2.4 GHz/5 GHz)</td></tr>
      <tr><td>GPS</td><td>QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.2</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C</td></tr>
      <tr><td>Jack tai nghe</td><td>3.5 mm</td></tr>
      <tr><td>Kết nối khác</td><td>OTG</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung nhựa & mặt lưng kính</td></tr>
      <tr><td>Kích thước</td><td>164.16 x 74.93 x 7.58 mm</td></tr>
      <tr><td>Khối lượng</td><td>190 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>11/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/vivorealme/2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(4290000.00 AS Decimal(18, 2)), CAST(4090000.00 AS Decimal(18, 2)), 50, 0, 0, 1, 1, 0, N'Điện thoại vivo Y19s 6GB/128GB', NULL, NULL, 1, 18, NULL, CAST(N'2025-04-12T02:30:33.107' AS DateTime), CAST(N'2025-04-12T02:30:33.107' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1098, N'Điện thoại realme 12 8GB/256GB', N'dien-thoai-realme-12-8gb256gb', N'RE00001', N'Điện thoại realme 12 5G (8GB/256GB) là một lựa chọn hấp dẫn trong phân khúc tầm trung, kết hợp giữa thiết kế thời trang, hiệu năng ổn định và hệ thống camera chất lượng. Dưới đây là thông tin chi tiết về sản phẩm:​', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">realme 12 8GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 14</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>Snapdragon 685 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>2.8 GHz</td></tr>
      <tr><td>GPU</td><td>Adreno 610</td></tr>
      <tr><td>RAM</td><td>8 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~230.1 GB)</td></tr>
      <tr><td>Thẻ nhớ</td><td>MicroSD (tối đa 1 TB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 2 MP, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@30fps, 1080p@30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>Xóa phông, Panorama, Time Lapse, SuperOIS, Night Mode, Slow Motion, Pro, quét tài liệu, siêu độ phân giải...</td></tr>
      <tr><td>Camera trước</td><td>16 MP, chụp đêm, Time Lapse, Panorama, xóa phông</td></tr>
      <tr><td>Màn hình</td><td>6.67" AMOLED, Full HD+ (1080 x 2400), 120Hz, 2000 nits</td></tr>
      <tr><td>Mặt kính</td><td>AGC DT-Star2</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5000 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>67W (có kèm)</td></tr>
      <tr><td>Công nghệ</td><td>Sạc siêu nhanh SuperVOOC, tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>DCI-P3, mở rộng RAM, chống nước IP54</td></tr>
      <tr><td>Âm thanh</td><td>MP3, WAV, FLAC, AAC, OGG, OPUS, APE, Midi, M4A, AMR, WMA</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>WEBM, MP4, MKV, FLV, TS, ASF, AVI, 3GP, WMV</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>4G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi hotspot, Wi-Fi Direct, 802.11 a/b/g/n/ac, Dual-band</td></tr>
      <tr><td>GPS</td><td>GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.0</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C</td></tr>
      <tr><td>Jack tai nghe</td><td>3.5 mm</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung & mặt lưng nhựa</td></tr>
      <tr><td>Kích thước</td><td>162.95 x 75.45 x 7.92 mm</td></tr>
      <tr><td>Khối lượng</td><td>187 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>08/2024</td></tr>
    </tbody>
  </table>
</div>
', N'/Uploads/images/product/vivorealme/3.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(7990000.00 AS Decimal(18, 2)), CAST(6490000.00 AS Decimal(18, 2)), 50, 0, 0, 1, 1, 0, N'Điện thoại realme 12 8GB/256GB', NULL, NULL, 1, 19, NULL, CAST(N'2025-04-12T02:31:52.243' AS DateTime), CAST(N'2025-04-12T02:31:52.243' AS DateTime), NULL, 0)
INSERT [dbo].[tb_Product] ([Id], [Title], [Alias], [ProductCode], [Description], [Detail], [Image], [OriginalPrice], [Price], [PriceScale], [Quantity], [ViewCount], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [SeoKeywords], [IsActive], [ProductCategoryId], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy], [StarRating]) VALUES (1099, N'Điện thoại realme 13+ 5G 12GB/256GB', N'dien-thoai-realme-13-5g-12gb256gb', N'RE00002', N'Điện thoại realme 13+ 5G (12GB/256GB) là một lựa chọn nổi bật trong phân khúc tầm trung, kết hợp giữa thiết kế hiện đại, hiệu năng mạnh mẽ và khả năng chụp ảnh ấn tượng.​', N'<div style="font-family: Arial, sans-serif; max-width: 900px; margin: auto; background: #fff; padding: 30px; border: 1px solid #ddd; border-radius: 10px; color: #333;">
  <h2 style="color: #0a84ff; text-align: center; margin-bottom: 30px;">realme 13+ 5G 12GB/256GB – Cấu hình chi tiết</h2>

  <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Cấu hình & Bộ nhớ</th></tr></thead>
    <tbody>
      <tr><td>Hệ điều hành</td><td>Android 14</td></tr>
      <tr><td>Chip xử lý (CPU)</td><td>MediaTek Dimensity 7300 Energy 5G 8 nhân</td></tr>
      <tr><td>Tốc độ CPU</td><td>2.5 GHz</td></tr>
      <tr><td>GPU</td><td>Mali-G615</td></tr>
      <tr><td>RAM</td><td>12 GB</td></tr>
      <tr><td>Dung lượng lưu trữ</td><td>256 GB (khả dụng ~227 GB)</td></tr>
      <tr><td>Thẻ nhớ</td><td>MicroSD (tối đa 2 TB)</td></tr>
      <tr><td>Danh bạ</td><td>Không giới hạn</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Camera & Màn hình</th></tr></thead>
    <tbody>
      <tr><td>Camera sau</td><td>Chính 50 MP & Phụ 2 MP, Flicker, Flash: Có</td></tr>
      <tr><td>Quay phim</td><td>720p@60/30/240/120fps, 1080p@60/30/120fps, 4K@30fps</td></tr>
      <tr><td>Tính năng camera sau</td><td>Night Mode, Pro, Slow Motion, Panorama, HDR, Tilt-shift, quét tài liệu, quay video hiển thị kép, OIS, Google Lens...</td></tr>
      <tr><td>Camera trước</td><td>16 MP, Time Lapse, Panorama, xóa phông, chụp đêm, quay kép</td></tr>
      <tr><td>Màn hình</td><td>6.67" OLED, Full HD+ (1080 x 2400), 120Hz, 2000 nits</td></tr>
      <tr><td>Mặt kính</td><td>AGC DT-Star2</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Pin & Sạc</th></tr></thead>
    <tbody>
      <tr><td>Dung lượng pin</td><td>5000 mAh</td></tr>
      <tr><td>Loại pin</td><td>Li-Po</td></tr>
      <tr><td>Sạc tối đa</td><td>80W (có kèm)</td></tr>
      <tr><td>Công nghệ</td><td>Sạc nhanh, tiết kiệm pin</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Tiện ích</th></tr></thead>
    <tbody>
      <tr><td>Bảo mật</td><td>Vân tay dưới màn hình, nhận diện khuôn mặt</td></tr>
      <tr><td>Tính năng nổi bật</td><td>Mở rộng RAM, chống nước IP65</td></tr>
      <tr><td>Âm thanh</td><td>MP3, WAV, FLAC, AAC, WMA, OGG, APE, M4A, MP2</td></tr>
      <tr><td>Ghi âm</td><td>Ghi âm mặc định, ghi âm cuộc gọi</td></tr>
      <tr><td>Xem phim</td><td>MP4, MKV, MOV, FLV, AVI, WEBM, TS, 3GP, ASF, WMV</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Kết nối</th></tr></thead>
    <tbody>
      <tr><td>Mạng</td><td>5G</td></tr>
      <tr><td>SIM</td><td>2 Nano SIM</td></tr>
      <tr><td>Wi-Fi</td><td>Wi-Fi hotspot, 802.11 a/b/g/n, Wi-Fi 6/5, Dual-band</td></tr>
      <tr><td>GPS</td><td>NavIC, QZSS, GPS, GLONASS, GALILEO, BEIDOU</td></tr>
      <tr><td>Bluetooth</td><td>v5.4</td></tr>
      <tr><td>Cổng sạc</td><td>Type-C</td></tr>
      <tr><td>Jack tai nghe</td><td>3.5 mm</td></tr>
      <tr><td>Kết nối khác</td><td>OTG, NFC</td></tr>
    </tbody>

    <thead><tr style="background-color: #f2f2f2;"><th colspan="2" style="padding: 12px; text-align: left; font-size: 17px;">Thiết kế & Chất liệu</th></tr></thead>
    <tbody>
      <tr><td>Thiết kế</td><td>Nguyên khối</td></tr>
      <tr><td>Chất liệu</td><td>Khung & mặt lưng nhựa</td></tr>
      <tr><td>Kích thước</td><td>161.7 x 74.7 x 7.6 mm</td></tr>
      <tr><td>Khối lượng</td><td>185 g</td></tr>
      <tr><td>Thời điểm ra mắt</td><td>11/2024</td></tr>
    </tbody>
  </table>
</div>', N'/Uploads/images/product/vivorealme/44.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(9999000.00 AS Decimal(18, 2)), CAST(7990000.00 AS Decimal(18, 2)), 50, 0, 0, 1, 1, 1, N'Điện thoại realme 13+ 5G 12GB/256GB', NULL, NULL, 1, 19, NULL, CAST(N'2025-04-12T02:33:06.527' AS DateTime), CAST(N'2025-04-12T02:33:06.527' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (14, N'Iphone', N'iphone', NULL, N'/Uploads/images/productcategory_images/1.png', NULL, NULL, NULL, NULL, CAST(N'2025-04-12T01:16:56.427' AS DateTime), CAST(N'2025-04-12T01:16:56.427' AS DateTime), NULL)
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (15, N'Samsung', N'samsung', NULL, N'/Uploads/images/productcategory_images/samsung.jpg', NULL, NULL, NULL, NULL, CAST(N'2025-04-12T01:17:42.410' AS DateTime), CAST(N'2025-04-12T01:17:42.410' AS DateTime), NULL)
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (16, N'Xiaomi', N'xiaomi', NULL, N'/Uploads/images/productcategory_images/xiaomi.jpg', NULL, NULL, NULL, NULL, CAST(N'2025-04-12T01:17:58.060' AS DateTime), CAST(N'2025-04-12T01:17:58.060' AS DateTime), NULL)
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (17, N'Oppo', N'oppo', NULL, N'/Uploads/images/productcategory_images/oppo.png', NULL, NULL, NULL, NULL, CAST(N'2025-04-12T01:18:12.727' AS DateTime), CAST(N'2025-04-12T01:18:12.727' AS DateTime), NULL)
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (18, N'Vivo', N'vivo', NULL, N'/Uploads/images/productcategory_images/vivo.png', NULL, NULL, NULL, NULL, CAST(N'2025-04-12T01:18:49.280' AS DateTime), CAST(N'2025-04-12T01:18:49.280' AS DateTime), NULL)
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Alias], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [ModifiedBy]) VALUES (19, N'Realme', N'realme', NULL, N'/Uploads/images/productcategory_images/realme.jpg', NULL, NULL, NULL, NULL, CAST(N'2025-04-12T01:19:06.243' AS DateTime), CAST(N'2025-04-12T01:19:06.243' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductImage] ON 

INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3215, 1079, N'/Uploads/images/product/iphone/1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3216, 1079, N'/Uploads/images/product/iphone/11.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3217, 1079, N'/Uploads/images/product/iphone/111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3218, 1079, N'/Uploads/images/product/iphone/1111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3219, 1080, N'/Uploads/images/product/iphone/2.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3220, 1080, N'/Uploads/images/product/iphone/22.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3221, 1080, N'/Uploads/images/product/iphone/222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3222, 1080, N'/Uploads/images/product/iphone/2222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3223, 1081, N'/Uploads/images/product/iphone/3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3224, 1081, N'/Uploads/images/product/iphone/33.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3225, 1081, N'/Uploads/images/product/iphone/333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3226, 1081, N'/Uploads/images/product/iphone/3333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3227, 1082, N'/Uploads/images/product/iphone/4.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3228, 1082, N'/Uploads/images/product/iphone/44.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3229, 1082, N'/Uploads/images/product/iphone/444.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3230, 1082, N'/Uploads/images/product/iphone/4444.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3231, 1083, N'/Uploads/images/product/iphone/5.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3232, 1083, N'/Uploads/images/product/iphone/55.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3233, 1083, N'/Uploads/images/product/iphone/555.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3234, 1084, N'/Uploads/images/product/samsung/1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3235, 1084, N'/Uploads/images/product/samsung/11.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3236, 1084, N'/Uploads/images/product/samsung/111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3237, 1084, N'/Uploads/images/product/samsung/1111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3238, 1085, N'/Uploads/images/product/samsung/2.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3239, 1085, N'/Uploads/images/product/samsung/22.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3240, 1085, N'/Uploads/images/product/samsung/222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3241, 1086, N'/Uploads/images/product/samsung/3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3242, 1086, N'/Uploads/images/product/samsung/33.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3243, 1086, N'/Uploads/images/product/samsung/3333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3244, 1086, N'/Uploads/images/product/samsung/33333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3245, 1087, N'/Uploads/images/product/samsung/4.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3246, 1087, N'/Uploads/images/product/samsung/44.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3247, 1087, N'/Uploads/images/product/samsung/444.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3248, 1088, N'/Uploads/images/product/samsung/5.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3249, 1088, N'/Uploads/images/product/samsung/55.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3250, 1088, N'/Uploads/images/product/samsung/555.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3251, 1088, N'/Uploads/images/product/samsung/5555.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3252, 1089, N'/Uploads/images/product/oppo/1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3253, 1089, N'/Uploads/images/product/oppo/11.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3254, 1089, N'/Uploads/images/product/oppo/111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3255, 1090, N'/Uploads/images/product/oppo/2.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3256, 1090, N'/Uploads/images/product/oppo/22.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3257, 1090, N'/Uploads/images/product/oppo/222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3258, 1090, N'/Uploads/images/product/oppo/2222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3259, 1091, N'/Uploads/images/product/oppo/3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3260, 1091, N'/Uploads/images/product/oppo/33.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3261, 1091, N'/Uploads/images/product/oppo/333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3262, 1091, N'/Uploads/images/product/oppo/3333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3263, 1092, N'/Uploads/images/product/oppo/4.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3264, 1092, N'/Uploads/images/product/oppo/44.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3265, 1092, N'/Uploads/images/product/oppo/444.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3266, 1092, N'/Uploads/images/product/oppo/4444.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3267, 1093, N'/Uploads/images/product/xiaomi/1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3268, 1093, N'/Uploads/images/product/xiaomi/11.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3269, 1093, N'/Uploads/images/product/xiaomi/111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3270, 1093, N'/Uploads/images/product/xiaomi/1111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3271, 1094, N'/Uploads/images/product/xiaomi/2.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3272, 1094, N'/Uploads/images/product/xiaomi/22.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3273, 1094, N'/Uploads/images/product/xiaomi/222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3274, 1094, N'/Uploads/images/product/xiaomi/2222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3275, 1095, N'/Uploads/images/product/xiaomi/3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3276, 1095, N'/Uploads/images/product/xiaomi/33.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3277, 1095, N'/Uploads/images/product/xiaomi/333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3278, 1095, N'/Uploads/images/product/xiaomi/3333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3279, 1096, N'/Uploads/images/product/vivorealme/1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3280, 1096, N'/Uploads/images/product/vivorealme/11.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3281, 1096, N'/Uploads/images/product/vivorealme/111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3282, 1096, N'/Uploads/images/product/vivorealme/1111.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3283, 1097, N'/Uploads/images/product/vivorealme/2.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3284, 1097, N'/Uploads/images/product/vivorealme/22.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3285, 1097, N'/Uploads/images/product/vivorealme/222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3286, 1097, N'/Uploads/images/product/vivorealme/2222.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3287, 1098, N'/Uploads/images/product/vivorealme/3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3288, 1098, N'/Uploads/images/product/vivorealme/33.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3289, 1098, N'/Uploads/images/product/vivorealme/333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3290, 1098, N'/Uploads/images/product/vivorealme/3333.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3291, 1099, N'/Uploads/images/product/vivorealme/44.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3292, 1099, N'/Uploads/images/product/vivorealme/444.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3293, 1099, N'/Uploads/images/product/vivorealme/4444.jpg', 0)
SET IDENTITY_INSERT [dbo].[tb_ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Subcribe] ON 

INSERT [dbo].[tb_Subcribe] ([Id], [Email], [CreatedDate]) VALUES (1, N'hovinh414@gmail.com', CAST(N'2023-04-06T02:04:15.937' AS DateTime))
INSERT [dbo].[tb_Subcribe] ([Id], [Email], [CreatedDate]) VALUES (2, N'hovinh414@gmail.com', CAST(N'2023-05-16T10:01:57.260' AS DateTime))
INSERT [dbo].[tb_Subcribe] ([Id], [Email], [CreatedDate]) VALUES (3, N'hovinh414@gmail.com', CAST(N'2023-05-16T10:02:04.363' AS DateTime))
INSERT [dbo].[tb_Subcribe] ([Id], [Email], [CreatedDate]) VALUES (1002, N'hoangloc1403@gmail.com', CAST(N'2023-05-22T00:08:00.613' AS DateTime))
INSERT [dbo].[tb_Subcribe] ([Id], [Email], [CreatedDate]) VALUES (1003, N'hoangloc1403@gmail.com', CAST(N'2023-05-22T00:08:35.440' AS DateTime))
INSERT [dbo].[tb_Subcribe] ([Id], [Email], [CreatedDate]) VALUES (1004, N'hovinh414@gmail.com', CAST(N'2023-05-22T00:18:08.883' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Subcribe] OFF
GO
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingDesSeo', NULL, NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingEmail', N'hovinh414@gmail.com', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingHotline', N'09676264683', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingKeySeo', NULL, NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingLogo', N'/Uploads/images/productcategory_images/son11.jpg', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingTitle', N'CosmeticStore', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingTitleSeo', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ThongKes] ON 

INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (1, CAST(N'2023-04-05T23:27:58.240' AS DateTime), 6)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (2, CAST(N'2023-04-06T23:50:17.713' AS DateTime), 17)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (3, CAST(N'2023-04-07T01:25:36.860' AS DateTime), 17)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (1003, CAST(N'2023-04-08T22:55:53.737' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (1004, CAST(N'2023-04-09T22:59:24.610' AS DateTime), 19)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (2004, CAST(N'2023-04-10T02:17:59.917' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (2005, CAST(N'2023-04-10T23:52:33.680' AS DateTime), 8)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (3004, CAST(N'2023-04-11T23:59:26.647' AS DateTime), 11)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (4004, CAST(N'2023-04-12T20:52:28.840' AS DateTime), 23)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (5004, CAST(N'2023-04-13T12:10:33.053' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (6004, CAST(N'2023-04-14T03:00:39.390' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (6005, CAST(N'2023-04-14T23:38:09.967' AS DateTime), 54)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (7004, CAST(N'2023-04-15T00:38:32.050' AS DateTime), 4)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (7005, CAST(N'2023-04-16T00:22:01.137' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (8005, CAST(N'2023-04-17T12:51:44.187' AS DateTime), 5)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (9005, CAST(N'2023-04-19T23:57:22.203' AS DateTime), 82)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (10005, CAST(N'2023-04-20T10:56:47.640' AS DateTime), 24)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (10006, CAST(N'2023-04-23T22:55:32.150' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (11006, CAST(N'2023-04-25T07:46:40.010' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (11007, CAST(N'2023-04-25T07:46:40.010' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (11008, CAST(N'2023-04-25T09:53:51.000' AS DateTime), 3)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (12006, CAST(N'2023-04-27T23:40:42.497' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (13006, CAST(N'2023-04-29T15:58:05.923' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (14006, CAST(N'2023-04-30T23:18:05.980' AS DateTime), 3)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (14007, CAST(N'2023-05-01T14:24:46.453' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (15007, CAST(N'2023-05-02T14:17:21.137' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (15008, CAST(N'2023-05-02T14:17:21.137' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (15009, CAST(N'2023-05-02T14:17:22.323' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (16007, CAST(N'2023-05-04T16:20:41.550' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (17007, CAST(N'2023-05-06T10:49:43.433' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (17008, CAST(N'2023-05-06T10:49:43.433' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (17009, CAST(N'2023-05-06T11:04:23.773' AS DateTime), 4)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (18007, CAST(N'2023-05-08T14:32:25.710' AS DateTime), 6)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (18008, CAST(N'2023-05-09T07:42:59.900' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (19008, CAST(N'2023-05-11T10:59:04.277' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (20008, CAST(N'2023-05-13T22:04:32.560' AS DateTime), 17)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (21008, CAST(N'2023-05-14T08:05:46.223' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (21009, CAST(N'2023-05-16T08:05:21.300' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (21010, CAST(N'2023-05-16T16:04:24.953' AS DateTime), 9)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (22009, CAST(N'2023-05-17T18:22:58.530' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (23009, CAST(N'2023-05-18T13:36:55.480' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (23010, CAST(N'2023-05-18T13:36:55.480' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (24009, CAST(N'2023-05-20T10:45:23.463' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (25009, CAST(N'2023-05-22T00:31:29.880' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (26009, CAST(N'2023-05-23T08:18:22.840' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (26010, CAST(N'2023-05-25T22:03:58.230' AS DateTime), 14)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (27010, CAST(N'2023-05-28T23:30:44.690' AS DateTime), 5)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (28010, CAST(N'2023-05-31T23:19:26.917' AS DateTime), 23)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (29010, CAST(N'2023-06-01T16:06:09.387' AS DateTime), 31)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (30010, CAST(N'2023-06-03T10:49:40.903' AS DateTime), 6)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (31010, CAST(N'2023-06-06T23:30:20.510' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (32010, CAST(N'2023-06-09T23:12:10.677' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (32011, CAST(N'2023-06-10T11:29:20.073' AS DateTime), 3)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (33010, CAST(N'2023-06-11T02:32:05.700' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (33011, CAST(N'2023-06-12T23:52:23.940' AS DateTime), 6)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (33012, CAST(N'2023-06-16T00:44:35.193' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (33013, CAST(N'2023-06-16T00:44:35.193' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (33014, CAST(N'2023-06-17T11:23:51.120' AS DateTime), 4)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (34014, CAST(N'2023-06-18T23:45:35.197' AS DateTime), 61)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (35014, CAST(N'2023-06-19T02:01:54.377' AS DateTime), 15)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (35015, CAST(N'2024-09-07T15:18:56.970' AS DateTime), 10)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (35016, CAST(N'2024-09-08T00:12:00.740' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (36015, CAST(N'2024-09-13T17:23:18.427' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (36016, CAST(N'2024-09-13T17:56:24.757' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (37015, CAST(N'2024-09-24T13:26:44.070' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (37016, CAST(N'2024-09-25T19:43:17.127' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (37017, CAST(N'2024-09-25T20:04:56.943' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (37018, CAST(N'2024-09-27T14:02:04.657' AS DateTime), 4)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (38018, CAST(N'2024-09-29T22:06:04.470' AS DateTime), 4)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (38019, CAST(N'2024-09-30T22:41:10.757' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (38020, CAST(N'2024-10-08T22:31:49.943' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (39020, CAST(N'2024-10-11T19:58:36.827' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (40020, CAST(N'2024-10-22T00:58:39.740' AS DateTime), 2)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (41020, CAST(N'2024-11-11T22:18:03.360' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (42020, CAST(N'2024-12-02T01:21:53.060' AS DateTime), 3)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (43020, CAST(N'2024-12-11T11:05:58.890' AS DateTime), 3)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (43021, CAST(N'2025-01-06T12:26:42.970' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (43022, CAST(N'2025-01-06T23:25:35.930' AS DateTime), 6)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (43023, CAST(N'2025-01-07T23:32:25.937' AS DateTime), 10)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (44023, CAST(N'2025-01-09T18:21:41.023' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (44024, CAST(N'2025-01-10T23:43:23.783' AS DateTime), 15)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (44025, CAST(N'2025-01-11T00:33:41.857' AS DateTime), 1)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (44026, CAST(N'2025-01-11T02:40:39.417' AS DateTime), 3)
INSERT [dbo].[ThongKes] ([Id], [ThoiGian], [SoTruyCap]) VALUES (44027, CAST(N'2025-04-12T01:41:58.897' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[ThongKes] OFF
GO
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded', 146, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2025-04-11', 1, CAST(N'2025-05-11T17:45:52.857' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2025-04-11-17', 1, CAST(N'2025-04-12T17:45:52.857' AS DateTime))
GO
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'CreatedAt', N'2023-06-10T19:21:27.1599306Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'Cron', N'0 0 * * *', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'Job', N'{"Type":"CosmeticsStore.Controllers.ServicesController, CosmeticsStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckCustomerBookingStatus","ParameterTypes":"[]","Arguments":"[]"}', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'LastExecution', N'2025-04-11T17:45:50.6266796Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'LastJobId', N'150042', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'NextExecution', N'2025-04-12T00:00:00.0000000Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'Queue', N'default', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'TimeZoneId', N'UTC', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:ServicesController.CheckCustomerBookingStatus', N'V', N'2', NULL)
GO
SET IDENTITY_INSERT [HangFire].[Job] ON 

INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (150042, 160181, N'Succeeded', N'{"Type":"CosmeticsStore.Controllers.ServicesController, CosmeticsStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckCustomerBookingStatus","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2025-04-11T17:45:50.743' AS DateTime), CAST(N'2025-04-12T17:45:52.863' AS DateTime))
SET IDENTITY_INSERT [HangFire].[Job] OFF
GO
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (150042, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (150042, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (150042, N'RecurringJobId', N'"ServicesController.CheckCustomerBookingStatus"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (150042, N'Time', N'1744393550')
GO
INSERT [HangFire].[Schema] ([Version]) VALUES (9)
GO
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'zinh:17240:e6bc70a7-de62-4b24-a07a-0ddce1da3630', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2025-04-11T18:41:58.698269Z"}', CAST(N'2025-04-11T20:05:00.270' AS DateTime))
GO
INSERT [HangFire].[Set] ([Key], [Score], [Value], [ExpireAt]) VALUES (N'recurring-jobs', 1744416000, N'ServicesController.CheckCustomerBookingStatus', NULL)
GO
SET IDENTITY_INSERT [HangFire].[State] ON 

INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (160179, 150042, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2025-04-11T17:45:50.767' AS DateTime), N'{"EnqueuedAt":"2025-04-11T17:45:50.7586809Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (160180, 150042, N'Processing', NULL, CAST(N'2025-04-11T17:45:50.887' AS DateTime), N'{"StartedAt":"2025-04-11T17:45:50.8266799Z","ServerId":"zinh:18684:7c650aca-d0bc-4bc6-97ad-87e9a29566f9","WorkerId":"7770149f-86ae-4cb1-b678-24de76d464bb"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (160181, 150042, N'Succeeded', NULL, CAST(N'2025-04-11T17:45:52.863' AS DateTime), N'{"SucceededAt":"2025-04-11T17:45:52.8559551Z","PerformanceDuration":"1965","Latency":"147"}')
SET IDENTITY_INSERT [HangFire].[State] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserID]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[tb_AddressBook]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[tb_New]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderId] ON [dbo].[tb_OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[tb_OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[tb_Posts]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductCategoryId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductCategoryId] ON [dbo].[tb_Product]
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[tb_ProductImage]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_AggregatedCounter_ExpireAt]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_AggregatedCounter_ExpireAt] ON [HangFire].[AggregatedCounter]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE([StateName]) 
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)
WHERE ([StateName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Server_LastHeartbeat]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Server_LastHeartbeat] ON [HangFire].[Server]
(
	[LastHeartbeat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Set_Score]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Score] ON [HangFire].[Set]
(
	[Key] ASC,
	[Score] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_State_CreatedAt]    Script Date: 4/12/2025 11:09:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_State_CreatedAt] ON [HangFire].[State]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [IsBanned]
GO
ALTER TABLE [dbo].[tb_Product] ADD  DEFAULT ((0)) FOR [StarRating]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tb_AddressBook]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_AddressBook_dbo.AspNetUsers_User_Id] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tb_AddressBook] CHECK CONSTRAINT [FK_dbo.tb_AddressBook_dbo.AspNetUsers_User_Id]
GO
ALTER TABLE [dbo].[tb_New]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_New_dbo.tb_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tb_Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_New] CHECK CONSTRAINT [FK_dbo.tb_New_dbo.tb_Category_CategoryId]
GO
ALTER TABLE [dbo].[tb_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_OrderDetails_dbo.tb_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tb_Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetails] CHECK CONSTRAINT [FK_dbo.tb_OrderDetails_dbo.tb_Order_OrderId]
GO
ALTER TABLE [dbo].[tb_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_OrderDetails_dbo.tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetails] CHECK CONSTRAINT [FK_dbo.tb_OrderDetails_dbo.tb_Product_ProductId]
GO
ALTER TABLE [dbo].[tb_Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_Posts_dbo.tb_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tb_Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Posts] CHECK CONSTRAINT [FK_dbo.tb_Posts_dbo.tb_Category_CategoryId]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_Product_dbo.tb_ProductCategory_ProductCategoryId] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[tb_ProductCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_dbo.tb_Product_dbo.tb_ProductCategory_ProductCategoryId]
GO
ALTER TABLE [dbo].[tb_ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_ProductImage_dbo.tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_ProductImage] CHECK CONSTRAINT [FK_dbo.tb_ProductImage_dbo.tb_Product_ProductId]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKe]    Script Date: 4/12/2025 11:09:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_ThongKe]
as
BEGIN
	DECLARE @SoTruyCapGanNhat int
	DECLARE @Count int
	SELECT @Count=COUNT(*) FROM ThongKes
	IF @Count IS NULL SET @Count=0
	IF @Count=0
		INSERT INTO ThongKes(ThoiGian,SoTruyCap)
		Values(GETDATE(),1)
	ELSE
		BEGIN
			DECLARE @ThoiGianGanNhat datetime
			SELECT @SoTruyCapGanNhat=tk.SoTruyCap,@ThoiGianGanNhat=tk.ThoiGian FROM ThongKes tk
			WHERE tk.id=(SELECT MAX(tk1.Id) FROM ThongKes tk1)
			IF @SoTruyCapGanNhat IS NULL SET @SoTruyCapGanNhat=0
			IF @ThoiGianGanNhat IS NULL SET @ThoiGianGanNhat=GETDATE()
			--Nếu chuyển sang ngày  mới chưa (sau 12h đêm)
			-- nếu chưa chuyển sang ngày mới thì update
			IF DAY(@ThoiGianGanNhat)=DAY(GETDATE())
				BEGIN
					UPDATE ThongKes
					SET 
					SoTruyCap=@SoTruyCapGanNhat+1,
					ThoiGian=GETDATE()
					WHERE Id=(SELECT MAX(tk1.Id) FROM ThongKes tk1)
				END
			-- Nếu đã sang ngày mới rồi thì chúng thêm 1 bản ghi mới
			ELSE
				INSERT INTO ThongKes(ThoiGian,SoTruyCap)
				Values(GETDATE(),1)
		END

			-- Thống kê Hom nay, Hom qua, Tuan nay, Tuan Truoc, Thang nay, Thang Truoc
		DECLARE @HomNay int
		SET @HomNay=DATEPART(DW,GETDATE());
		SELECT @SoTruyCapGanNhat=SoTruyCap,@ThoiGianGanNhat=ThoiGian FROM ThongKes 
		WHERE Id=(SELECT MAX(Id) FROM ThongKes)

		--so truy cap ngay hqua
		DECLARE @TruyCapHomQua bigint
		SELECT @TruyCapHomQua=ISNULL(SoTruyCap,0) FROM Thongkes 
		Where CONVERT(nvarchar(20),ThoiGian,103)=CONVERT(nvarchar(20),GETDATE()-1,103)
		IF @TruyCapHomQua IS NULL SET @TruyCapHomQua=0

		--truy cap dau tuan này
		DECLARE @DauTuanNay datetime
		SET @DauTuanNay= DATEADD(wk, DATEDIFF(wk, 6, GetDate()), 6)
		-- Tính Ngày đầu của tuần trước Tính từ thời điểm 00:00:))
		DECLARE @NgayDauTuanTruoc datetime
		SET @NgayDauTuanTruoc = Cast(CONVERT(nvarchar(30),DATEADD(dd, -(@HomNay+6), GetDate()),101) AS datetime)
		-- Tính ngày cuối tuần trước tính đến 24h ngày cuối tuần 
		DECLARE @NgayCuoiTuanTruoc datetime
		SET @NgayCuoiTuanTruoc = Cast(CONVERT(nvarchar(30),DATEADD(dd, -@HomNay, GetDate()),101) +' 23:59:59' AS datetime)

		-- so truy cap tuan nay
		DECLARE @TruyCapTuanNay bigint
		SELECT @TruyCapTuanNay=ISNULL(sum(SoTruyCap),0) FROM ThongKes
		Where ThoiGian BETWEEN @DauTuanNay AND GETDATE()

		-- Tính số truy cập tuần trước
		DECLARE @SoLanTruyCapTuanTruoc bigint
		SELECT @SoLanTruyCapTuanTruoc=isnull(sum(SoTruyCap),0)  FROM ThongKes ttk 
			WHERE ttk.ThoiGian BETWEEN @NgayDauTuanTruoc AND @NgayCuoiTuanTruoc
		
		-- Tính số truy cập tháng này
		DECLARE @SoTruyCapThangNay bigint 
		SELECT @SoTruyCapThangNay=isnull(Sum(SoTruyCap),0)
			FROM ThongKes ttk WHERE MONTH(ttk.ThoiGian)=MONTH(GETDATE())
		
		-- Tính số truy cập tháng trước
		DECLARE @SoTruyCapThangTruoc bigint 
		SELECT @SoTruyCapThangTruoc=isnull(Sum(SoTruyCap),0)
			FROM ThongKes ttk WHERE MONTH(ttk.ThoiGian)=MONTH(GETDATE())-1
		
		-- Tính tổng số
		DECLARE @TongSo bigint
		SELECT  @TongSo=isnull(Sum(SoTruyCap),0) FROM ThongKes ttk
		
		SELECT @SoTruyCapGanNhat AS HomNay, 
		@TruyCapHomQua AS HomQua,
		@TruyCapTuanNay AS TuanNay, 
		@SoLanTruyCapTuanTruoc AS TuanTruoc, 
		@SoTruyCapThangNay AS ThangNay, 
		@SoTruyCapThangTruoc AS ThangTruoc,
		@TongSo AS TatCa
END
GO
USE [master]
GO
ALTER DATABASE [PhoneStore] SET  READ_WRITE 
GO
