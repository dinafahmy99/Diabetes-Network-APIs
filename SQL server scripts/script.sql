USE [master]
GO
/****** Object:  Database [DiabetesSyst2]    Script Date: 7/1/2020 5:33:17 PM ******/
CREATE DATABASE [DiabetesSyst2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DiabetesSyst2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DiabetesSyst2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DiabetesSyst2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DiabetesSyst2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DiabetesSyst2] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DiabetesSyst2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DiabetesSyst2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET ARITHABORT OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DiabetesSyst2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DiabetesSyst2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DiabetesSyst2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DiabetesSyst2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET RECOVERY FULL 
GO
ALTER DATABASE [DiabetesSyst2] SET  MULTI_USER 
GO
ALTER DATABASE [DiabetesSyst2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DiabetesSyst2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DiabetesSyst2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DiabetesSyst2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DiabetesSyst2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DiabetesSyst2', N'ON'
GO
ALTER DATABASE [DiabetesSyst2] SET QUERY_STORE = OFF
GO
USE [DiabetesSyst2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DiabetesSyst2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Answers]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NULL,
	[Answer] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Certificates]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Certificate] [nvarchar](50) NOT NULL,
	[University] [nvarchar](50) NOT NULL,
	[DoctorID] [int] NOT NULL,
 CONSTRAINT [PK_Certificates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chat]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[UserID] [int] NOT NULL,
	[ChatID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ChatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChecksUps]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChecksUps](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CheckupType] [smallint] NOT NULL,
	[Notes] [nvarchar](100) NULL,
	[Date] [datetime] NOT NULL,
	[ResultData] [nvarchar](max) NULL,
	[Status] [smallint] NULL,
	[PatientID] [int] NULL,
 CONSTRAINT [PK_ChecksUps] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[PostID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorID] [int] NOT NULL,
	[Address] [nvarchar](50) NULL,
	[ValidationStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Drug_Patient]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drug_Patient](
	[DrugID] [int] NOT NULL,
	[PatientID] [int] NOT NULL,
	[Note] [nvarchar](50) NULL,
	[Dosage] [int] NULL,
 CONSTRAINT [PK_Drug_Patient] PRIMARY KEY CLUSTERED 
(
	[DrugID] ASC,
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Drugs]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drugs](
	[DrugID] [int] IDENTITY(1,1) NOT NULL,
	[DrugName] [nvarchar](50) NULL,
	[ImageSource] [nvarchar](50) NULL,
	[DosageType] [nchar](10) NULL,
 CONSTRAINT [PK_Drugs] PRIMARY KEY CLUSTERED 
(
	[DrugID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Msg]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Msg](
	[MsgID] [int] IDENTITY(1,1) NOT NULL,
	[ChatID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[MsgContent] [nvarchar](max) NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Msg] PRIMARY KEY CLUSTERED 
(
	[MsgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[NotificationContent] [nvarchar](50) NULL,
	[Type] [smallint] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification_Answer]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification_Answer](
	[NotificationID] [int] NOT NULL,
	[AnswerID] [int] NOT NULL,
 CONSTRAINT [PK_Notification_Answer_1] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification_Asked]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification_Asked](
	[NotificationID] [int] NOT NULL,
	[MentionID] [int] NOT NULL,
 CONSTRAINT [PK_Notification_Asked_1] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification_Follow]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification_Follow](
	[NotificationID] [int] NOT NULL,
	[FollowID] [int] NOT NULL,
 CONSTRAINT [PK_Notification_Follow_1] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification_MedicalInfo]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification_MedicalInfo](
	[NotificationID] [int] NOT NULL,
	[MedicalInfoID] [int] NOT NULL,
 CONSTRAINT [PK_Notification_MedicalInfo_1] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patient]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [int] NOT NULL,
	[BirthDate] [datetime] NULL,
	[Gender] [char](1) NULL,
	[MedicalCondetion] [smallint] NULL,
	[Weight] [smallint] NULL,
	[height] [smallint] NULL,
	[LifeStyle] [smallint] NULL,
	[Points] [smallint] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patient_Doctors(follow)]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Doctors(follow)](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PatienID] [int] NULL,
	[DoctorID] [int] NULL,
	[Access_MedicalInfo] [smallint] NOT NULL,
 CONSTRAINT [PK_Patient_Doctors(follow)] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ImageSource] [nvarchar](50) NULL,
	[PostContent] [nvarchar](max) NULL,
	[ReactionID] [int] NULL,
	[PostDate] [datetime] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question_Doctors(Mention)]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question_Doctors(Mention)](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NOT NULL,
	[Status] [bit] NULL,
	[DoctorID] [int] NOT NULL,
 CONSTRAINT [PK_Question_Doctors(Mention)] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Question] [nvarchar](50) NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reactions]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reactions](
	[ReactionID] [int] IDENTITY(1,1) NOT NULL,
	[ReactionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Reactions] PRIMARY KEY CLUSTERED 
(
	[ReactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Result] [nchar](10) NULL,
	[Type] [smallint] NULL,
	[PatientID] [int] NULL,
	[Medication] [bit] NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_SavedPosts]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_SavedPosts](
	[UserID] [int] NOT NULL,
	[PostID] [int] NOT NULL,
 CONSTRAINT [PK_User_SavedPosts] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_SavedQuestion]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_SavedQuestion](
	[QuestionID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_User_SavedQuestion] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[ImageSource] [nvarchar](max) NULL,
	[Type] [bit] NULL,
	[ID] [nvarchar](450) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200517014217_v1', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200517021633_v2', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200517151343_v3', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200517151710_v4', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200525195025_v6', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200528210321_typechange', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200605201326_v9', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200605202406_v9', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200605203052_v10', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200605203253_v11', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200605203329_v12', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200605203800_v13', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200605203900_v14', N'3.1.4')
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (1, 7, N'7782C8I43ZWS95AOEX9BT4SCUB3L183RVH4S7 28N9C8Q0U4MC7NKW0YQV0U43GV82IUM', CAST(N'2020-04-27T02:02:00.610' AS DateTime), 22)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (2, 28, N'88XI4E5CAG66579F0DLO082DY04B19TQ096W4A', CAST(N'2020-01-20T02:35:52.060' AS DateTime), 1)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (3, 27, N'ZC4918H63E53084IZK5W36SF10M4TKD', CAST(N'2020-01-24T22:05:51.070' AS DateTime), 27)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (4, 45, N'7KB3MW1', CAST(N'2020-03-06T12:03:36.420' AS DateTime), 22)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (5, 1, N'EF897LN7YI2452P541O3FO4423VHZP9YU39YN', CAST(N'2020-01-18T00:01:18.120' AS DateTime), 39)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (6, 28, N'393JM7E1D2C', CAST(N'2020-02-15T04:04:55.090' AS DateTime), 30)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (7, 21, N'2X0MP2V9LF89T7J99O5URS798EPL4', CAST(N'2020-04-16T12:26:02.650' AS DateTime), 46)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (8, 23, N'363695B1', CAST(N'2020-02-27T12:48:52.090' AS DateTime), 38)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (9, 42, N'V7IO5900504WTO14K2BMFA19V23Z8WKM2Y0GRPI32O53IPM4L53F0', CAST(N'2020-03-08T11:38:07.640' AS DateTime), 17)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (10, 11, N'5ZVNGS01658Y04R068W1A', CAST(N'2020-03-18T02:12:02.680' AS DateTime), 46)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (11, 4, N'5DHY82946YL3C2X5UW6V', CAST(N'2020-04-13T23:41:49.200' AS DateTime), 48)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (12, 37, N'72KS4Q0FA2858BDIZ', CAST(N'2020-03-22T15:17:52.780' AS DateTime), 16)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (13, 8, N'M06BBVG9531199YU0I076CS3Z1415A7F2701W2RUOW87TJ6HKE032F2GN8Y9F9', CAST(N'2020-04-02T05:31:08.640' AS DateTime), 3)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (14, 21, N'47BWRVNT', CAST(N'2020-01-19T09:06:54.370' AS DateTime), 10)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (15, 42, N'7PVP3496N3HQZZP462', CAST(N'2020-04-13T11:54:28.160' AS DateTime), 43)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (16, 3, N'3RJJ2S3U5C35S3R33I', CAST(N'2020-02-10T23:04:58.240' AS DateTime), 47)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (17, 5, N'2P756H6QY16A0439Z6ED', CAST(N'2020-01-19T19:48:31.510' AS DateTime), 23)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (18, 24, N'29H873DP1CYIAF5B7BD0GP07783BK1CE1RBG1V2M90X', CAST(N'2020-02-05T05:37:03.910' AS DateTime), 8)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (19, 33, N'6DFWS33WCJ9V07R5DAD87DDE9NA1732N E0Y88V6FDT8I44N4N71TL647OEYRCB775K170', CAST(N'2020-02-23T05:08:00.400' AS DateTime), 32)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (20, 33, N'K3', CAST(N'2020-03-26T11:01:11.070' AS DateTime), 45)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (21, 4, N'TR4G21Q24FOANIJM', CAST(N'2020-04-19T18:58:08.710' AS DateTime), 1)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (22, 32, N'WF0BI0326G650D3', CAST(N'2020-03-31T21:28:57.580' AS DateTime), 36)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (23, 22, N'A389B0Q2KN60', CAST(N'2020-05-08T13:51:09.450' AS DateTime), 8)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (24, 23, N'25V25I04SEYE29W383V', CAST(N'2020-03-18T07:48:16.840' AS DateTime), 12)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (25, 47, N'614Q1', CAST(N'2020-05-07T03:42:37.580' AS DateTime), 24)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (26, 13, N'95RFK0U5PU6QN3OC3MN289MU', CAST(N'2020-03-06T01:28:01.850' AS DateTime), 27)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (27, 41, N'67J163', CAST(N'2020-01-28T08:16:04.680' AS DateTime), 34)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (28, 40, N'83264MQ3', CAST(N'2020-05-01T05:22:30.940' AS DateTime), 15)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (29, 37, N'X7D3', CAST(N'2020-04-23T00:24:41.140' AS DateTime), 12)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (30, 47, N'UC47JJ13R275MQ3719GB', CAST(N'2020-02-11T18:32:43.320' AS DateTime), 21)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (31, 13, N'FVVYD', CAST(N'2020-05-08T01:39:34.330' AS DateTime), 2)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (32, 46, N'8QW2ZQ', CAST(N'2020-01-06T20:12:34.980' AS DateTime), 44)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (33, 19, N'4HC83N05R4W992A5369X2CA36L02M', CAST(N'2020-01-20T23:45:27.540' AS DateTime), 17)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (34, 28, N'RT36HEN808NAN', CAST(N'2020-04-24T03:19:30.410' AS DateTime), 9)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (35, 19, N'S9AYA1WZ3DD2F135A1R431XY', CAST(N'2020-02-23T04:40:39.190' AS DateTime), 7)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (36, 19, N'1247EC', CAST(N'2020-03-08T15:26:18.000' AS DateTime), 34)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (37, 4, N'0IG1Z', CAST(N'2020-03-13T07:32:37.040' AS DateTime), 44)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (38, 20, N'41Y15C58P70PH816589', CAST(N'2020-02-01T18:41:01.730' AS DateTime), 40)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (39, 43, N'92G60OMU7955W4K3MS2OVF80H7ZBD300715BD4Y744Z4M36O07TEXD4160', CAST(N'2020-02-01T05:19:42.130' AS DateTime), 6)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (40, 1, N'OPOL39VC4D272J57CF4RN9ND5CGRL218 P85XZG7D2X95X4YY0L267H7FTZB68T893828YJSCJ2HA857NE07', CAST(N'2020-02-17T14:38:38.090' AS DateTime), 34)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (41, 20, N'VJFF69FK119ZE38H5NWPSQBFF7TF2SHQNX092YA3V', CAST(N'2020-03-22T00:40:49.250' AS DateTime), 25)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (42, 17, N'SENY2', CAST(N'2020-02-05T18:34:42.260' AS DateTime), 14)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (43, 12, N'9IB8J711G', CAST(N'2020-02-01T15:41:17.020' AS DateTime), 9)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (44, 15, N'7', CAST(N'2020-01-13T21:48:06.840' AS DateTime), 50)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (45, 4, N'26X1Y1GKG4164A31ASA8CZL7V', CAST(N'2020-03-20T18:25:44.580' AS DateTime), 3)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (46, 47, N'7L20VIIE', CAST(N'2020-05-02T03:09:55.570' AS DateTime), 35)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (47, 8, N'K916J324DRFBU5SM9', CAST(N'2020-03-08T04:22:10.210' AS DateTime), 47)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (48, 48, N'2976P', CAST(N'2020-01-25T22:32:17.250' AS DateTime), 47)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (49, 2, N'YSLUQ7O38FFSDVH2KQBXWPBZ97W6I02', CAST(N'2020-01-08T14:32:27.510' AS DateTime), 8)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (50, 17, N'6MO5LAV6KA4MLRD2N87U5EJ5G9DT', CAST(N'2020-01-06T22:14:51.660' AS DateTime), 25)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (51, 1, N'dssd', CAST(N'2020-05-25T20:25:54.537' AS DateTime), 1)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (52, 2, N'sadadasd', CAST(N'2020-05-25T20:27:32.120' AS DateTime), 1)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (53, 2, N'this is my answer', CAST(N'2020-05-31T02:44:58.143' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (54, 2, N'this is my answer', CAST(N'2020-05-31T02:46:11.917' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (55, 3, N'this is my answer', CAST(N'2020-05-31T02:52:21.897' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (56, 4, N'this is my answer', CAST(N'2020-05-31T02:52:28.153' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (57, 5, N'this is my answer', CAST(N'2020-05-31T02:52:31.840' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (58, 2, N'this is my answer', CAST(N'2020-05-31T14:28:26.493' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (59, 5, N'answer', CAST(N'2020-06-09T02:02:23.070' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (60, 5, N'new Answer', CAST(N'2020-06-09T02:06:06.483' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (61, 5, N'aaaa', CAST(N'2020-06-09T02:08:39.643' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (62, 5, N'qqqq', CAST(N'2020-06-09T02:11:05.473' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (63, 5, N'1515', CAST(N'2020-06-09T02:11:53.770' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (64, 5, N'asdas', CAST(N'2020-06-09T02:13:28.733' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (65, 5, N'sda', CAST(N'2020-06-09T02:14:07.803' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (66, 5, N'dasd', CAST(N'2020-06-09T02:17:03.033' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (67, 11, N'das', CAST(N'2020-06-09T02:20:45.987' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (68, 11, N'dasd', CAST(N'2020-06-09T02:21:22.613' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (69, 11, N'dasddasd', CAST(N'2020-06-09T02:21:25.497' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (70, 11, N'dasddasd', CAST(N'2020-06-09T02:21:27.110' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (71, 11, N'dasddasdasdasd', CAST(N'2020-06-09T02:21:29.110' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (72, 11, N'dasdasdd', CAST(N'2020-06-09T02:21:32.270' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (73, 11, N'sadd', CAST(N'2020-06-09T02:28:15.503' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (74, 11, N'asdasd', CAST(N'2020-06-09T02:28:19.617' AS DateTime), 1063)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (75, 1, N'dasdadas', CAST(N'2020-06-09T23:19:40.123' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (76, 1, N'ashujhas jhjshajhsj jahsjkhdiuahs jabhsdjklbasvbd jlnjkbjkasbd jkbjkasdhadu jkabsdjkgasd kjabsdjkhaksghdk', CAST(N'2020-06-09T23:39:40.830' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (77, 1, N'asdad', CAST(N'2020-06-10T07:00:06.590' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (78, 1, N'jslkjaskljd', CAST(N'2020-06-10T07:05:00.187' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (79, 1, N'dasdada', CAST(N'2020-06-10T07:05:43.853' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (80, 1, N'dsadsa', CAST(N'2020-06-10T07:06:44.040' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (81, 1, N'new answer', CAST(N'2020-06-10T07:10:26.467' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (82, 1, N'asdasd', CAST(N'2020-06-10T17:38:39.337' AS DateTime), 1057)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (84, 1, N'asdad', CAST(N'2020-06-15T04:22:37.700' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (85, 1, N'sada', CAST(N'2020-06-15T04:22:48.210' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (89, 1, N'FSDFSDFS', CAST(N'2020-06-15T14:28:13.510' AS DateTime), 1053)
INSERT [dbo].[Answers] ([AnswerID], [QuestionID], [Answer], [Date], [UserID]) VALUES (92, 1, N'new', CAST(N'2020-06-16T13:37:39.013' AS DateTime), 1057)
SET IDENTITY_INSERT [dbo].[Answers] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3c6eff44-44ea-4f1b-a804-bea83d182408', N'Patient', N'PATIENT', N'f8822849-7d74-4496-a8a6-db0d5c0e2a24')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'72f8c1e9-264c-431b-87d3-5c8b4697c685', N'Doctor', N'DOCTOR', N'8357a2dc-bdbc-48cc-87d9-081e42c243e7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'04c16122-d14b-4a68-81f5-6cd8f5bcaa08', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'064101a8-a694-4ce0-9354-e18731df2d6a', N'72f8c1e9-264c-431b-87d3-5c8b4697c685')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08797997-bbad-4946-ae94-8fec5d384e17', N'72f8c1e9-264c-431b-87d3-5c8b4697c685')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0c3bf6bd-3687-4b5e-8c46-fc8873097d42', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1f8fde3f-e08d-4e53-877b-edae4fe69226', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'20ea56e9-442b-45c0-aed5-13865bed0b4b', N'72f8c1e9-264c-431b-87d3-5c8b4697c685')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2d87f223-fdad-4253-9a42-949ab5ce1901', N'72f8c1e9-264c-431b-87d3-5c8b4697c685')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'323a015a-bd61-43d1-bb27-0a46133e16d2', N'72f8c1e9-264c-431b-87d3-5c8b4697c685')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80a1ffc6-f784-413d-a35d-16ea26779f82', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'991d4027-848d-4b3b-9d57-36f5ddebe022', N'72f8c1e9-264c-431b-87d3-5c8b4697c685')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9cf88aaa-8582-42b1-b6c6-63a40e23bf77', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd536ea15-a5cd-49e4-83df-aad2f483492a', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e441789e-f198-4c43-bdab-bc2ab36331ae', N'72f8c1e9-264c-431b-87d3-5c8b4697c685')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e57f5c70-583c-4bf6-92ae-eb03f052678b', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eceb9e49-f42a-4747-8655-953647874eb9', N'3c6eff44-44ea-4f1b-a804-bea83d182408')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'00275', N'odnhj3@nowhere.com', NULL, N'odnhj3@nowhere.com', NULL, 0, N'jHV33UKOybWtp7vFfSnPIQ==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'01798', N'DeneseMuniz4@example.com', NULL, N'DeneseMuniz4@example.com', NULL, 1, N'WnFVcYrwlPUbV/qr2PfKeg==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'04311', N'Abigail.Isaacson@example.com', NULL, N'Abigail.Isaacson@example.com', NULL, 1, N'zUQLcEJSNrqG7UIpZ9G0YQ==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'04c16122-d14b-4a68-81f5-6cd8f5bcaa08', N'Ahmdg7', N'AHMDG7', N'Ahmdg7@gmail.com', N'AHMDG7@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJW1jzVX3FEUusfZx8yDHhOoWrDo3I4sL9zAuKON1ow1hWvNJOW5ztYdUIXHT1R6jg==', N'VTKHJDBZ7LSFO4TGOSGOUDWXCUVEEE4P', N'9b1c4e08-4bae-4d5a-96b5-291d711c3bd1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'06177', N'Sherley.Boehm663@example.com', NULL, N'Sherley.Boehm663@example.com', NULL, 1, N'9hoSp0KLUm20J1MLpxlQRQ==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'064101a8-a694-4ce0-9354-e18731df2d6a', N'dinafahmy1182', N'DINAFAHMY1182', N'dinafahmy1182@gmail.com', N'DINAFAHMY1182@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPYLNGvfWdW8+dgM/TRxFZQ3z2IheeZxOR+wX4PwkHSANcyNiWkkwGakZjwc08bFHQ==', N'CWKK5WWJGI6HC3HKJXZ3MDEY7CHAWDQI', N'aab3ddfa-7fca-49d9-ab45-618f95cad0e9', N'235534', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'08797997-bbad-4946-ae94-8fec5d384e17', N'ahdg78', N'AHDG78', N'ahdg78@gmail.com', N'AHDG78@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOGGmA1hMqenKBbXaUDsHyyDYTSqJZ9ZPQS6hTo+F4iCQjUKGJ4Akbm4mHnWu3tRtA==', N'A4KSJI47OLN7OWZGSCL6HFDBTHWVOF6B', N'19c40f51-eb90-4648-861c-3c50626d579e', N'235534', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0c3bf6bd-3687-4b5e-8c46-fc8873097d42', N'DinaF', N'DINAF', N'DinaF@gmail.com', N'DINAF@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAts/OUQ2tpaOqoNxnLOfnFSfgCjkijEzmoycqAaakPhJQSDVp0XC3zKl6xK/I5yKA==', N'C2PTPRJCWQH5JLER43AWGOLO6QRJE3EB', N'0b4c1e75-ea35-48a4-8255-98ffdf15afd7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'10238', N'Roden@example.com', NULL, N'Roden@example.com', NULL, 0, N'H9YkOv75TPDYDgAPrYYOUg==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'12618', N'Ruff14@example.com', NULL, N'Ruff14@example.com', NULL, 0, N'DiWa+oP790EhTOdWhxX5Yw==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'13871', N'Crisp18@nowhere.com', NULL, N'Crisp18@nowhere.com', NULL, 1, N'eQBGcUbXv8M1uagreQ3JvA==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'15077', N'Lemmon996@example.com', NULL, N'Lemmon996@example.com', NULL, 1, N'ejNAKWJcAIhvZ4Q34GhRyw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'15214', N'WillisRoyster66@example.com', NULL, N'WillisRoyster66@example.com', NULL, 0, N'vVDuiEeYewBil+LY5fNvkg==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'16787', N'Gilson@example.com', NULL, N'Gilson@example.com', NULL, 0, N'WoDmEqQhSTIJCDhlAIw6nQ==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1f8fde3f-e08d-4e53-877b-edae4fe69226', N'John', N'JOHN', N'John@gmail.com', N'JOHN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPMydwF2ko1G9bi7IiwbiyrhVQmfbcgV0S26EWMI0p+UzveVIPSzOhYyuoOR69TUwg==', N'ZZKQ2W4HB475NVT6B2NOZW6EQ4LVK6AF', N'e3042539-4101-4a98-b4dd-00c484f8dbab', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'20ea56e9-442b-45c0-aed5-13865bed0b4b', N'ahmdg784', N'AHMDG784', N'ahmdg784@gmail.com', N'AHMDG784@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOs9NiEorEvX8QddAH8/yRSO2bHax6PDPWsw14acVG1gw9T0W3+7IgNOJ2Oz4ra1qg==', N'747QL3TZVHF62VG7UITIPM73ZSOSPCXN', N'adedd620-0c21-4e7e-8f43-c7d31aa13def', N'5151515', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'22307', N'Gaither829@nowhere.com', NULL, N'Gaither829@nowhere.com', NULL, 0, N'YIJVUvGlpiKP4hUr5+bi4Q==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'22314', N'HaroldLedesma@nowhere.com', NULL, N'HaroldLedesma@nowhere.com', NULL, 0, N'uO2FFyd+CFnwgs9LnOnf4A==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'23587', N'Adan.August@example.com', NULL, N'Adan.August@example.com', NULL, 0, N'pzTJTW4EbEZn/qV3WMW29g==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'24269', N'Harrell429@example.com', NULL, N'Harrell429@example.com', NULL, 1, N'wRxbL10lDAJCDYHf/xikcQ==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'29593', N'ElidaGreenfield53@example.com', NULL, N'ElidaGreenfield53@example.com', NULL, 0, N'leRjIaOgMYCkQUlTPIQuew==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2d87f223-fdad-4253-9a42-949ab5ce1901', N'dinafahmy1182', N'DINAFAHMY1182', N'dinafahmy11822@gmail.com', N'DINAFAHMY11822@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECKwf+kSeLpi1cHcXwpCscoYgfmuA5bBHRq6MqCourIfl5cCAxZcrb+ez8f4irlFlw==', N'BAP6AZOHSNOKAA5AVOQCQQIXUDYXX47W', N'ec9563f9-d168-413d-8adc-dd98be898c0f', N'235534', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'323a015a-bd61-43d1-bb27-0a46133e16d2', N'ahmdgff784', N'AHMDGFF784', N'ahmdgff784@gmail.com', N'AHMDGFF784@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAFvU3vtIhGSWrDPf9fX5NYAULDFFut0b9rv9wiK/KcZaAHR7od5XIC2eX4VPjKDiQ==', N'JXZFCIM5IIOWNSHWLXB3ERILUVZLRLRI', N'0ae89a07-29ad-4097-9f77-80a7c3c7ec71', N'235534', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'32630', N'Addison@example.com', NULL, N'Addison@example.com', NULL, 1, N'K+EvIjNGj/emTFxhHwpHIg==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'35375', N'BuckAllman643@example.com', NULL, N'BuckAllman643@example.com', NULL, 1, N'pt9wgZ7i7bGrqQmdvRT4zQ==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'36058', N'crfipqej_kmjfuiub@example.com', NULL, N'crfipqej_kmjfuiub@example.com', NULL, 1, N'etTlMS0N0sn9kCqtRElOog==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'46460', N'Felisha.Alonzo@example.com', NULL, N'Felisha.Alonzo@example.com', NULL, 0, N'To9xXwMw5Hb92kv0Ra1Ihg==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'47306', N'Ambrose_Adcock@example.com', NULL, N'Ambrose_Adcock@example.com', NULL, 0, N'SjKGdlv+Ytq7HO5yJzrD+A==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'49164', N'Dion.Alger@example.com', NULL, N'Dion.Alger@example.com', NULL, 1, N'OP6SGx++s8N0cq/DST1SjA==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'52660', N'ErnestineAleman@example.com', NULL, N'ErnestineAleman@example.com', NULL, 1, N'/pRfdNY6EmwKSD4e9BF63A==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'53107', N'ColeenAngulo327@example.com', NULL, N'ColeenAngulo327@example.com', NULL, 0, N'OtGpfMUzRTpFcF1REvdP0w==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'53981', N'VirginiaRosen@example.com', NULL, N'VirginiaRosen@example.com', NULL, 1, N't80E/+Li0lm7d0VQbtN+Zw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'56450', N'Paquette664@nowhere.com', NULL, N'Paquette664@nowhere.com', NULL, 1, N'Kk8OYEM8jHZOJGkGfSt1Nw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'56716', N'Shanice_Bumgarner9@nowhere.com', NULL, N'Shanice_Bumgarner9@nowhere.com', NULL, 0, N'5uahDeFtERbsyF2BU42juw==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57080', N'qjjvmdzc5602@example.com', NULL, N'qjjvmdzc5602@example.com', NULL, 1, N'3/T+DiQtujQ++ckXczQLDg==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57310', N'Leavitt@nowhere.com', NULL, N'Leavitt@nowhere.com', NULL, 0, N'NL5jrLuHsQjPdVrdOF4Esw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'59171', N'Landon.Shephard1@nowhere.com', NULL, N'Landon.Shephard1@nowhere.com', NULL, 0, N'hz9iLDIVU3ho3w8MUp+rkQ==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'60452', N'HaydenDallas@example.com', NULL, N'HaydenDallas@example.com', NULL, 1, N'BOlfg3QBq/26J5BVW2Y8uQ==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'60589', N'Barela997@example.com', NULL, N'Barela997@example.com', NULL, 1, N'z/aL0MdpAGDRi8rgaXP+ow==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'61914', N'Daren_Patten@example.com', NULL, N'Daren_Patten@example.com', NULL, 1, N'S2/jv2k50gk+8FM2i3ngtg==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'69950', N'NelidaAcosta@example.com', NULL, N'NelidaAcosta@example.com', NULL, 1, N'tV8FwqORplmQhmcIyuYhaw==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'72304', N'pdcw1967@example.com', NULL, N'pdcw1967@example.com', NULL, 0, N'+OuxTJOJYLARCvAdalZK1Q==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'72982', N'ZonaAmaral638@nowhere.com', NULL, N'ZonaAmaral638@nowhere.com', NULL, 1, N'Hcaw9RPv2KSTjJjTFiBABA==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'75065', N'Walton@nowhere.com', NULL, N'Walton@nowhere.com', NULL, 0, N'9BXFw1KjmlI5GJtF4EPdyw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'75928', N'Nicolette_Flores98@nowhere.com', NULL, N'Nicolette_Flores98@nowhere.com', NULL, 0, N'0rhTNjcrFvEC8ouKb/7CDA==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'77812', N'Parrott49@example.com', NULL, N'Parrott49@example.com', NULL, 0, N'ngJknZtEw/Ffx+BmiRlEmw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'80a1ffc6-f784-413d-a35d-16ea26779f82', N'Ahmdg78210', N'AHMDG78210', N'Ahmdg78210@gmail.com', N'AHMDG78210@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFP0r6ABWod+7UXiaFSuIkc0RLfHqcyL9i1MHCs068j4MDwReOPcMXysM51xE/BNUA==', N'WDB5AXO6G4U472JLYNFNEHCX7EU6DGPT', N'd0d2f7ef-5a64-4aba-841e-b572364f6f6e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'81993', N'Amaya@example.com', NULL, N'Amaya@example.com', NULL, 0, N'ktlrp9v4hyLoeGplroB/hw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'82668', N'Collazo@example.com', NULL, N'Collazo@example.com', NULL, 0, N'Uciy22OyF2WpszwdPiW7Kw==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'86018', N'Bert.Gibbs37@example.com', NULL, N'Bert.Gibbs37@example.com', NULL, 1, N'+MSsq1XGpjsIqmCGdwRzFA==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'86314', N'Brianna.Mcgrath@nowhere.com', NULL, N'Brianna.Mcgrath@nowhere.com', NULL, 0, N'eYX+eOzRwiYr446Zf2/gxQ==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'86838', N'DeeannaAbreu59@example.com', NULL, N'DeeannaAbreu59@example.com', NULL, 0, N'3MyiNazWZ5oslDR4GKH5IA==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'88167', N'AlexanderTowns@example.com', NULL, N'AlexanderTowns@example.com', NULL, 1, N'kuTS2j0VKLyfZmi7wm1jPg==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'92715', N'LawerenceYang5@example.com', NULL, N'LawerenceYang5@example.com', NULL, 0, N'D091OD76WGtu2M6FHiGF6Q==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'93075', N'Abney88@nowhere.com', NULL, N'Abney88@nowhere.com', NULL, 0, N'EddoO1ubwiaLfwZUnShEcA==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'94696', N'AustinClinton@example.com', NULL, N'AustinClinton@example.com', NULL, 1, N'400aczUmq4g8ss+Wbl8hdA==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'95246', N'MalcomQBourgeois8@nowhere.com', NULL, N'MalcomQBourgeois8@nowhere.com', NULL, 0, N'PwCQM2vAFVTsJKQyFU97vA==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'96178', N'AuraCrooks@example.com', NULL, N'AuraCrooks@example.com', NULL, 1, N'kdaTnsCWDnOag/iRzaab5A==', NULL, NULL, NULL, 1, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'96491', N'AldaTitus@example.com', NULL, N'AldaTitus@example.com', NULL, 1, N'Bvcnvv0EHmiaCMQWDtY0bQ==', NULL, NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'991d4027-848d-4b3b-9d57-36f5ddebe022', N'gaya444', N'GAYA444', N'gaya444@gmail.com', N'GAYA444@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDoOruWiFK3nuWd3ewROUNME9HHc81q2WARFaLzun/CYBniohf9o31AR56eCC4145Q==', N'PNL73RU6RUT4WP35AKBCDGXXRIMH5ECH', N'c1bc293f-6483-4530-962a-0a80c743e895', N'23455678', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9cf88aaa-8582-42b1-b6c6-63a40e23bf77', N'JohnSsS', N'JOHNSSS', N'JohnSsS@gmail.coms', N'JOHNSSS@GMAIL.COMS', 1, N'AQAAAAEAACcQAAAAENpVl5JeqMk9Phcu5t2WpHBbhPJVpHmIcnrfC8wA/FBjt/PfM1eU6s7iWdLVAghp4g==', N'VB6ZQFKJYWZ4XO5IZKS35DCMUKJ6LWEN', N'9a4e2a16-1ca9-43a7-ae58-f0cec93d9d6b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9f60867d-8c01-41d9-8cf3-18b8b80904c6', N'adfg784', N'ADFG784', N'adfg784@gmail.com', N'ADFG784@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEObXkeOHJtaiKttVb9V9uDO6DCOf1FjxZpeQMxvZI9XeWN7RfXfoVHhrQnKCeJldLg==', N'KSH3EHS3JZJOOUV4PI3BVRLSY5DQA7QL', N'cb657219-2585-47b6-8e2f-e87e21dbe829', N'235534', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd536ea15-a5cd-49e4-83df-aad2f483492a', N'Ahmdg7841', N'AHMDG7841', N'Ahmdg7841@gmail.com', N'AHMDG7841@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELbY8DfVUw01YFoZR+GmTbgDOS6I1+Y9hHN+89V2kBD/va35EjWWLwcOmhqumscVSA==', N'Z5LPRJISJZCKCEPM7YK3ETAHOAUICQZ5', N'e7c02e6e-2272-43e6-9ae5-5894c0b4ce8e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e441789e-f198-4c43-bdab-bc2ab36331ae', N'dinafahmy118', N'DINAFAHMY118', N'dinafahmy118@gmail.com', N'DINAFAHMY118@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELO+9GOOYduhHTFFcbJzT75JBu7dCJ/m3S8+Nr2rKSxJ536jd8SSM25Uj9/nb6aqyA==', N'O7NGQLLQTZQEJ36QY7QSXZXSPZ3G56NS', N'0d2b8cf0-afcb-42d2-a575-388f7dbcf38a', N'235534', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e57f5c70-583c-4bf6-92ae-eb03f052678b', N'JohnSS', N'JOHNSS', N'JohnSS@gmail.com', N'JOHNSS@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAnH4+fMWm669LJIQYB0LjjJh+h1GWFREG1vnw4GfdVUz28W0ywlDcF7POZaqHr7aA==', N'XZTWZVFYD6MW64RW5FA7VFPCK4YTM6GY', N'0b7c242e-438d-4493-baa1-d2d4fa55c188', N'01234556789', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eceb9e49-f42a-4747-8655-953647874eb9', N'Ahmdg78410', N'AHMDG78410', N'Ahmdg78410@gmail.com', N'AHMDG78410@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEAuvcMCN+KpvwG4ScP2V+OSUYuw5WxJq5OS6W3QrLpI2rgO2BJpXv7MKBm60K0xiA==', N'PJRA4L2PQEVXSRVXNRE7FWJTOQFLADBK', N'122e5e4e-ca07-4466-98f2-094e1bfc43e8', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'عام')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'اسئلة')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'تغذية')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'رياضة')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'تجارب')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'تقييمات')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'اخبار')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (8, N'معلومات')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (9, N'تكنولوجيا')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Certificates] ON 

INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (1, N'1ZP9U3B3F1RQJI', N'International High-Technologies Co.', 16)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (2, N'FK', N'National Software Corp.', 21)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (3, N'8X093O5A829B073L629L', N'Smart Entertainment Inc.', 38)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (4, N'3W63C26G8ZY3', N'American High-Technologies Corporation', 46)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (5, N'69VZ66VZSF0012P5MI037QUJ16N679N42QI98LYA9F7E0M8441', N'General I-Mobile Corporation', 26)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (6, N'618I009639425', N'Special High-Technologies Group', 27)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (7, N'ORV707D43', N'Union Transport Co.', 4)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (8, N'JM', N'North V-Mobile Inc.', 31)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (9, N'UR83F7D528ZJ3IS459OOCB355ZH91GT8BAJ9E4ZA38', N'Professional High-Technologies Group', 39)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (10, N'IYGQM9YDQ3V90', N'Canadian Data Inc.', 39)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (11, N'T50U', N'Advanced High-Technologies Co.', 19)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (12, N'063VFO', N'Union High-Technologies Co.', 15)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (13, N'FLF8Z181OJLZS6314LV6EFY0I75769RPRJJT5LHB84Q8SYBZ4', N'Federal Space Explore Corporation', 43)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (14, N'DUT78NJ2EY6Y92780WI72CG85PCU136667Z85L', N'Advanced Products Co.', 46)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (15, N'G1911RS55U94JG42T4102Q186LR5709C00', N'Professional Fossil Fuel Resources Inc.', 46)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (16, N'30YKX03UN1E', N'Pacific R-Mobile Corp.', 2)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (17, N'5JH2034TT8O4P', N'Flexible Space Research Corporation', 14)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (18, N'EXLLH84E5DV82B', N'Creative Insurance Inc.', 15)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (19, N'FT5DYUZ94U32W9NM1O1Y', N'Advanced 4G Wireless Corporation', 18)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (20, N'8NL5', N'Australian Space Explore Co.', 36)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (21, N'NWB9ICYY8OB6M83S', N'East 2D Electronic Group', 43)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (22, N'JU4Z387SVO130A0D49F14JR2T', N'International High-Technologies Inc.', 21)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (23, N'1V0G2LQ0TO2Y16QNM9582VVX2', N'Professional High-Technologies Inc.', 18)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (24, N'6', N'Flexible High-Technologies Group', 8)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (25, N'4GES31DW745L572OS2M6934SNRL86', N'Flexible Fossil Fuel Energy Group', 31)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (26, N'H11V3K6FHFV8Y77E4803J725Q8Y4PYPLT20QXSA2N91IZ1WHTQ', N'First M-Mobile Inc.', 14)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (27, N'AT3NU75343E62G12CK285C0SX0ZZBG6DM7A71F211VH57AM33T', N'Pacific Logistic Group', 8)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (28, N'M8REW135U2UD9W29Q54SKXST', N'East High-Technologies Co.', 19)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (29, N'N7247Z73GQO66M2T', N'Beyond Space Research Corp.', 24)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (30, N'04E19ZV3L4H6Q901', N'Future Solar Resources Group', 44)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (31, N'UC059508K109YHK6RLHZ93HPN6B7QWX5E5FX7X3MCWYK5', N'Beyond Services Group', 36)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (32, N'5F22PI4SE1M15F5S', N'Australian Services Corp.', 37)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (33, N'93I667BQ88K5XRY63M7OD64P50M5VPEVJG', N'City Petroleum Inc.', 39)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (34, N'C', N'Creative Research Corporation', 8)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (35, N'306MA3G0JA6IR674VL51X89G2QMECNSCJ253Y67M8I48336FB8', N'International Trust Group', 19)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (36, N'6O7O01C8J33BC7LTE', N'Canadian Financial Experts Group', 49)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (37, N'P473EVL0MXB', N'Global Thermal Energy Group', 37)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (38, N'J17TA2VY5ZM238TF', N'North Trust Inc.', 24)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (39, N'P0Y4L3N1530453420O4GPL80I038ZWHK4B732126X3ENN16H20', N'City Petroleum Corporation', 32)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (40, N'K2QK7KJ9X3B1X4VYH1FM42B12L1T31', N'Creative Insurance Corporation', 43)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (41, N'007KR60D99G7GB', N'General 5G Wireless Inc.', 7)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (42, N'AGCL6Z', N'Home High-Technologies Group', 45)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (43, N'ZG8', N'Canadian U-Mobile Group', 17)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (44, N'WX56HQOZEN51X', N'Advanced Industry Group', 27)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (45, N'C1I2NPA5Y23OVG0V48DI41C9', N'Federal Protection Corporation', 8)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (46, N'ZPY7NZIY3NM09LKH5UIWHXI05K622R5WUNV867UOMS4577W0HB', N'Home 3G Wireless Inc.', 2)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (47, N'36BR61QUQ653', N'WorldWide Green Energy Inc.', 42)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (48, N'T3P760C7TXQ9QU9N0884', N'Domestic Space Explore Group', 22)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (49, N'8487QR', N'North High-Technologies Group', 39)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (50, N'NOO59CP5', N'Canadian Electricity Group', 42)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (51, N'newcerti', N'Alex', 2)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (52, N'newcerti', N'Alex', 2)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (53, N'newcerti', N'Alex', 2)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (54, N'newcerti', N'Alex', 2)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (55, N'IT', N'Alex', 1053)
INSERT [dbo].[Certificates] ([ID], [Certificate], [University], [DoctorID]) VALUES (56, N'new cer', N'Alex2', 1053)
SET IDENTITY_INSERT [dbo].[Certificates] OFF
SET IDENTITY_INSERT [dbo].[Chat] ON 

INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1, 1)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (2, 2)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (3, 3)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (4, 4)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (5, 5)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (6, 6)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (7, 7)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (8, 8)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (9, 9)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (10, 10)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (11, 11)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (12, 12)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (13, 13)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (14, 14)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (15, 15)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (16, 16)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (17, 17)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (18, 18)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (19, 19)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (20, 20)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (21, 21)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (22, 22)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (23, 23)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (24, 24)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (25, 25)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (26, 26)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (27, 27)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (28, 28)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (29, 29)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (30, 30)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (30, 61)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (31, 31)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (32, 32)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (33, 33)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (34, 34)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (35, 35)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (36, 36)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (37, 37)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (37, 62)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (38, 38)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (39, 39)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (40, 40)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (40, 60)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (41, 41)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (42, 42)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (43, 43)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (44, 44)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (45, 45)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (46, 46)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (47, 47)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (48, 48)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (49, 49)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (50, 50)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1053, 57)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1055, 63)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1057, 57)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1057, 60)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1057, 61)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1067, 62)
INSERT [dbo].[Chat] ([UserID], [ChatID]) VALUES (1067, 63)
SET IDENTITY_INSERT [dbo].[Chat] OFF
SET IDENTITY_INSERT [dbo].[ChecksUps] ON 

INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (3, 5, N'Magni aliquid perferendis perspiciatis omnis; maiores ut. Vero iusto.', CAST(N'2020-02-28T00:25:55.000' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (4, 2, N'Laudantium dolore amet quia. Ipsam ducimus ex dolorem nihil.', CAST(N'2020-05-12T06:09:10.810' AS DateTime), N'high', 1, 23)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (5, 1, N'Modi sunt. Nemo quis qui; natus aut cum sit; quasi repudiandae.', CAST(N'2020-01-12T05:46:48.990' AS DateTime), N'high', 1, 3)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (6, 0, N'Provident reprehenderit iure. Deleniti adipisci libero temporibus. In sint.', CAST(N'2020-03-23T23:43:54.270' AS DateTime), N'Good', 1, 20)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (7, 5, N'At et ut possimus non.', CAST(N'2020-02-01T06:17:09.160' AS DateTime), N'low', 1, 34)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (8, 4, N'Quisquam nobis ratione. Omnis iste consequatur doloremque? Et tempore fuga.', CAST(N'2020-04-21T00:03:30.980' AS DateTime), N'Good', 1, 41)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (9, 3, N'In dolor deserunt culpa. Iste nemo voluptates delectus qui. Voluptatibus.', CAST(N'2020-01-08T07:36:12.680' AS DateTime), N'high', 1, 34)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (10, 4, N'Dolore ea soluta quisquam sed. Consectetur obcaecati inventore voluptatem.', CAST(N'2020-05-07T18:03:38.380' AS DateTime), N'low', 1, 33)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (11, 2, N'Totam beatae deserunt dolores assumenda.', CAST(N'2020-02-22T05:44:26.890' AS DateTime), N'Good', 1, 41)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (12, 4, N'Assumenda quae. Enim et ut omnis maxime! Est enim. Quos sit! Aut enim.', CAST(N'2020-02-26T19:03:23.790' AS DateTime), N'Good', 1, 34)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (13, 2, N'Exercitationem fugit sint quo enim. Et omnis. Doloribus eius! Voluptatem.', CAST(N'2020-03-10T20:57:18.860' AS DateTime), N'Good', 1, 1)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (14, 5, N'Aut error a. Aut quae. Sit eos. Amet consequatur! Et voluptatum.', CAST(N'2020-03-29T21:18:34.650' AS DateTime), N'low', 1, 13)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (15, 5, N'Quae eius. Inventore qui. Eum voluptatibus sed reiciendis qui...', CAST(N'2020-02-24T12:41:16.220' AS DateTime), N'Good', 1, 20)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (16, 1, N'Ut voluptatem maiores expedita dignissimos.', CAST(N'2020-01-20T20:47:03.720' AS DateTime), N'Good', 1, 33)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (17, 2, N'Nobis qui assumenda magnam. Ab fuga. Mollitia enim! Odit dicta?', CAST(N'2020-01-22T22:59:52.730' AS DateTime), N'low', 1, 47)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (18, 3, N'Assumenda est error atque. Deleniti nobis quod ea et.', CAST(N'2020-01-23T07:17:08.300' AS DateTime), N'Good', 1, 28)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (19, 4, N'Qui incidunt. Sit aspernatur dolorem enim. Rem pariatur. Reprehenderit et.', CAST(N'2020-03-30T16:08:17.950' AS DateTime), N'low', 1, 35)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (20, 5, N'Eum eius. At eum aperiam; molestias molestiae eaque et.', CAST(N'2020-03-13T21:39:27.070' AS DateTime), N'Good', 1, 25)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (21, 2, N'Voluptas aut exercitationem ea exercitationem.', CAST(N'2020-02-26T23:16:31.460' AS DateTime), N'Good', 1, 28)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (22, 3, N'Assumenda sit sunt voluptatem qui. Autem ipsum voluptate! Distinctio quos.', CAST(N'2020-02-01T12:49:01.190' AS DateTime), N'Good', 1, 5)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (23, 4, N'Consectetur doloribus consequatur. Sunt id sapiente doloremque molestias.', CAST(N'2020-04-26T19:04:15.080' AS DateTime), N'high', 1, 9)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (24, 5, N'Sit ipsa voluptates adipisci. Consequatur fuga corrupti. Veniam fugiat!', CAST(N'2020-02-04T02:57:25.040' AS DateTime), N'Good', 1, 3)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (25, 2, N'Aut sed eum fugit vero. Voluptatem unde; omnis et. Natus ut.', CAST(N'2020-05-09T10:30:59.820' AS DateTime), N'Good', 1, 13)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (26, 0, N'Beatae sed sint quo quis. Inventore rerum! Iste ut est dolore qui...', CAST(N'2020-02-09T21:19:02.170' AS DateTime), N'high', 1, 47)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (27, 0, N'Voluptas fugit nam; sit officia. Natus odit fuga ullam aliquam.', CAST(N'2020-03-06T00:42:09.510' AS DateTime), N'low', 1, 6)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (28, 1, N'Voluptatem temporibus perspiciatis. Error et! Aut pariatur. Amet sint. Magni.', CAST(N'2020-02-16T20:38:16.790' AS DateTime), N'high', 1, 41)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (29, 0, N'Autem hic ab aut totam. Illum commodi qui aliquid.', CAST(N'2020-03-28T01:14:21.310' AS DateTime), N'low', 1, 41)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (30, 2, N'Qui ut neque inventore ipsa...', CAST(N'2020-04-04T18:50:00.800' AS DateTime), N'Good', 1, 9)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (31, 3, N'In dolorem natus sequi. Ipsum enim ut adipisci quae.', CAST(N'2020-01-28T07:56:29.500' AS DateTime), N'high', 1, 50)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (32, 5, N'Veritatis sed voluptatem et. Eos doloribus aperiam aut non.', CAST(N'2020-04-20T01:27:03.810' AS DateTime), N'low', 2, 33)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (33, 4, N'Velit ratione. Fugit et sed voluptates quam!', CAST(N'2020-05-03T09:09:21.950' AS DateTime), N'low', 2, 29)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (34, 1, N'Unde et autem consequuntur animi.', CAST(N'2020-03-09T21:38:48.490' AS DateTime), N'high', 2, 41)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (35, 5, N'Iste amet et voluptatem; quod eos. Deleniti animi. Dolore autem!', CAST(N'2020-05-03T20:20:16.080' AS DateTime), N'low', 2, 20)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (36, 1, N'Id vel voluptatem earum vero. Exercitationem accusantium ipsa unde? Provident.', CAST(N'2020-02-10T14:10:31.930' AS DateTime), N'Good', 2, 12)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (37, 2, N'Qui dolores error itaque dolor. Rerum voluptas. Iste quos; architecto et.', CAST(N'2020-03-18T23:37:34.840' AS DateTime), N'low', 2, 12)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (38, 1, N'Sunt aut nam sint. Magni deserunt officia voluptatem nihil; natus eum.', CAST(N'2020-04-18T10:00:25.730' AS DateTime), N'high', 2, 13)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (39, 5, N'Et perspiciatis molestias voluptas vero.', CAST(N'2020-03-24T13:01:44.220' AS DateTime), N'Good', 2, 50)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (40, 5, N'Inventore molestiae quibusdam rerum. Repellendus omnis molestiae ut.', CAST(N'2020-02-15T04:51:37.150' AS DateTime), N'Good', 2, 3)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (41, 1, N'Amet provident omnis nisi. Ea rem cumque est! Ad assumenda nobis quaerat.', CAST(N'2020-01-02T09:44:27.680' AS DateTime), N'high', 2, 47)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (42, 2, N'Ut esse doloribus tempora nobis. Natus quod. Nisi qui! Repellat blanditiis.', CAST(N'2020-03-07T17:55:13.370' AS DateTime), N'low', 2, 29)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (43, 3, N'Ut eius facilis. Aut consequatur perspiciatis quia ullam. Et nobis non.', CAST(N'2020-04-16T19:31:07.670' AS DateTime), N'high', 2, 9)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (44, 0, N'Magni doloribus amet. Natus consequatur et. Accusantium voluptas!', CAST(N'2020-01-23T00:15:54.190' AS DateTime), N'high', 2, 28)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (45, 0, N'Consequatur sit. Molestiae nihil aspernatur non aut.', CAST(N'2020-04-21T21:36:28.030' AS DateTime), N'Good', 2, 50)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (46, 2, N'Laboriosam ea voluptatem nam ut.', CAST(N'2020-05-07T06:43:51.250' AS DateTime), N'high', 2, 13)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (47, 3, N'Asperiores neque minima et. Est blanditiis. Magni exercitationem. Aut vel.', CAST(N'2020-01-19T01:14:31.740' AS DateTime), N'high', 2, 33)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (48, 4, N'Eveniet corporis ea sed quidem; quidem maxime. Non sint. Quia natus. Sed iste.', CAST(N'2020-01-19T02:35:03.890' AS DateTime), N'Good', 2, 35)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (49, 2, N'Quibusdam ea pariatur sit minima.', CAST(N'2020-05-03T00:59:20.670' AS DateTime), N'low', 2, 40)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (50, 3, N'Iste sed. Eum quis rerum sed quam; natus aut; sit explicabo.', CAST(N'2020-02-13T21:03:53.490' AS DateTime), N'high', 2, 40)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (51, 1, N'Consectetur doloribus consequatur. Sunt id sapiente doloremque molestias.', CAST(N'2020-05-18T18:16:28.510' AS DateTime), NULL, 2, 3)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (52, 3, N'noteeee', CAST(N'2020-05-18T20:37:38.840' AS DateTime), NULL, 2, 1)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (53, 4, N'noteeee', CAST(N'2020-05-18T20:38:07.220' AS DateTime), NULL, 2, 1)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (54, 2, N'noteeee', CAST(N'2020-05-18T20:39:18.807' AS DateTime), NULL, 2, 1)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (55, 3, N'noteeee', CAST(N'2020-05-18T20:45:54.223' AS DateTime), NULL, 2, 1)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (56, 4, N'noteeee', CAST(N'2020-05-18T21:37:18.630' AS DateTime), NULL, 2, 1)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (57, 3, N'Exercitationem fugit sint quo enim. Et omnis. Doloribus eius! Voluptatem.', CAST(N'2020-03-10T20:57:18.860' AS DateTime), N'Good', 2, 1)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (58, 1, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-02-27T00:33:20.100' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (59, 0, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-02-27T02:33:20.100' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (60, 5, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-02-27T06:33:20.100' AS DateTime), N'Good', 2, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (62, 4, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-03-12T20:00:00.000' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (63, 3, N'Magni aliquid perferendis perspiciatis omnis; maiores ut. Vero iusto.', CAST(N'2020-06-12T22:00:00.000' AS DateTime), N'Good', 2, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (64, 2, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-02-27T02:33:20.100' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (74, 1, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-06-11T22:08:12.000' AS DateTime), N'Low', 2, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (75, 4, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-03-12T20:00:00.000' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (77, 4, N'Perspiciatis quam ut voluptatem sint. Ut iste est. Soluta fugiat obcaecati...', CAST(N'2020-03-12T20:00:00.000' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (78, 1, N'صوم لمدة 6 ساعات', CAST(N'2020-07-09T20:00:00.000' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (79, 4, N'صوم لمدة 6 ساعات', CAST(N'2020-06-02T22:00:00.000' AS DateTime), N'low', 2, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (80, 1, N'صوم لمدة 6 ساعات', CAST(N'2020-07-09T20:00:00.000' AS DateTime), N'لم يتم بعد', 1, 1057)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (81, 4, N'next week', CAST(N'2020-07-08T14:56:06.000' AS DateTime), N'لم يتم بعد', 1, 1067)
INSERT [dbo].[ChecksUps] ([ID], [CheckupType], [Notes], [Date], [ResultData], [Status], [PatientID]) VALUES (82, 3, NULL, CAST(N'2020-06-29T22:00:00.000' AS DateTime), N'High', 2, 1067)
SET IDENTITY_INSERT [dbo].[ChecksUps] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([ID], [Comment], [Date], [PostID], [UserID]) VALUES (1, N'comment', CAST(N'2020-03-11T21:05:28.5100000' AS DateTime2), 1, 1)
INSERT [dbo].[Comments] ([ID], [Comment], [Date], [PostID], [UserID]) VALUES (4, N'Comment', CAST(N'2020-03-11T21:12:21.0000000' AS DateTime2), 1, 1057)
INSERT [dbo].[Comments] ([ID], [Comment], [Date], [PostID], [UserID]) VALUES (5, N'comment3', CAST(N'2020-06-05T21:12:21.0000000' AS DateTime2), 1, 1057)
INSERT [dbo].[Comments] ([ID], [Comment], [Date], [PostID], [UserID]) VALUES (6, N'comment2', CAST(N'2020-06-05T21:12:21.0000000' AS DateTime2), 1, 1053)
INSERT [dbo].[Comments] ([ID], [Comment], [Date], [PostID], [UserID]) VALUES (7, N'Comment 4', CAST(N'2020-06-05T21:12:21.0000000' AS DateTime2), 2, 1053)
INSERT [dbo].[Comments] ([ID], [Comment], [Date], [PostID], [UserID]) VALUES (12, N'comment', CAST(N'2020-06-15T08:30:03.9025845' AS DateTime2), 4, 1053)
INSERT [dbo].[Comments] ([ID], [Comment], [Date], [PostID], [UserID]) VALUES (13, N'welcome', CAST(N'2020-07-01T16:57:53.3404471' AS DateTime2), 79, 1067)
SET IDENTITY_INSERT [dbo].[Comments] OFF
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (2, N'3153 Church Lane', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (4, N'3417 East Lake Ct', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (7, N'616 SE Riverside Ln', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (8, N'841 Fox Hill Ln', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (14, N'592 New Market St', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (15, N'872 White Rushwood Ct', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (16, N'1953 Fox Hill Lane', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (17, N'2256 SW Prospect Hill Ln', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (18, N'3894 E Rock Hill Lane', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (19, N'67 Highland Drive', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (21, N'95 Cedar Tree Rd', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (22, N'1108 NW Monument Blvd', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (24, N'645 North Rose Hill St', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (26, N'69 Ski Hill Parkway', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (27, N'1381 South Rose Hill Hwy', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (31, N'957 North Buttonwood Loop', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (32, N'825 Hunting Hill Circle', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (36, N'2728 East Hunting Hill Hwy', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (37, N'3640 S Sharp Hill Pkwy', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (38, N'160 White Front Pkwy', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (39, N'579 E Monument Parkway', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (42, N'143 Waterview Avenue', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (43, N'3384 Highland Street', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (44, N'153 Rose Hill Pkwy', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (45, N'776 W Prospect Hill Hwy', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (46, N'368 West Beachwood Ct', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (48, N'3083 S Front Circle', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (49, N'1562 Deepwood Ln', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (52, N'alex', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (1053, N'Alex', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (1054, N'alex', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (1055, N'alex', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (1056, N'Alex', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (1064, N'Alex', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (1065, N'Alex', 0)
INSERT [dbo].[Doctor] ([DoctorID], [Address], [ValidationStatus]) VALUES (1066, N'Alex', 0)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (1, 47, N'Quaerat iusto qui natus error.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (2, 28, N'Fuga iste. Natus consequatur!', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (2, 47, N'Quia hic. Atque molestiae.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (3, 28, N'Nemo unde.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (3, 35, N'Fugit unde.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (3, 47, N'Maiores voluptatem odit ut.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (4, 23, N'Vitae corrupti culpa in.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (4, 28, N'Consectetur ducimus pariatur.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (4, 35, N'Eaque explicabo.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (5, 6, N'Error optio voluptatem in.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (5, 23, N'Placeat aliquid. Suscipit ut.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (5, 35, N'Aperiam itaque voluptatem.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (6, 6, N'Itaque voluptatem veritatis.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (6, 23, N'Ullam repudiandae deserunt.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (6, 50, N'Dolor sint. Quaerat et.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (7, 6, N'Rerum odio. Cupiditate quas!', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (7, 29, N'Error ut ipsam laboriosam.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (7, 50, N'Adipisci cumque. Fugit quis.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (8, 3, N'Unde voluptate perspiciatis.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (8, 29, N'Et vitae. At dignissimos.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (8, 50, N'Nam natus. Eius.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (8, 1057, N'مرة يوميا', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (9, 3, N'Id velit. Saepe sit tenetur.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (9, 12, N'Beatae non. Et est.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (10, 9, N'Facere similique.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (10, 12, N'Enim unde.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (11, 5, N'Natus distinctio ea non nam.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (11, 9, N'Molestiae ut.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (12, 5, N'Sit debitis sed iste.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (12, 10, N'Ratione facilis; dolorum.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (13, 10, N'Voluptas iste. Et veritatis.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (13, 33, N'Qui assumenda; ut quibusdam.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (14, 33, N'Deserunt doloremque et qui.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (14, 40, N'Consectetur neque tempore.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (15, 1, N'Veritatis perspiciatis. Ut.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (15, 40, N'Et quae doloremque voluptatem.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (16, 1, N'Impedit unde. Inventore alias!', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (16, 13, N'Asperiores culpa eum non ut;', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (17, 13, N'Ut et. Non ea blanditiis...', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (19, 11, N'Illum eius. Magnam accusamus!', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (19, 34, N'Rerum nulla labore deserunt.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (20, 20, N'Debitis ullam error dolores.', 3)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (20, 34, N'Iusto doloribus similique.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (20, 1057, N'مرة يوميا', 5)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (21, 20, N'Voluptatem qui unde excepturi.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (21, 41, N'Voluptatem aliquam. Fugit.', 2)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (22, 30, N'Eum magni soluta quisquam.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (22, 41, N'Iure autem. Aut eum.', 1)
INSERT [dbo].[Drug_Patient] ([DrugID], [PatientID], [Note], [Dosage]) VALUES (23, 30, N'Consequatur qui tempora.', 1)
SET IDENTITY_INSERT [dbo].[Drugs] ON 

INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (1, N'Hepanizon', N'Url', N'N         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (2, N'Chlorperavir', N'Url', N'P3P       ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (3, N'Tamoxanide', N'Url', N'3CBSGG    ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (4, N'Lastexarex', N'Url', N'9         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (5, N'Decotanino', N'Url', N'1         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (6, N'Kitaperade', N'Url', N'X8        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (7, N'Oxysilfen', N'Url', N'IX3HT0    ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (8, N'Azitamvant', N'Url', N'KT493R    ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (9, N'Etosilxel', N'Url', N'5H2F7     ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (10, N'Biosibid', N'Url', N'5197F6OX  ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (11, N'Lefuthromydorm', N'Url', N'ZO        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (12, N'Lastecarpamvase', N'Url', N'X         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (13, N'Fibraspovex', N'Url', N'1         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (14, N'Micotrazon', N'Url', N'M893      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (15, N'Betasifen', N'Url', N'2B        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (16, N'Acybutamtec', N'Url', N'Q5        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (17, N'Hapaspoban', N'Url', N'26M6      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (18, N'Pipebutamzol', N'Url', N'VT        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (19, N'Doxnisine', N'Url', N'45G       ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (20, N'Medropane', N'Url', N'L         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (21, N'Aerohydrodine', N'Url', N'8U5       ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (22, N'Dexagocin', N'Url', N'J34T      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (23, N'Tylotadine', N'Url', N'XUL70     ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (24, N'Simethromytex', N'Url', N'5C        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (25, N'Osadrolam', N'Url', N'4HK       ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (26, N'Duracarpammuc', N'Url', N'G         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (27, N'Dexipasine', N'Url', N'7KRR      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (28, N'Aprothromydar', N'Url', N'M         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (29, N'Herpesitad', N'Url', N'6A2W      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (30, N'Flonapex', N'Url', N'S7        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (31, N'Iresonne', N'Url', N'59Y2B0    ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (32, N'Acyclotriol', N'Url', N'1Y        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (33, N'Valcoperaxol', N'Url', N'V         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (34, N'Miniperaliq', N'Url', N'1         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (35, N'Dextroxafast', N'Url', N'T         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (36, N'Affaxol', N'Url', N'EQ        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (37, N'Oxytradine', N'Url', N'1         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (38, N'Ecodrozyl', N'Url', N'AT1NP2W   ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (39, N'Cloxaxin', N'Url', N'7         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (40, N'Erychloridedorm', N'Url', N'IA41      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (41, N'Duodipivex', N'Url', N'JM675C3P1N')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (42, N'Abeclopex', N'Url', N'I         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (43, N'Abetaque', N'Url', N'SB8GM9    ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (44, N'Ferrotalam', N'Url', N'5         ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (45, N'Captocarpamnor', N'Url', N'400       ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (46, N'Exoniphane', N'Url', N'EC30      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (47, N'Exocarpamnal', N'Url', N'M0        ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (48, N'Melioxepren', N'Url', N'KV0BN1    ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (49, N'Tenotraque', N'Url', N'UE4U      ')
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [ImageSource], [DosageType]) VALUES (50, N'Ferrotate', N'Url', N'JS        ')
SET IDENTITY_INSERT [dbo].[Drugs] OFF
SET IDENTITY_INSERT [dbo].[Msg] ON 

INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (1, 57, CAST(N'1984-12-25T09:17:08.040' AS DateTime), N'Quia ab optio quos dolores recusandae perspiciatis, laborum dolor aliquid. Ut laborum dolore ut distinctio minus voluptas sit quas perspiciatis; quos corporis consectetur sit cumque omnis ut, autem rem perspiciatis. Cupiditate ea, magni aut facere consequatur perspiciatis voluptas numquam modi; rem rerum cumque magnam amet quia perspiciatis et ut eligendi. Omnis distinctio qui quam perferendis aspernatur quo et nam modi. Dolores deleniti impedit ea et, est nam quia eos porro. Magni quo, minus labore recusandae eveniet animi odio assumenda vel.
Omnis eius voluptatem ut pariatur a quae perferendis quis molestiae. Aliquam id assumenda necessitatibus, ut dolores et odio et repellat.
Ea autem officiis rerum nostrum quidem est omnis accusamus reprehenderit. Sequi repellat ut consectetur eligendi, eos qui iste neque nisi. Quis harum est autem excepturi dolorem laboriosam, sit quae exercitationem. Hic repudiandae ut nesciunt similique est illo voluptas veritatis illo? Non aut, neque expedita suscipit adipisci suscipit et sunt saepe.', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (2, 57, CAST(N'1994-10-06T13:59:08.840' AS DateTime), N'Et dolorem, eos laborum numquam sint dolores nesciunt incidunt quisquam. Omnis natus iste inventore est quis perspiciatis quaerat error et; aut tempora, ut sed esse ut optio nesciunt sint nihil. Debitis in, quas autem ipsum sed voluptatem eos corrupti voluptatibus.
Qui nihil nam et fugit reiciendis est voluptatem sequi neque; eum qui nisi doloribus incidunt fugiat ea error soluta est. Repudiandae nam cumque sit omnis labore ducimus neque fugit est. Sed sit quia cumque recusandae suscipit et sit ipsa perferendis.
Ut dolor rerum ipsa obcaecati quas fugit quia perspiciatis eius. Dolor sed et ut magni tempora dolorum est in magni. Dolor et nam, cupiditate non obcaecati earum fugiat nihil ut. Culpa velit et veniam temporibus optio dolore atque officia voluptas? Aspernatur animi culpa unde beatae magni repudiandae eum autem amet. Dolor illum repellat molestiae aut, pariatur porro et sunt nostrum. Ducimus quae ut porro excepturi quia adipisci eveniet aut qui; omnis veniam ad sit, sequi rem beatae perspiciatis nisi quis. Voluptatem maxime eveniet voluptas maxime ducimus dolore et sit quaerat!', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (3, 57, CAST(N'2019-03-04T23:35:53.310' AS DateTime), N'Sint ratione saepe delectus recusandae culpa iusto sed est corporis.
Voluptatem unde dolorem qui quisquam sunt voluptas ut, error rerum. Et illo possimus dolore provident neque eos a voluptate iste. Voluptate ullam ut, fugit est odit ut architecto recusandae incidunt. Aut quae enim dolorem ad eum natus assumenda excepturi sit? Ut dignissimos ut voluptas voluptatem, delectus itaque qui suscipit quo! Voluptas necessitatibus dignissimos sint mollitia dolor suscipit dolores iste et. Et eum velit non nihil aut quis laboriosam porro perspiciatis; soluta enim quia natus, vitae omnis ex quod mollitia quo.
Aliquam ipsa cumque, alias illo dolores nesciunt consequatur consequuntur dolor. Voluptas aut ut quod ea eos, natus libero eligendi unde. Alias perferendis quis vel voluptates ratione ducimus magnam praesentium culpa. Blanditiis voluptas beatae nam consequatur fugit nemo soluta delectus vel. Saepe praesentium, sed tempore mollitia provident id error fugit at. Rem repellendus accusantium sit et quisquam nihil a perspiciatis aut; non cumque provident aspernatur magni maxime doloremque quaerat sed quae...', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (4, 57, CAST(N'1984-07-12T22:52:48.660' AS DateTime), N'Eos veritatis iste unde sapiente voluptas laboriosam quo repellat nulla. Sed harum nobis expedita, molestiae ea minus dolorem maiores aut. Quae cum consequatur expedita perspiciatis ab eveniet aut excepturi quisquam? Suscipit facere, sunt placeat voluptates libero in dolore ut qui. Enim omnis aliquam dicta dolorem sed vero praesentium temporibus qui. Tenetur qui dolorem, expedita voluptas quidem libero voluptatem aspernatur laborum. Provident omnis ratione dolores voluptatem ex voluptas perspiciatis voluptas impedit.
Dignissimos sunt cupiditate doloribus cupiditate eos et quo error et. Atque illo alias dignissimos sed eius officia cum sint quam.', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (5, 57, CAST(N'2005-01-29T17:41:28.940' AS DateTime), N'اللغة العربية هي لغة سامية مركزية، وبكده تصنيفها بيكون مع اللغات السامية التانيه زى العبري والأرامى. العربى القياسى الحديث هو اللى بيتدرس فى المدارس والجامعات، و بيستعمل فى اماكن الشغل و الحكومه و معظم وسايل الإعلام (ميديا).[3] كود اللغه بالنسبه لقانون المنظمه الدوليه للتوحيد القياسى (ايزو 639) (ISO 639), هو ar.

اللهجة السايده فى كل بلد لغته الرسمى عربى مختلفه. مثلا فى مصر مع ان اللغه الرسمى عربى, معظم سكّانها بيتكلّمو اللغه المصريه الحديثه,[3] و هى لغه معترف بيها فى العالم عن طريق كود اللغه بالنسبه لقانون المنظمه الدوليه للتوحيد القياسى (ايزو 639) (ISO 639), و هو arz. فيه مصادر بتقول ان انواع اللغه العربى (انجليزى: varieties of Arabic; مش اللغه العربى الكلاسيكى او القياسيه الحديثه) بيستعملها 206 مليون شخص كلغتهم الاولانيه و 248 مليون شخص غيرهم كلغه تانيه.', 1053)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (6, 57, CAST(N'2019-09-05T00:55:07.150' AS DateTime), N'Sint ullam ea ut repellat voluptatem in et est quia. Iusto dolore molestiae enim officiis eligendi nisi labore ipsum incidunt.', 1053)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (7, 7, CAST(N'1975-03-10T19:36:34.230' AS DateTime), N'Nesciunt neque error, quae non minima eius blanditiis ipsa tempore. Magnam ea natus distinctio aut quasi a hic sit numquam. Deserunt et provident ut veniam tempora itaque fugiat id cum! Modi veritatis totam pariatur eos dolorum aut culpa nesciunt et; ipsam illo ex nihil enim aliquam ea suscipit aliquam velit. Non architecto aut, magnam maxime provident omnis doloribus sit laboriosam; ad similique a delectus culpa aut omnis repellat facilis iure.', 49)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (8, 8, CAST(N'2020-03-03T11:52:31.320' AS DateTime), N'Veritatis sed, cumque unde adipisci fuga ut molestiae est deleniti. Officia neque architecto quam vitae totam sit in laudantium voluptas. Id consequuntur et ratione saepe quisquam nostrum hic eum velit. Ut explicabo, officia culpa distinctio nesciunt veniam odit perspiciatis sed. Iste at illo rerum qui, corporis cupiditate nam animi sit. Unde error eum odit blanditiis a sit sunt voluptatibus sit! Consectetur voluptatibus labore illo quae eligendi tempore sed et sequi. Beatae voluptas, quod qui a ut id nemo maiores dolor. Modi officiis dolorem eligendi et vel autem amet quo quia...
Error dolore, quia aspernatur est ratione esse error unde sequi; quos ea, dolorum qui aut voluptate reiciendis sed blanditiis architecto.', 32)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (9, 9, CAST(N'1973-08-04T00:17:36.630' AS DateTime), N'Voluptatem consectetur similique provident omnis, ullam sit ut neque voluptatum. Facilis vel et autem quia, quis non quia natus quis? Et repudiandae maiores molestias et dolores praesentium voluptatibus dolores deserunt. Architecto et consequatur velit molestiae distinctio nostrum incidunt aliquam perferendis. Voluptatem quaerat natus sint dicta, voluptatem aut natus consectetur et. Nihil omnis nemo nulla natus odio quam tenetur iusto porro. Est reiciendis omnis sed delectus rerum officiis commodi fugiat et. Iste accusantium nobis ut laudantium atque sed officiis natus sapiente!
Quisquam facilis, sunt quo excepturi placeat qui a dolorem culpa. Et sint autem perspiciatis facere ut quibusdam omnis et animi!', 35)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (10, 10, CAST(N'2018-05-28T03:34:55.310' AS DateTime), N'Est quis perspiciatis illo sunt quae sunt reprehenderit itaque velit. Veritatis possimus mollitia provident rerum reiciendis quo est aut sit; necessitatibus numquam praesentium natus error rem qui amet aut qui. Eos et, ex sit voluptatem consequatur et vel eum ducimus. Dignissimos possimus illum error molestiae deleniti culpa voluptas sit voluptas. Molestias libero nobis iste, sit asperiores qui consequatur quia ad. Voluptatem facere libero consequuntur nemo corporis aspernatur vel sit quisquam. Placeat beatae optio, illum temporibus repellendus culpa officia sit ducimus; tenetur molestiae tempora et nobis est aliquam dolores iste sed. Voluptatem ea accusantium nulla harum dolorem nisi est facere corporis.', 23)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (11, 11, CAST(N'1973-07-26T11:15:47.890' AS DateTime), N'Et a veritatis omnis, quia accusamus consequatur quo qui sint. Adipisci sed debitis ipsa molestiae quia fuga aut magni eaque; fugit deserunt ea, quae aperiam saepe ut incidunt odit doloribus. Ipsum quia consectetur aut ab id sint corrupti vel fuga? Atque ipsa voluptatem, vel sit est voluptatem id rerum assumenda. Modi eius quos a aut quis sit dignissimos eos ea. Animi possimus illo ex rem est perspiciatis repellat officia exercitationem. Alias illum, sapiente error ea et porro quasi iste temporibus. Minus nobis magnam placeat tenetur et sit aliquam ratione exercitationem.
Et unde vitae sed omnis consequatur ducimus adipisci vitae voluptatem.', 27)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (12, 12, CAST(N'2011-04-17T17:30:44.120' AS DateTime), N'Qui praesentium est quis est porro corporis eum molestiae quos. Qui harum nisi placeat labore et quaerat et illo facere! Natus distinctio, sunt voluptatem omnis aperiam qui et culpa quaerat...
Fugit voluptas quia veniam quisquam dolores at voluptas itaque facilis. Ea numquam voluptas, eius sed dolorem qui assumenda eaque deleniti. Amet possimus voluptatem, soluta natus aperiam ipsum quisquam at repellendus. Explicabo consequatur nihil voluptatum sapiente fugit in tempora rerum est. Quis asperiores velit ea sit placeat ut omnis voluptatum animi. Aliquam officiis, quidem nisi itaque mollitia possimus placeat dolor vel.
Dolorem impedit labore ut quidem unde sint magni qui quae. Amet quibusdam quaerat sapiente corporis ullam accusantium velit cum sed. Asperiores vel quia et dolores magni ad sed, nulla quia? Tempora velit unde nisi qui aspernatur unde nihil expedita dolores! Et provident at sed quasi et dolor dignissimos error tenetur? Explicabo consequuntur obcaecati suscipit officia consequatur voluptatem illum iste quae! Autem iste debitis aspernatur hic quasi dicta voluptatem ut voluptas. Repellat voluptatem non atque porro libero, deleniti quaerat ducimus ipsum. Atque fugit blanditiis sit nemo omnis nihil, architecto et illo...', 14)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (13, 57, CAST(N'2001-04-22T01:39:41.120' AS DateTime), N'Sit natus iste fuga quae cupiditate repellat ab et unde.', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (14, 57, CAST(N'2000-07-12T15:37:39.080' AS DateTime), N'nte et, unde accusantium aut et sed aliquam eli', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (15, 57, CAST(N'1974-06-10T13:02:54.500' AS DateTime), N'اللغة العربية هي لغة سامية مركزية، وبكده تصنيفها بيكون مع اللغات السامية التانيه زى العبري والأرامى. العربى القياسى الحديث هو اللى بيتدرس فى المدارس والجامعات، و بيستعمل فى اماكن الشغل و الحكومه و معظم وسايل الإعلام (ميديا).[3] كود اللغه بالنسبه لقانون المنظمه الدوليه للتوحيد القياسى (ايزو 639) (ISO 639), هو ar.

اللهجة السايده فى كل بلد لغته الرسمى عربى مختلفه. مثلا فى مصر مع ان اللغه الرسمى عربى, معظم سكّانها بيتكلّمو اللغه المصريه الحديثه,[3] و هى لغه معترف بيها فى العالم عن طريق كود اللغه بالنسبه لقانون المنظمه الدوليه للتوحيد القياسى (ايزو 639) (ISO 639), و هو arz. فيه مصادر بتقول ان انواع اللغه العربى (انجليزى: varieties of Arabic; مش اللغه العربى الكلاسيكى او القياسيه الحديثه) بيستعملها 206 مليون شخص كلغتهم الاولانيه و 248 مليون شخص غيرهم كلغه تانيه.', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (16, 57, CAST(N'1997-06-23T02:36:07.460' AS DateTime), N'Dignissimos deserunt omnis quibusdam eos consequatur sit modi magni unde. Unde et nihil reiciendis hic consequatur veniam nemo eos est? Rerum laboriosam vel aliquid animi voluptatem ad esse at fugiat. Distinctio omnis unde porro iste harum earum ut minima est; ad sit hic error ipsa et, delectus officia laboriosam qui. Consectetur in sed fugit, ad aut est dolores natus architecto!
Dolor mollitia ut odit delectus officiis quis corrupti velit rem. Quaerat ut harum corporis dolore voluptatem consequatur veniam eligendi sit? Accusantium minus quos excepturi, veniam facilis qui unde vitae est. Dolores fugit sit minima exercitationem veritatis at fugiat quaerat dolorem! Harum veritatis quo corporis at et mollitia voluptatem sed nam.', 1053)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (17, 57, CAST(N'2014-07-14T08:34:48.710' AS DateTime), N'Dicta ut quas iusto nam recusandae et ut omnis quis. Molestias voluptas a rerum architecto quia dolorem quaerat neque qui! Laborum nihil alias dicta ullam quia nihil vel dolor et. Modi nam aut aperiam eius quis, dolorum minima blanditiis ut. Sunt ut voluptatem velit et voluptate autem unde voluptas nemo! Ipsam consequatur ut voluptas nihil temporibus minus eaque facilis quam. Quas ut id sit quam reiciendis voluptas quidem architecto minus.', 1053)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (18, 57, CAST(N'2016-02-25T08:15:19.070' AS DateTime), N'Voluptatem atque maiores porro quibusdam commodi sit aliquid eum magnam.
Quo et porro qui ipsa modi, labore et sit aut.
Aliquam quisquam esse, natus aut nulla tenetur animi qui recusandae; tempora quas molestiae voluptatem velit similique, consequatur aliquam inventore voluptatem. Et ad voluptas sit eum placeat aut unde blanditiis mollitia!', 1053)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (19, 19, CAST(N'2015-02-05T08:36:56.820' AS DateTime), N'Est tempora est sit quia voluptate iure vel ut velit. Architecto doloribus at pariatur qui ut magnam et perferendis ea! Est itaque et est ullam vitae rerum est enim sit. Et reiciendis nam fugit unde quo ducimus incidunt ex quisquam. Incidunt unde enim dolor perspiciatis laborum odio magnam tempore sed. Quo magnam enim perspiciatis omnis eos perspiciatis velit adipisci aut; quis aperiam fugit corporis, in ut qui culpa perspiciatis nesciunt.
Quos autem unde omnis praesentium iste aut impedit aspernatur cum. Repudiandae autem laboriosam repellendus error, perspiciatis recusandae cum quia natus; eaque non perspiciatis cupiditate necessitatibus doloremque eligendi iure aut blanditiis? Iusto error ullam voluptatem obcaecati est voluptas quam sit soluta. Qui illo rem illo sit, cumque illum cumque voluptas tempora. Iste aut laborum id architecto omnis, perspiciatis aliquid eos quia. Minus necessitatibus sit cum atque quia fugiat quia dicta iste. Explicabo rerum error id, quaerat quia debitis deleniti nesciunt quis.
Velit error omnis reprehenderit alias eveniet at cumque sed nostrum. Amet quia dolorem eum ipsum explicabo, ea quis architecto aut. Iste optio magni sed, beatae minima alias optio aut accusamus; dolor explicabo ad ut est rerum in ea iure quis. Aut et non sapiente corrupti et magnam laboriosam vero qui.', 26)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (20, 20, CAST(N'1987-04-04T02:09:58.820' AS DateTime), N'Rem rerum, unde id ut illo eos consequatur aut atque. Quia velit aut sed adipisci quasi sit sint, recusandae nam. Nihil fuga numquam exercitationem ut voluptates voluptatem eos veniam error! Quisquam qui sunt quaerat consequuntur voluptates recusandae ex harum aut...
Provident enim natus repudiandae natus a fugiat provident error voluptatem. Beatae fuga doloremque modi quo et velit nostrum ut consequatur! Doloremque aliquam odit quo tempore ea cum qui et labore. Non ab sunt totam consequatur quis reprehenderit officiis voluptate quaerat! Sapiente tempore iste doloremque, culpa ut at quis repellat corrupti.', 13)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (21, 21, CAST(N'2008-06-30T03:59:27.050' AS DateTime), N'Nam dolor rem voluptas sed, alias voluptatem natus quos perspiciatis. Quia magni porro voluptas aut explicabo officiis itaque omnis veritatis. Quibusdam aut nobis odit aliquid qui doloremque optio id quod! Esse alias ipsam et quia in eum exercitationem ut quia. Quae enim quaerat unde quidem provident sit omnis quod et. Ut voluptas placeat animi velit, eum ipsa iste neque quas. Excepturi laudantium est id libero omnis autem dolores, optio animi. Maiores perspiciatis eos ad, vel sit unde ratione sunt fugit!
Consectetur consequuntur consectetur magni molestias maiores enim animi perferendis sit. Quae enim deserunt sapiente architecto nam reiciendis aperiam eum itaque! Et eum molestias modi, aut error id sit sint odio. Facilis aut est, voluptatem reiciendis minima cum vel iure porro. Officia aut unde eius sunt voluptatem quia dolorem eaque quo. Soluta quia quaerat delectus quos nisi officia et nemo qui. Neque nulla voluptatem, a deserunt ipsa et nihil et neque? Fugit ut voluptates ad libero id rerum id, quam corrupti.', 43)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (22, 22, CAST(N'1982-10-23T14:24:13.540' AS DateTime), N'Non sed minima ut dignissimos, ut modi accusantium excepturi odio; quibusdam molestiae, ut ipsum ducimus voluptatem sit voluptatem natus non. Cupiditate est nihil voluptatem qui mollitia sunt hic voluptatem pariatur. Sapiente quia, ad minus ut consequatur tempora soluta magnam nostrum! Adipisci enim sit natus, sunt dolores voluptatibus aliquid sapiente accusantium. Hic vel amet distinctio quisquam sit molestiae qui non corporis. Doloremque assumenda aut rerum ipsa, mollitia autem sunt sit ut. Sint non cumque sequi et quibusdam veniam est laboriosam sunt; obcaecati consequatur nemo ut voluptatem distinctio inventore sed omnis modi.
Voluptas sed in nesciunt error eum ut magni porro nesciunt. Provident porro sit, velit minima velit quae error iste quia? At illo porro animi voluptatem, aut a modi saepe ut. Porro dicta molestiae ducimus, impedit sapiente deleniti iste nobis dolor. Id dolor ut possimus, consequatur possimus delectus itaque id totam. Unde omnis dignissimos, itaque nisi iste quos repellendus accusantium quia. Error omnis a repudiandae sunt qui possimus vel in quasi? Ab dolorem nesciunt quo laboriosam ab vero neque molestiae sint! Sit magnam quia unde ipsum exercitationem non accusamus est eligendi. In dolorem fugiat expedita exercitationem aut voluptatem sint quisquam et!', 16)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (23, 23, CAST(N'1990-11-20T15:14:19.310' AS DateTime), N'Qui optio et voluptas expedita neque velit et nulla sed. Cum deserunt quisquam error consectetur aut eveniet dolore minus eius; possimus et est error pariatur dolor explicabo est incidunt vero. Sed libero voluptates doloremque, error sed repellendus non molestiae commodi. Quia dolorum modi nulla molestiae natus dolorem magnam numquam voluptas! Eius repellat perspiciatis, dolore voluptas vitae quisquam qui facilis nemo.', 29)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (24, 24, CAST(N'1973-12-26T02:23:11.390' AS DateTime), N'Provident perspiciatis totam minus ut hic obcaecati nisi tempora aut. Nemo inventore voluptas est quisquam et quis, eum aspernatur voluptatem? Velit modi et architecto voluptatem nam accusantium velit sed ea. Quia nisi repellat ut sed cupiditate quia similique quo veritatis. Mollitia omnis voluptas error qui repudiandae qui sint nemo corporis. Labore id totam incidunt fugiat quis iste delectus veritatis omnis.', 26)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (25, 25, CAST(N'1974-07-25T06:41:26.690' AS DateTime), N'Et sit sed in, similique aut sint enim possimus placeat. Natus nobis inventore veritatis provident veritatis natus voluptas omnis rerum! Suscipit mollitia molestiae molestias a pariatur qui eum quis asperiores. Et omnis exercitationem rerum cupiditate perferendis est cum qui error. Nostrum vel porro maiores voluptates omnis est veritatis reiciendis quia.', 32)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (26, 26, CAST(N'1998-07-10T07:57:19.140' AS DateTime), N'Amet quasi, quia amet repellendus sint quae totam soluta quod. Sed asperiores facilis, vel adipisci numquam voluptatem assumenda sapiente cum. Quis accusantium saepe dicta non, ratione veritatis repellendus voluptatem rerum! Aut at et rerum sequi inventore quis esse odio ipsam. Aut dolores ullam laboriosam enim ut suscipit qui minus voluptas. Nesciunt aut error saepe, dicta adipisci molestiae nisi perspiciatis nobis.', 12)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (27, 27, CAST(N'1998-04-28T02:00:34.990' AS DateTime), N'Dolorem quis accusantium et quo eum id ducimus totam cum. Ullam quam quia qui, est perferendis rerum eum dolore ut! Non et aut libero, voluptas unde odit quia quis dolorem. Ut unde natus molestiae porro maxime qui et aut sunt. Accusamus et ad fugiat error iure eaque molestias vel nostrum? Ducimus quas dolorem laborum ullam iste est sed vel repellat; quibusdam non ut dignissimos exercitationem rerum molestiae velit corrupti ut. Quia odio aperiam voluptas quo enim eos id veritatis ut? Sit officia quam, adipisci in animi ducimus ipsa dignissimos voluptates. Eos itaque nobis et qui ex consectetur et aut repellendus!', 44)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (28, 28, CAST(N'1993-04-20T08:59:03.050' AS DateTime), N'Ut rerum nostrum provident maxime provident aut ut ea unde. Sequi enim eos obcaecati eligendi unde asperiores vel, nihil voluptatum; corporis labore quia odit placeat et numquam in, sint ullam. Fugiat sit, officia fugiat dolorem nesciunt eius obcaecati et quia? Sed aut mollitia unde eum animi optio quia modi ea; repudiandae porro ipsam nostrum aspernatur ab et corporis impedit optio.', 7)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (29, 29, CAST(N'1975-03-12T15:29:41.860' AS DateTime), N'Natus quia natus soluta id eius nam dolore laboriosam minima. Esse velit tempore sint autem, consequatur nesciunt magni et omnis. Est quibusdam amet nemo dolorum culpa aut libero harum earum. Fugiat natus maiores enim qui eius eos a temporibus nemo. Cupiditate rerum unde cupiditate voluptatem magnam maiores consectetur repellendus iste! Iusto est omnis voluptatem et doloremque et aut et consequatur. Iure totam voluptas sit iure saepe quia necessitatibus amet accusamus. Sed et soluta eius ad doloremque et harum aut velit! Pariatur consequatur voluptatem ut amet natus culpa cum qui provident. Assumenda eius et consectetur aperiam eum distinctio sint voluptatem quos.', 46)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (30, 30, CAST(N'2009-11-22T01:36:15.540' AS DateTime), N'Rerum ipsam, suscipit ut voluptatem enim ut debitis voluptas quasi; eius sit, debitis ipsam iste asperiores ex autem placeat voluptatum. Consequuntur necessitatibus nam sequi eaque iure soluta, reprehenderit facere odit! Esse quia perspiciatis sit eum error natus animi quia et. Obcaecati adipisci molestias aliquam dolore amet unde eaque id exercitationem. Illo unde molestias eius dolor ad sed qui nobis explicabo? Ad itaque delectus qui necessitatibus tempore dolorum et reprehenderit quia.
Temporibus dolores et est consequatur distinctio corrupti sequi minus quo. Ipsam itaque consequatur mollitia cupiditate laborum, ut dolore consequatur expedita. Neque ut, sint ratione delectus ea rem quae tenetur officia. Assumenda sit cumque itaque omnis officia omnis adipisci totam ut; rem doloribus nihil eum error sint omnis fuga quia earum.
Nostrum enim blanditiis voluptatem ratione velit error perspiciatis voluptatum quod. Natus sunt vel ut, et vero aut quis natus nihil! Unde quia quae voluptas necessitatibus, perspiciatis eaque rerum voluptatem tenetur.', 16)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (31, 31, CAST(N'1999-03-22T13:05:53.980' AS DateTime), N'Natus non enim, non reiciendis voluptas voluptatem dolorem voluptatem expedita. Veritatis sit dicta similique praesentium sequi, impedit odit aut maiores.
Aut ipsam sit, eius rem recusandae nobis eaque vitae doloribus. Qui ea numquam ut aliquam consequatur qui ipsa ratione reiciendis.
Facilis inventore ratione unde et dignissimos, in ut et placeat. Unde aut, dolorem unde sit consequatur soluta aut consectetur laborum. Sed omnis error quas et odio hic ea et illo. Consequuntur nisi assumenda sed perspiciatis at ut ea vel dolores. Sed perspiciatis ipsum sequi ut sint ab ut sit consequuntur. Vel autem commodi omnis perferendis quia aperiam totam nulla nostrum.', 17)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (32, 32, CAST(N'1993-10-15T00:35:22.530' AS DateTime), N'Porro rerum hic iusto, recusandae fugit omnis consectetur sequi aut. Id error qui dignissimos quibusdam deserunt nobis est qui odit; quis eum, omnis velit quibusdam et nihil rerum ipsa voluptatem. Autem recusandae voluptatem error voluptas ipsa velit modi omnis nihil...', 42)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (33, 33, CAST(N'1993-06-25T20:39:25.560' AS DateTime), N'Libero omnis, sed vero facere eius nulla fugiat ex animi. Sed illo distinctio aut enim quam voluptas voluptatum et dolorum. Aperiam beatae perferendis autem nobis aut voluptatem quisquam dolor dolores.', 40)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (34, 34, CAST(N'1991-01-31T06:46:23.900' AS DateTime), N'Aut perferendis aut in qui aut laudantium voluptate laborum nesciunt. Dolorum praesentium ut illo est animi quae magni veniam voluptatem! Voluptatem voluptate doloribus et dolor natus aut sit doloribus labore. Vitae veritatis neque voluptatum suscipit iste ut nobis omnis accusamus. Animi rerum et sunt sapiente distinctio consequatur dolorem minus laborum? Et omnis qui et nihil at eos consequatur accusamus officiis! Quo dicta, reprehenderit architecto cumque exercitationem ex neque architecto odio. Provident magni quas dolorem beatae sit eius et quasi officia. Repellendus inventore corporis ut unde tenetur suscipit autem deleniti necessitatibus. Saepe itaque inventore aspernatur, rerum similique animi saepe impedit obcaecati...
Repudiandae perspiciatis cumque voluptate possimus aut sed et eius voluptatem. Non et ab sint iste quidem voluptas illum voluptates vitae. Ut sint vel qui sint, molestiae atque iste corrupti nam? Doloremque perspiciatis error fugit alias dolores amet consequatur quia ad. Ut quasi officiis saepe mollitia ducimus sed saepe fugit repellat. Qui dolorem qui voluptatum mollitia excepturi neque, dolore quo voluptatum. Culpa velit ab nam quasi blanditiis perferendis vel cupiditate labore. Qui maxime soluta similique libero voluptas velit voluptas quae aperiam! Error aut ullam in quia odio consequatur ut nostrum est.
Reiciendis consequatur et quod, alias in sed natus in quisquam.', 37)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (35, 35, CAST(N'2005-07-23T08:51:13.810' AS DateTime), N'Et perspiciatis sunt maiores aut, vitae et ducimus incidunt ullam.
Libero distinctio corrupti delectus aspernatur ratione ea iste beatae obcaecati. Delectus eius est omnis vel eveniet temporibus eum quibusdam sunt. Ex natus voluptas asperiores in molestiae aut quia voluptatem distinctio! Repellendus eum nemo praesentium nulla fugiat iste et odio earum; sunt quibusdam assumenda ullam debitis excepturi quia, voluptatem et nisi? Possimus eaque, est sit a provident commodi veniam amet maxime.', 27)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (36, 36, CAST(N'1994-12-12T10:13:59.490' AS DateTime), N'Dicta sit atque aut veniam id eum molestiae est sapiente; et quis, minus aut natus labore sed laboriosam provident vel. Laudantium velit mollitia dolor voluptatem debitis nesciunt nihil saepe natus; neque quaerat commodi dolore quos tempore sit beatae error ut; et voluptatibus, velit voluptatem totam officiis voluptatem quia pariatur error. Architecto totam eos totam consequatur quia totam veritatis doloremque provident. Doloribus quos unde, beatae omnis aliquam quis tempore earum sit? Doloremque aspernatur dolor qui quas assumenda eveniet quia alias facere. Dicta exercitationem hic obcaecati placeat facere earum sunt, molestiae temporibus. Aut reiciendis ab amet repudiandae assumenda, ipsam omnis accusantium natus!
Nostrum iste et accusantium iusto et autem sit error quos. Maiores laudantium ut aliquam tempora accusantium sunt magnam fugiat ipsam! Rerum quo aut ea fugit excepturi nihil error est consequatur. Deleniti quis laudantium ut quod, aliquid libero culpa consectetur est. Repellat dolorem explicabo sed ut, similique enim eveniet at labore! Eum deserunt cum sed praesentium nostrum ipsam nihil ea distinctio. Ipsam laborum nulla quis ipsa ab molestias cumque magni veritatis! Omnis rem aut quia sed blanditiis laudantium rerum qui ut. Id aut vero ipsa et voluptatem est sit et sed.
Maiores adipisci voluptatibus, velit nam perferendis et nostrum accusantium exercitationem. Doloremque ut aliquam est ullam rerum magni dolorum aut ratione. Odit qui aspernatur architecto nobis officia aut natus minus eaque! Natus esse quia vel dolor ipsa, quidem molestiae eius quasi. Voluptate rerum autem et cumque voluptas laboriosam ducimus hic unde. Sit et sapiente enim vel saepe aut ut magni magnam! Natus soluta, omnis ad voluptas aut aliquid voluptas sit architecto; perspiciatis vel earum maiores nobis ducimus consequatur, quaerat est voluptate. Aliquam tenetur aspernatur, reiciendis quasi sit eaque qui dolor reprehenderit. Itaque exercitationem, voluptatibus nesciunt perferendis veritatis obcaecati esse sint natus.', 13)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (37, 37, CAST(N'1996-11-10T00:55:02.160' AS DateTime), N'Odit labore sunt ut error iusto quis ipsam eius officiis. Obcaecati tenetur, enim unde ratione voluptatem ipsam et quam tempore? Sequi ipsam dolorum, omnis natus sapiente quia atque perspiciatis corrupti. Consequatur iste adipisci dignissimos aliquid voluptatem ab et asperiores illum; enim aliquam explicabo sit cumque, quidem sit in et est.
Quidem obcaecati neque repellat assumenda ut iure iste sunt autem. Et omnis consequatur explicabo qui tempora ut omnis id qui; error necessitatibus saepe dolores, tenetur est dolore ipsam ullam quibusdam.', 45)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (38, 38, CAST(N'2011-07-16T22:05:01.300' AS DateTime), N'Veniam autem sed delectus itaque atque officiis illo, voluptate id; sit eveniet ab reprehenderit accusamus odit esse ut placeat ratione. Sit repudiandae explicabo omnis voluptatem est unde earum odit sint? Itaque aut veritatis minima numquam ipsam quo molestiae libero ipsum; dolor magni iste repudiandae et sunt, dolorem unde vitae rerum. Vel eos, voluptas velit nisi non incidunt inventore possimus laboriosam. Maxime et perferendis natus aut quasi iste dicta quis dolores. Eum ut id numquam dicta harum dolorem delectus ratione aperiam! Quaerat qui hic obcaecati, quia explicabo cupiditate illum eum voluptas? Tenetur quis est dolores sed ut in perspiciatis eos et.
Vero explicabo repellat dolores nihil error et voluptate ut voluptates; quisquam explicabo, consectetur ullam vel blanditiis vel dolor ipsa voluptas? Natus et, ab ut non asperiores aspernatur natus eum vel! Voluptatem ea, et iste veniam non quo aliquid placeat accusamus. Voluptatem praesentium sit eum culpa qui architecto atque voluptatem vel. Saepe aut, quia non error natus beatae dolores sed fuga! Velit commodi temporibus ab minima omnis recusandae aperiam ut eos; consequatur dolorem perspiciatis voluptates aspernatur sed obcaecati est minus quia. Quidem dolorum incidunt non molestiae omnis excepturi voluptatem repellendus fuga.', 45)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (39, 39, CAST(N'1989-10-25T23:26:29.770' AS DateTime), N'Voluptatum id, qui et corporis molestias eos sed minima dolorem. Voluptate sint quasi nam libero eaque velit saepe delectus dolor. Autem minima dolores sit excepturi eum unde et rem et. Ipsam perspiciatis, quasi ut voluptatem ut qui ex adipisci sed! Sunt doloribus voluptatem placeat cumque atque pariatur nihil doloremque facilis. Doloremque vitae delectus corporis laudantium ab perferendis velit iusto reprehenderit? Natus eaque amet corrupti consequatur excepturi magni aperiam voluptas explicabo.
Consequatur quisquam vel voluptates ipsam fugit unde, quis delectus libero. Consectetur dolorum, ipsa harum nulla dolore ratione est magnam veniam. Praesentium voluptas error et ipsam dolores ut veniam magni accusantium.', 39)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (40, 40, CAST(N'1983-04-17T07:57:48.680' AS DateTime), N'Quae velit nesciunt omnis iste consequuntur temporibus suscipit facere aspernatur. Porro sapiente assumenda quia quo qui itaque consectetur eos repudiandae. Eius voluptas ullam provident officiis ullam obcaecati ipsam et blanditiis!
Sequi quia quis et beatae enim ratione voluptatem blanditiis dolorem. Incidunt natus ullam eos earum numquam nulla unde, doloremque ut! Assumenda mollitia incidunt, assumenda quo iure aliquam porro in qui.
Et aut autem ducimus expedita, culpa ut sint magni molestiae. Architecto perspiciatis vel quod similique voluptatibus temporibus maiores, labore aut? Natus ad ipsum et omnis veritatis, voluptatem molestiae aliquam officia! Amet aperiam accusantium optio saepe qui deserunt quidem temporibus similique. Magni maiores odit vitae quod expedita excepturi velit assumenda et.', 13)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (41, 41, CAST(N'2000-12-27T06:25:03.050' AS DateTime), N'Rerum expedita nisi ut dolorem nostrum similique quia iusto iure. Omnis qui aut, saepe qui magni et distinctio voluptate repellat. Blanditiis sit, nihil nam repudiandae soluta natus voluptates ex ut. Nam beatae sunt deserunt quaerat repudiandae omnis aut esse voluptas! Ullam autem architecto, natus enim voluptatem ut aut tempora quis. Reprehenderit sapiente unde fuga et distinctio dolor porro facilis nesciunt! Fugiat dolor eaque veniam voluptatem doloremque illum consequuntur explicabo omnis. Error quos cupiditate laboriosam omnis eaque est laboriosam ea asperiores. Similique amet voluptatem rem architecto soluta ea temporibus blanditiis quo. Vero eligendi error nihil, velit maiores quia dolor minus et!
Perspiciatis ipsum quod consequatur sed odio, non eaque labore voluptatem. Enim deserunt odit nostrum et suscipit quibusdam dignissimos non nihil? Quasi aut nihil eos, tenetur itaque totam ad est molestiae. Ut dolorem placeat et voluptate deserunt aperiam magnam nesciunt sed! Repellat est cupiditate omnis in consequatur quisquam perferendis rerum et. Facere sunt nihil nesciunt sed natus sit, excepturi dolor suscipit. Assumenda eius quae velit sunt officiis expedita fugit eaque maiores? Quia laboriosam autem molestiae ut corrupti omnis reiciendis qui obcaecati. Enim sed ut numquam inventore eum, et voluptatem iste quis.', 50)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (42, 42, CAST(N'2013-08-17T07:10:36.910' AS DateTime), N'Eveniet quaerat iure tempora exercitationem quasi non iste ad non. Rerum et sit veniam veritatis est soluta provident voluptatem dicta. Consectetur dolorem illo commodi quia aliquid modi ut veritatis deserunt. Et voluptatum, at qui et quam ipsam error consequatur qui!', 34)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (43, 43, CAST(N'2013-02-11T10:33:40.250' AS DateTime), N'Unde asperiores, eos est distinctio unde sed id cumque ipsa. Omnis obcaecati dolor ipsa natus perspiciatis reiciendis, et ut consectetur. Sit nemo, soluta culpa architecto sit omnis eaque perspiciatis ut. Ut rem non animi, error quia ipsum quae nostrum illum.', 16)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (44, 44, CAST(N'2015-05-25T05:15:44.620' AS DateTime), N'A quidem magnam in facere explicabo modi id tempora velit; perspiciatis non corporis et quia esse dolore iusto mollitia ducimus. Libero exercitationem adipisci corporis neque architecto nostrum itaque reiciendis doloremque.', 22)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (45, 45, CAST(N'2005-07-26T14:16:54.050' AS DateTime), N'Voluptatem sed libero corporis doloribus explicabo sit nesciunt unde aut. Blanditiis culpa animi necessitatibus et earum cum, qui adipisci illo? Sequi maiores voluptatem eligendi veniam officia non et voluptatem aliquid. Perspiciatis sit hic natus id ad officia vitae consectetur quia. Autem qui atque temporibus molestias, consectetur voluptatibus magni libero exercitationem.', 9)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (46, 46, CAST(N'2016-10-30T06:02:53.280' AS DateTime), N'Blanditiis voluptatem est, dolor nam perferendis modi voluptas error non. Quia nihil, quo quae velit maxime sint consequatur quia earum. Perspiciatis ex culpa ipsa modi animi sed molestiae consectetur qui. In explicabo, nemo ducimus quibusdam dolores nemo enim aliquid voluptate! Tempora consectetur aut vero accusamus possimus ad sit maxime qui. Ipsa laborum dolore obcaecati, ducimus dignissimos sint nam odio soluta! Repudiandae odit et itaque vero perspiciatis praesentium sit dolor enim. Aliquid molestiae dolores nihil molestias, quaerat facere quia doloribus non. Est aliquam commodi assumenda provident dolorum quod tenetur recusandae nihil.
Rem non dolorem sequi cum eaque pariatur ipsa voluptatem ut. Ut quas debitis error, et qui est eveniet ea non; nostrum eos inventore, voluptate dolore quaerat praesentium repellat sapiente ut. Optio quia mollitia nam voluptatem doloremque natus et animi quia.', 19)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (47, 47, CAST(N'2012-06-27T14:50:26.600' AS DateTime), N'Voluptate laboriosam dolor mollitia velit est delectus sed est nisi.
Suscipit dicta sequi, dolore et praesentium non molestiae et perspiciatis; adipisci laudantium et sit adipisci quo placeat fuga, eos eligendi. Assumenda ratione labore inventore ut atque qui molestias sed doloribus; voluptatem iusto ducimus blanditiis nam, nihil ullam repellat beatae laudantium. Molestiae et enim iure laborum aut sed eos praesentium enim; eum dolorem fugit, et exercitationem fuga autem ut natus delectus. Totam maiores quia et, cum quia earum in ea quia. Est omnis nisi veritatis, quaerat ducimus nostrum vero quia neque. Accusantium eum dolorem quae cumque aut eos, totam commodi perspiciatis. Est sunt qui nulla non ut aliquam cumque voluptatem nam.
Ea nam, harum vitae delectus perspiciatis natus non soluta eius.', 14)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (48, 48, CAST(N'1995-07-04T09:20:01.680' AS DateTime), N'Quisquam natus qui sit delectus culpa repellat assumenda nesciunt sit. Aut natus sit repellendus nesciunt enim voluptatem dolor rem omnis! Adipisci voluptatem praesentium natus voluptatem enim qui error eum sunt. Error ad iure ut fugiat voluptas esse magnam quam officiis? Quo qui consectetur libero assumenda dolore aperiam dolor magnam est; praesentium maxime officiis fugit aspernatur repellendus quod et consequatur laborum.
Aut ab temporibus, omnis libero quasi minus sed quia sunt. Omnis nisi culpa quis quam voluptates dolores repellat incidunt cum.', 5)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (49, 49, CAST(N'2001-10-05T09:11:57.340' AS DateTime), N'Iusto sed, illo quam sit ratione incidunt autem molestiae sed. Et voluptatem mollitia quibusdam ratione voluptatum iste officia ipsam sit. A enim dolor aut dolores nihil ut sint quos veniam.
Tempore pariatur autem est enim error laborum voluptatibus voluptas corrupti. Molestiae corporis, eveniet et est asperiores quae voluptatum quidem ullam. Unde libero suscipit aliquam quis sequi similique maiores amet rerum! Nisi sint iste aut veniam beatae suscipit est dicta sapiente. Eligendi voluptatem eveniet adipisci dolor dolores magnam sapiente velit vero. Aspernatur corporis, magnam quae corporis quis laboriosam voluptas omnis error.
Ut sed deleniti ut est et possimus consectetur quae voluptatem. Sit cupiditate consequuntur exercitationem sapiente eaque autem repellendus unde est. Pariatur est quae aut error aliquam eius ipsum corrupti dolore. Enim est unde aut sed vel repudiandae et nulla ex; qui quia perspiciatis harum corporis ipsum fugiat non architecto sit. Natus fugiat error consequatur pariatur nostrum saepe error magni sunt. Consectetur ipsam dolorem est saepe qui aut ut ad voluptatem. Omnis qui voluptatem voluptatum nobis esse aliquid omnis quaerat nihil. Sit unde porro aut sunt perferendis beatae reprehenderit ea odit.', 37)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (50, 50, CAST(N'1978-03-21T11:09:23.320' AS DateTime), N'Doloremque quia, qui molestiae eum necessitatibus et ipsum unde accusantium. Perspiciatis iste adipisci vitae molestiae tempore ea sit non et! Velit porro perspiciatis officiis voluptatum deserunt qui dolorum non iste. Provident error et non provident iste qui, obcaecati amet sit.
Saepe qui facilis aut molestiae omnis velit aut eum quidem. Quis expedita distinctio sit tempora nesciunt dolores, praesentium porro ducimus! Quia totam dolores dicta et dolore aut minima nisi unde. Quos omnis perspiciatis, dolores exercitationem totam sed temporibus est quia.', 38)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (51, 57, CAST(N'2020-06-16T07:49:41.947' AS DateTime), N'اللغه العربى القياسيه الحديثه هى اللغه القياسيه (استاندارد/standard) و النوع الوحيد من اللغه اللى فى الاساس بيتكتب و بيستعمل فى الكلام الرسمى.[3]  و هى جزء من اللغه الماكرو[5] العربى. اللغه المالطى, اللغه الاصليّه فى مالطا, كان بيعتبرها الاصوليين العرب ”لهجه“ من العربى قبل توحيد طريقة كتابتها و الاعتراف بيها رسمى. العربى القياسى الحديث صعب على اللى ما بيعرفش يقرا ويكتب.', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (52, 57, CAST(N'2020-06-16T07:51:12.740' AS DateTime), N'اللغه العربى القياسيه الحديثه هى اللغه القياسيه (استاندارد/standard) و النوع الوحيد من اللغه اللى فى الاساس بيتكتب و بيستعمل فى الكلام الرسمى.[3]  و هى جزء من اللغه الماكرو[5] العربى. اللغه المالطى, اللغه الاصليّه فى مالطا, كان بيعتبرها الاصوليين العرب ”لهجه“ من العربى قبل توحيد طريقة كتابتها و الاعتراف بيها رسمى. العربى القياسى الحديث صعب على اللى ما بيعرفش يقرا ويكتب.', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (53, 57, CAST(N'2020-06-16T08:22:22.983' AS DateTime), N'l;asdmfl;masd;fmasdfkmdasf', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (57, 60, CAST(N'2020-06-16T08:43:08.377' AS DateTime), N'dasdasdasdasfasf', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (58, 61, CAST(N'2020-06-16T08:44:32.523' AS DateTime), N'a;sdklmal;sdasodkoakdokpa', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (59, 57, CAST(N'2020-06-16T12:54:14.107' AS DateTime), N'neq msg', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (60, 57, CAST(N'2020-06-16T13:02:44.340' AS DateTime), N'askjdjasdjkahjsdh', 1053)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (61, 57, CAST(N'2020-06-16T13:04:27.530' AS DateTime), N'hi back', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (62, 57, CAST(N'2020-07-01T16:46:06.153' AS DateTime), N'heelloo', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (63, 61, CAST(N'2020-07-01T16:46:24.940' AS DateTime), N'helo', 1057)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (64, 62, CAST(N'2020-07-01T16:55:38.040' AS DateTime), N'i have a question', 1067)
INSERT [dbo].[Msg] ([MsgID], [ChatID], [Date], [MsgContent], [UserID]) VALUES (65, 63, CAST(N'2020-07-01T16:57:32.277' AS DateTime), N'Hi', 1067)
SET IDENTITY_INSERT [dbo].[Msg] OFF
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (1, 1, CAST(N'2020-01-20T09:28:10.880' AS DateTime), N'Vero veritatis maxime. Dolor vel.
', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (2, 2, CAST(N'2020-02-01T15:00:55.750' AS DateTime), N'Asperiores libero perspiciatis.
', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (3, 3, CAST(N'2020-04-28T16:49:11.790' AS DateTime), N'Provident accusantium aperiam.
', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (4, 4, CAST(N'2020-05-10T06:10:04.300' AS DateTime), N'Ut omnis quisquam. Quibusdam.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (5, 5, CAST(N'2020-02-24T04:43:18.260' AS DateTime), N'Veritatis totam est. Ex labore.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (6, 6, CAST(N'2020-03-30T09:51:14.020' AS DateTime), N'Quia et aut.
Perspiciatis quidem sed.', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (7, 7, CAST(N'2020-03-07T15:46:46.750' AS DateTime), N'Cum culpa quae. Et nostrum cumque!
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (8, 8, CAST(N'2020-03-03T18:34:56.480' AS DateTime), N'Facere et amet. Iure at nam.
Facere.', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (9, 9, CAST(N'2020-01-13T16:25:42.780' AS DateTime), N'Natus perspiciatis voluptatem.
', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (10, 10, CAST(N'2020-03-14T09:15:35.680' AS DateTime), N'Omnis assumenda inventore. Sed quia;
', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (11, 11, CAST(N'2020-03-18T18:14:16.140' AS DateTime), N'Eos eius et. Praesentium qui est.', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (12, 12, CAST(N'2020-02-20T00:09:59.530' AS DateTime), N'Non aliquam exercitationem. Non!
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (13, 13, CAST(N'2020-03-08T03:07:33.590' AS DateTime), N'Eum nobis alias.
Nisi eos esse.
', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (14, 14, CAST(N'2020-05-11T08:25:25.170' AS DateTime), N'Qui quod mollitia. Voluptas a sunt.
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (15, 15, CAST(N'2020-04-05T05:00:50.810' AS DateTime), N'Omnis praesentium laudantium. Quidem?
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (16, 16, CAST(N'2020-01-22T02:08:38.080' AS DateTime), N'Animi magnam architecto; impedit.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (17, 17, CAST(N'2020-04-09T09:22:07.400' AS DateTime), N'Ea voluptates debitis. Unde et quasi.', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (18, 18, CAST(N'2020-04-27T16:35:14.920' AS DateTime), N'Odit sunt repudiandae. Tempore vel!', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (19, 19, CAST(N'2020-04-05T04:57:12.090' AS DateTime), N'In qui beatae. Molestiae ea placeat.', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (20, 20, CAST(N'2020-02-15T17:48:04.220' AS DateTime), N'Asperiores consequuntur omnis;
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (21, 21, CAST(N'2020-04-15T07:21:48.690' AS DateTime), N'Dicta perspiciatis vero; qui.', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (22, 22, CAST(N'2020-04-25T21:07:16.960' AS DateTime), N'Ad consequatur maxime; molestiae.
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (23, 23, CAST(N'2020-04-19T14:41:33.670' AS DateTime), N'Est ut est. Voluptates sint!
', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (24, 24, CAST(N'2020-01-23T04:46:32.930' AS DateTime), N'Recusandae sapiente dolor.
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (25, 25, CAST(N'2020-02-12T21:22:29.090' AS DateTime), N'Et in et. Voluptas aut ut.
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (26, 26, CAST(N'2020-05-03T20:45:45.780' AS DateTime), N'Voluptatem consequatur saepe. Omnis!
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (27, 27, CAST(N'2020-05-08T20:52:20.740' AS DateTime), N'Et exercitationem natus. Amet ut.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (28, 28, CAST(N'2020-04-13T16:32:18.560' AS DateTime), N'Omnis recusandae magni. Ab nobis!
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (29, 29, CAST(N'2020-04-18T20:48:51.940' AS DateTime), N'Rem explicabo perspiciatis. Unde;
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (30, 30, CAST(N'2020-04-20T12:15:38.890' AS DateTime), N'Magni deleniti ea. Tempore sit?
', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (31, 31, CAST(N'2020-01-27T16:49:02.760' AS DateTime), N'Error eius et. Error voluptatem omnis;', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (32, 32, CAST(N'2020-02-24T01:03:05.980' AS DateTime), N'Veritatis eius eveniet. Natus.
', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (33, 33, CAST(N'2020-03-26T20:32:35.100' AS DateTime), N'Perferendis sint sed. Quo laborum.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (34, 34, CAST(N'2020-01-12T18:21:57.220' AS DateTime), N'Inventore recusandae odio. Quo!
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (35, 35, CAST(N'2020-03-05T05:27:14.390' AS DateTime), N'Soluta perspiciatis tenetur; est.
', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (36, 36, CAST(N'2020-01-29T13:41:07.350' AS DateTime), N'Aut adipisci nostrum. Nulla eius rem!', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (37, 37, CAST(N'2020-05-10T13:35:18.690' AS DateTime), N'Similique veniam voluptates; beatae et.', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (38, 38, CAST(N'2020-02-23T09:35:23.030' AS DateTime), N'Vitae iure voluptates. Laborum eaque.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (39, 39, CAST(N'2020-05-12T07:25:25.150' AS DateTime), N'Qui repudiandae voluptates; est.
', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (40, 40, CAST(N'2020-04-17T06:58:51.360' AS DateTime), N'Eaque sit quo. Soluta ut cum!', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (41, 41, CAST(N'2020-04-29T20:10:46.550' AS DateTime), N'Omnis quos unde. Sint architecto et.', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (42, 42, CAST(N'2020-04-12T03:47:23.360' AS DateTime), N'Hic eius id. Consequatur molestias.
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (43, 43, CAST(N'2020-05-03T08:41:58.240' AS DateTime), N'Eum et dolores; voluptatem dolor.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (44, 44, CAST(N'2020-03-13T23:06:08.000' AS DateTime), N'Amet unde voluptatem. Saepe totam et.', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (45, 45, CAST(N'2020-02-05T18:43:11.560' AS DateTime), N'Corporis quae perspiciatis.
', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (46, 46, CAST(N'2020-03-22T07:12:45.340' AS DateTime), N'Ut delectus sapiente. Minima ratione.', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (47, 47, CAST(N'2020-02-05T18:23:52.460' AS DateTime), N'Voluptatem expedita sint.
Omnis.
', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (48, 48, CAST(N'2020-04-23T04:41:10.860' AS DateTime), N'Consequuntur eos aut; pariatur?
', 1)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (49, 49, CAST(N'2020-03-30T21:19:33.000' AS DateTime), N'Dolorem aliquid fuga. Voluptatum nulla!', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (50, 50, CAST(N'2020-02-27T22:23:32.480' AS DateTime), N'A ipsum sed. Nesciunt earum?
', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (60, 2, CAST(N'2020-05-25T20:15:21.583' AS DateTime), N'22', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (61, 1, CAST(N'2020-05-25T20:15:42.053' AS DateTime), N'dfsdfsdfsfdsf', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (62, 2, CAST(N'2020-05-25T20:16:16.580' AS DateTime), N'dfsdfsdfsfdsf', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (63, 2, CAST(N'2020-05-25T20:21:49.777' AS DateTime), N'dfsdfsdfsfdsf', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (64, 1, CAST(N'2020-05-25T20:25:54.537' AS DateTime), N'dssd', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (65, 2, CAST(N'2020-05-25T20:26:17.947' AS DateTime), N'dfsdfsdfsfdsf', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (66, 2, CAST(N'2020-05-25T20:27:32.097' AS DateTime), N'dfsdfsdfsfdsf', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (67, 1, CAST(N'2020-05-25T20:27:32.120' AS DateTime), N'sadadasd', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (68, 1057, CAST(N'2020-05-31T02:44:58.143' AS DateTime), N'this is my answer', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (69, 1057, CAST(N'2020-05-31T02:46:11.920' AS DateTime), N'this is my answer', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (70, 1053, CAST(N'2020-05-31T02:52:21.897' AS DateTime), N'this is my answer', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (71, 1053, CAST(N'2020-05-31T02:52:28.153' AS DateTime), N'this is my answer', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (72, 1053, CAST(N'2020-05-31T02:52:31.840' AS DateTime), N'this is my answer', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (73, 1057, CAST(N'2020-05-31T14:28:26.493' AS DateTime), N'this is my answer', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (74, 1053, CAST(N'2020-05-31T21:33:10.720' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (75, 1053, CAST(N'2020-05-31T21:33:49.180' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (76, 1053, CAST(N'2020-05-31T21:33:51.680' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (77, 1053, CAST(N'2020-05-31T21:48:52.583' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (78, 1053, CAST(N'2020-05-31T21:49:50.570' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (79, 1057, CAST(N'2020-05-31T21:51:05.137' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (80, 1053, CAST(N'2020-05-31T21:52:15.693' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (81, 1053, CAST(N'2020-05-31T21:53:50.777' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (82, 1053, CAST(N'2020-05-31T21:55:13.840' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (83, 1053, CAST(N'2020-05-31T21:56:48.180' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (84, 1053, CAST(N'2020-05-31T21:59:20.847' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (85, 1053, CAST(N'2020-05-31T22:01:31.307' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (86, 1053, CAST(N'2020-05-31T22:09:49.037' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (87, 1053, CAST(N'2020-05-31T22:10:53.293' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (88, 1053, CAST(N'2020-05-31T22:12:37.667' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (89, 1053, CAST(N'2020-05-31T22:14:36.143' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (90, 1053, CAST(N'2020-05-31T22:17:12.293' AS DateTime), N'asked for medical info', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (91, 1053, CAST(N'2020-06-09T02:02:23.070' AS DateTime), N'answer', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (92, 1053, CAST(N'2020-06-09T02:06:06.483' AS DateTime), N'new Answer', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (93, 1053, CAST(N'2020-06-09T02:08:39.647' AS DateTime), N'aaaa', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (94, 1053, CAST(N'2020-06-09T02:11:05.477' AS DateTime), N'qqqq', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (95, 1053, CAST(N'2020-06-09T02:11:53.770' AS DateTime), N'1515', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (96, 1053, CAST(N'2020-06-09T02:13:28.733' AS DateTime), N'asdas', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (97, 1053, CAST(N'2020-06-09T02:14:07.803' AS DateTime), N'sda', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (98, 1053, CAST(N'2020-06-09T02:17:03.033' AS DateTime), N'dasd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (99, 1063, CAST(N'2020-06-09T02:20:45.987' AS DateTime), N'das', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (100, 1063, CAST(N'2020-06-09T02:21:22.613' AS DateTime), N'dasd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (101, 1063, CAST(N'2020-06-09T02:21:25.497' AS DateTime), N'dasddasd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (102, 1063, CAST(N'2020-06-09T02:21:27.113' AS DateTime), N'dasddasd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (103, 1063, CAST(N'2020-06-09T02:21:29.113' AS DateTime), N'dasddasdasdasd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (104, 1063, CAST(N'2020-06-09T02:21:32.270' AS DateTime), N'dasdasdd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (105, 1063, CAST(N'2020-06-09T02:28:15.503' AS DateTime), N'sadd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (106, 1063, CAST(N'2020-06-09T02:28:19.617' AS DateTime), N'asdasd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (107, 1057, CAST(N'2020-06-09T23:19:40.123' AS DateTime), N'dasdadas', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (109, 1057, CAST(N'2020-06-10T07:00:06.590' AS DateTime), N'asdad', 3)
GO
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (110, 1057, CAST(N'2020-06-10T07:05:00.190' AS DateTime), N'jslkjaskljd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (111, 1057, CAST(N'2020-06-10T07:05:43.860' AS DateTime), N'dasdada', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (112, 1057, CAST(N'2020-06-10T07:06:44.040' AS DateTime), N'dsadsa', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (113, 1057, CAST(N'2020-06-10T07:10:26.467' AS DateTime), N'new answer', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (114, 1057, CAST(N'2020-06-10T17:38:39.340' AS DateTime), N'asdasd', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (115, 1057, CAST(N'2020-06-14T17:49:08.093' AS DateTime), N'John answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (116, 1053, CAST(N'2020-06-15T04:22:37.700' AS DateTime), N'ahmed gamal A answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (117, 1053, CAST(N'2020-06-15T04:22:48.210' AS DateTime), N'ahmed gamal A answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (118, 1057, CAST(N'2020-06-15T08:46:10.733' AS DateTime), N'John mentioned you in a question', 0)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (119, 1057, CAST(N'2020-06-15T09:03:35.417' AS DateTime), N'John answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (120, 1053, CAST(N'2020-06-15T09:44:28.547' AS DateTime), N'John followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (121, 1053, CAST(N'2020-06-15T10:11:05.780' AS DateTime), N'John followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (122, 1053, CAST(N'2020-06-15T13:38:43.077' AS DateTime), N'John followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (123, 1057, CAST(N'2020-06-15T13:39:47.377' AS DateTime), N'John answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (124, 1057, CAST(N'2020-06-15T13:40:44.930' AS DateTime), N'John answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (125, 1053, CAST(N'2020-06-15T14:24:29.887' AS DateTime), N'12John followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (126, 1053, CAST(N'2020-06-15T14:28:13.510' AS DateTime), N'ahmed gamal A answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (127, 1057, CAST(N'2020-06-16T01:16:05.640' AS DateTime), N'12John answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (128, 8, CAST(N'2020-06-16T04:03:13.570' AS DateTime), N'12John followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (129, 8, CAST(N'2020-06-16T04:03:16.027' AS DateTime), N'12John followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (130, 1057, CAST(N'2020-06-16T04:53:31.227' AS DateTime), N'12John answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (131, 1057, CAST(N'2020-06-16T13:37:39.013' AS DateTime), N'12John answered your question', 3)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (132, 1055, CAST(N'2020-07-01T16:54:52.157' AS DateTime), N'DinaFahmy followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (133, 1053, CAST(N'2020-07-01T16:55:08.420' AS DateTime), N'DinaFahmy followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (134, 37, CAST(N'2020-07-01T16:55:16.883' AS DateTime), N'DinaFahmy followed you', 2)
INSERT [dbo].[Notification] ([ID], [UserID], [Date], [NotificationContent], [Type]) VALUES (135, 1067, CAST(N'2020-07-01T16:58:18.630' AS DateTime), N'DinaFahmy mentioned you in a question', 0)
SET IDENTITY_INSERT [dbo].[Notification] OFF
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (1, 21)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (2, 44)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (10, 7)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (23, 27)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (30, 16)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (31, 49)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (39, 46)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (40, 48)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (46, 47)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (50, 45)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (64, 51)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (67, 52)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (68, 53)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (69, 54)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (70, 55)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (71, 56)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (72, 57)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (73, 58)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (76, 76)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (91, 59)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (92, 60)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (93, 61)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (94, 62)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (95, 63)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (96, 64)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (97, 65)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (98, 66)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (99, 67)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (100, 68)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (101, 69)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (102, 70)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (103, 71)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (104, 72)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (105, 73)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (106, 74)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (107, 75)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (109, 77)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (110, 78)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (111, 79)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (112, 80)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (113, 81)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (114, 82)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (116, 84)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (117, 85)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (126, 89)
INSERT [dbo].[Notification_Answer] ([NotificationID], [AnswerID]) VALUES (131, 92)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (3, 27)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (9, 46)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (11, 26)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (13, 49)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (21, 18)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (35, 47)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (44, 31)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (48, 32)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (60, 60)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (62, 62)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (63, 63)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (65, 64)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (66, 65)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (118, 70)
INSERT [dbo].[Notification_Asked] ([NotificationID], [MentionID]) VALUES (135, 71)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (4, 9)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (5, 13)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (7, 11)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (8, 14)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (12, 1)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (16, 15)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (17, 12)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (19, 7)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (27, 6)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (29, 3)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (33, 2)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (36, 4)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (38, 5)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (43, 10)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (45, 8)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (119, 54)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (120, 55)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (121, 56)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (124, 57)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (127, 58)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (128, 59)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (131, 58)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (132, 59)
INSERT [dbo].[Notification_Follow] ([NotificationID], [FollowID]) VALUES (133, 60)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (6, 47)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (14, 12)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (15, 50)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (18, 3)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (20, 32)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (22, 49)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (24, 48)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (25, 26)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (26, 37)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (34, 8)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (37, 17)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (41, 43)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (42, 45)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (47, 46)
INSERT [dbo].[Notification_MedicalInfo] ([NotificationID], [MedicalInfoID]) VALUES (49, 31)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1, CAST(N'1975-10-28T00:00:00.000' AS DateTime), N'M', 0, 84, 169, 2, 591)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (3, CAST(N'1950-01-05T00:00:00.000' AS DateTime), N'F', 1, 67, 167, 0, 1108)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (5, CAST(N'1950-04-25T00:00:00.000' AS DateTime), N'M', 1, 61, 155, 0, 641)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (6, CAST(N'1953-12-08T00:00:00.000' AS DateTime), N'M', 0, 99, 189, 1, 1)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (9, CAST(N'1980-10-20T00:00:00.000' AS DateTime), N'F', 0, 68, 165, 0, 1325)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (10, CAST(N'1950-03-20T00:00:00.000' AS DateTime), N'F', 0, 98, 173, 2, 449)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (11, CAST(N'1954-10-30T00:00:00.000' AS DateTime), N'F', 2, 52, 166, 2, 787)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (12, CAST(N'1987-11-04T00:00:00.000' AS DateTime), N'M', 1, 65, 163, 1, 1592)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (13, CAST(N'1950-01-04T00:00:00.000' AS DateTime), N'M', 1, 61, 183, 0, 1849)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (20, CAST(N'1956-09-28T00:00:00.000' AS DateTime), N'F', 2, 61, 187, 0, 6)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (23, CAST(N'1996-02-20T00:00:00.000' AS DateTime), N'M', 2, 75, 152, 0, 1695)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (25, CAST(N'1968-09-28T00:00:00.000' AS DateTime), N'M', 1, 71, 175, 2, 98)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (28, CAST(N'1984-07-16T00:00:00.000' AS DateTime), N'F', 2, 61, 182, 2, 1750)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (29, CAST(N'1987-02-20T00:00:00.000' AS DateTime), N'F', 1, 97, 154, 2, 144)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (30, CAST(N'1994-09-25T00:00:00.000' AS DateTime), N'M', 2, 50, 181, 1, 775)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (33, CAST(N'1987-01-02T00:00:00.000' AS DateTime), N'M', 1, 64, 158, 3, 538)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (34, CAST(N'1950-01-05T00:00:00.000' AS DateTime), N'M', 0, 77, 159, 1, 622)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (35, CAST(N'1979-02-03T00:00:00.000' AS DateTime), N'F', 0, 92, 182, 3, 1944)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (40, CAST(N'1951-10-19T00:00:00.000' AS DateTime), N'M', 0, 62, 161, 1, 1974)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (41, CAST(N'1999-05-13T00:00:00.000' AS DateTime), N'M', 1, 54, 170, 3, 1812)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (47, CAST(N'1971-03-30T00:00:00.000' AS DateTime), N'M', 1, 78, 151, 3, 476)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (50, CAST(N'1950-04-10T00:00:00.000' AS DateTime), N'F', 1, 97, 179, 0, 1959)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1057, CAST(N'2019-01-06T17:16:40.000' AS DateTime), N'M', 0, 20, 155, 0, 15)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1058, CAST(N'2000-12-01T00:00:00.000' AS DateTime), N'M', 2, 15, 15, 1, NULL)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1059, CAST(N'2000-01-21T22:00:00.000' AS DateTime), N'M', 1, 15, 15, 2, NULL)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1060, CAST(N'2000-01-21T22:00:00.000' AS DateTime), N'M', 2, 15, 15, 2, NULL)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1061, CAST(N'2000-01-21T22:00:00.000' AS DateTime), N'M', 1, 15, 15, 0, NULL)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1062, CAST(N'2000-01-21T22:00:00.000' AS DateTime), N'M', 0, 21, 150, 2, NULL)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1063, CAST(N'1989-05-31T21:00:00.000' AS DateTime), N'0', 2, 50, 50, 1, NULL)
INSERT [dbo].[Patient] ([PatientID], [BirthDate], [Gender], [MedicalCondetion], [Weight], [height], [LifeStyle], [Points]) VALUES (1067, CAST(N'1997-01-20T22:00:00.000' AS DateTime), N'1', 1, 51, 160, 1, NULL)
SET IDENTITY_INSERT [dbo].[Patient_Doctors(follow)] ON 

INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (3, 28, 37, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (4, 3, 48, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (5, 29, 49, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (6, 25, 2, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (7, 35, 8, 5)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (8, 40, 15, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (9, 23, 27, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (10, 23, 4, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (11, 33, 26, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (12, 11, 14, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (13, 5, 38, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (14, 50, 8, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (15, 20, 32, 5)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (16, 25, 39, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (17, 23, 46, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (18, 10, 36, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (19, 11, 42, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (20, 10, 48, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (21, 28, 19, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (22, 47, 15, 1)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (23, 33, 4, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (24, 11, 15, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (25, 11, 15, 5)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (26, 11, 42, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (27, 40, 16, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (28, 1, 36, 1)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (29, 47, 15, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (30, 33, 19, 1)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (31, 33, 2, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (32, 9, 36, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (33, 41, 26, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (34, 20, 8, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (35, 47, 18, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (36, 40, 27, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (37, 35, 46, 1)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (38, 28, 36, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (39, 30, 14, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (40, 33, 15, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (41, 25, 15, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (42, 5, 36, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (43, 50, 8, 1)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (44, 28, 37, 5)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (45, 41, 45, 5)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (46, 50, 15, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (47, 30, 18, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (48, 30, 49, 1)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (49, 50, 49, 0)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (50, 5, 43, 4)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (51, 1057, 43, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (57, 1057, 1053, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (58, 1067, 1055, 2)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (59, 1067, 1053, 3)
INSERT [dbo].[Patient_Doctors(follow)] ([ID], [PatienID], [DoctorID], [Access_MedicalInfo]) VALUES (60, 1067, 37, 3)
SET IDENTITY_INSERT [dbo].[Patient_Doctors(follow)] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (1, 20, 1, N'Word of mouth', N'Natus odit sit quam architecto magnam voluptatem asperiores voluptatum iste. Ut veritatis sed excepturi distinctio officiis sint recusandae qui et? Dolorum aut ut ab expedita quae velit autem harum ducimus. Perspiciatis maxime unde omnis libero accusamus voluptas sed mollitia laudantium. Totam reiciendis nesciunt corporis natus nam facilis iste omnis similique. Natus alias, asperiores beatae voluptatem temporibus impedit libero aut illo.
Incidunt saepe qui modi ut, ad quaerat maiores ad illum; natus eos minima repellendus sunt omnis ut omnis blanditiis dolor.', 1, CAST(N'2020-03-11T21:05:28.510' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (2, 26, 1, N'TV Adds', N'Eius hic, eos non doloribus sit dolor omnis ex quo. Rerum unde laudantium vitae molestiae tempore maiores deserunt architecto quia; error architecto similique molestiae sint ratione et sed nostrum dolor. Delectus ipsum delectus repellat, hic mollitia repudiandae molestias exercitationem fugit. Incidunt facere et sunt cumque eos quibusdam accusantium laudantium qui...', 5, CAST(N'2020-02-02T17:52:56.210' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (3, 30, 1, N'Referral', N'Pariatur sit perspiciatis, nulla quae perspiciatis modi ut dolorem quo.
Dolore quod dolores facere aspernatur est eaque laborum minima autem. Est ab eaque possimus unde quia sunt qui molestias nihil; autem error vel neque commodi libero ea, eum sed et.', 8, CAST(N'2020-04-26T19:41:32.470' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (4, 4, 1, N'Referral', N'Magnam minus nisi iste ex voluptatum aliquam tempore velit maxime.
Esse eum veniam expedita quasi vitae aliquam dicta quia enim. Itaque sunt qui fugit autem voluptas possimus quos sit perspiciatis. Iusto placeat praesentium sed autem sed est sit qui eius! Error eaque iste numquam quos, accusantium velit vero neque iste. In eos ad placeat aperiam sit quo, voluptatum non eaque.
Odit voluptatem optio sed quia mollitia natus sint eos voluptatem.', 6, CAST(N'2020-02-03T20:37:18.710' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (5, 14, 1, N'Direct', N'Eaque in voluptatem obcaecati quia eius rerum debitis perspiciatis vel. Sed tenetur sed, debitis ut nam et ullam quia mollitia. Nostrum maxime culpa maxime repudiandae sed ipsum esse fugit repellat! Eligendi expedita praesentium nisi corrupti, enim quos aliquid est adipisci. Hic vero sunt eveniet cupiditate quo quasi quia exercitationem excepturi! Eligendi nobis non nulla natus tenetur debitis dolorum deserunt unde. Expedita molestias voluptas ut enim sed voluptas vitae unde doloremque! Iste quis est natus est sunt illo totam quas sit? Accusantium voluptatem in consequatur dicta, ea error facilis veritatis maxime.', 1, CAST(N'2020-04-25T03:31:29.310' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (6, 19, 2, N'Newspaper', N'Enim aut unde cumque ut tenetur quos consequatur aspernatur omnis. Natus ratione sapiente, atque doloremque enim ipsum sequi dolorum molestias? Reiciendis voluptas, maxime voluptatum dolorem vel in explicabo est eaque. Aut esse repudiandae recusandae quia ducimus dolor labore sed eius...
Vel voluptatem soluta eius ad iusto laboriosam atque et aspernatur. Sunt optio, asperiores omnis sed quod natus qui earum temporibus. Error esse dolorem, sunt ut quod voluptates nisi voluptatem aut! Illo ut sequi vel laudantium eum vel officia provident unde. Sapiente molestiae, consequuntur iste libero veniam ducimus dolore laboriosam autem. Ipsa consequatur at voluptate eum sit, est sint tempora quia.', 3, CAST(N'2020-04-30T13:55:34.080' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (7, 24, 2, N'Google Adds', N'Perspiciatis voluptatem vitae ducimus quos rerum repellendus est omnis unde. Corporis praesentium, saepe consectetur cum corporis facere repellendus est ad; quia totam aut alias corrupti dolorum esse aliquam vero ex. Assumenda natus molestias mollitia quo et aut error qui ipsam; velit et aut doloremque ea cumque reiciendis error et numquam. Facilis blanditiis repellat, eos et ut impedit iste aut ut. Nam ea, ullam magnam praesentium molestiae eveniet qui perspiciatis aliquid; in impedit reiciendis est illo similique, ut vero sed itaque. Itaque assumenda et sit repellat, tenetur voluptatem eius et ex!
Ea quibusdam et eius in commodi sed expedita iste sit. Sunt aut unde necessitatibus minima quia, nihil itaque sed et. Et quia ut quae laborum, vitae vel magni error id? Nam non, sit ipsa tempora error natus perferendis possimus neque; ipsa sunt, quaerat quia est perspiciatis voluptas natus nihil dolores. Voluptates illum qui inventore iste blanditiis omnis sed suscipit a. Et praesentium, quas quae nihil ratione in accusantium iusto ut!
Voluptate ea alias inventore ea natus qui quis quia eos. Ut sint et nihil qui omnis est omnis repellat quaerat. Sequi sit ipsa, sit ipsam quis accusantium autem necessitatibus ut! Perspiciatis iste alias ex omnis vero quaerat natus ipsam excepturi. Eligendi voluptas, natus voluptas minus architecto ut dolores rerum veniam! Minus doloremque dolor deleniti et est ut temporibus modi eveniet. Molestiae dolorum, recusandae nihil omnis aperiam voluptatem officia perspiciatis ut!', 4, CAST(N'2020-03-10T11:22:25.810' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (8, 27, 2, N'Word of mouth', N'Eum natus debitis dolor voluptatibus fugit unde maxime quo sed; sequi voluptatum quis, vitae dolores rem saepe et corporis distinctio. Ad et qui doloribus, rem inventore perspiciatis nemo aut atque! Odio nam consequatur quis velit odit nemo reiciendis et inventore. Enim sint repellat quas maxime beatae et voluptas rerum omnis; fugit consectetur ut vitae, quod omnis nobis modi ipsam voluptatem. Est molestiae eum repudiandae consequuntur perspiciatis qui et esse tenetur! Illum voluptatem nisi laborum harum ut amet nobis aut sit. Nam sequi, aut nostrum mollitia omnis est in consequatur facere.', 8, CAST(N'2020-03-16T03:48:37.010' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (9, 2, 3, N'Google Adds', N'Enim veritatis, enim quod nostrum deserunt esse in iste recusandae; temporibus repellat fugit, fugiat minima ipsa excepturi error voluptas sed. Quas qui, at ipsam voluptatem ab nulla quam fugiat et. Ut quia iusto explicabo dicta unde non, blanditiis labore aperiam. Ut cumque et at explicabo beatae doloremque dolores voluptatem et. Sed iusto non sint ex voluptas nobis in aut qui? Harum repudiandae quasi minima unde numquam, odit exercitationem voluptatem sed.
Explicabo sint maxime eius necessitatibus quia in perspiciatis porro error. Culpa iste officiis possimus ratione accusantium commodi placeat aspernatur sit. Non vel ea dolores iste dolorem, omnis maiores deserunt molestiae! Explicabo consequuntur atque et voluptatum ducimus laudantium ullam earum recusandae. Voluptatem impedit quos non dolore numquam libero velit distinctio quo. Qui sed qui labore error voluptates maxime iste rem aut! Ducimus magni omnis quia fugiat similique ut nemo eveniet aspernatur.
Eos ut iste sed nobis autem amet, facilis ex facere.', 9, CAST(N'2020-05-07T15:02:38.270' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (10, 11, 2, N'Internet', N'Eum perspiciatis error fugit et sit unde voluptatem omnis laudantium. Soluta cumque qui labore aliquam repellendus ratione veritatis modi possimus! Sed accusamus velit ipsam maiores qui similique non aliquam est. Sed dicta ad ut sit dolor ut in error blanditiis; doloremque et tempora error, officiis sit ipsam possimus libero error. Debitis assumenda magni quia id dolores natus unde ipsum id.
Doloremque qui cumque ut et placeat omnis atque quis earum. Id cumque sit consequuntur deserunt natus soluta iusto et velit!', 7, CAST(N'2020-01-28T06:10:48.990' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (11, 16, 4, N'TV Adds', N'Omnis nulla suscipit sunt et ut natus id maxime omnis. Laudantium eveniet hic accusantium quo consequatur voluptatem cumque veritatis est; vitae eos quo et, quaerat suscipit laudantium et similique possimus.', 5, CAST(N'2020-05-07T01:51:49.480' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (12, 15, 5, N'Internet', N'Iusto eos, eum facere qui est eum aut molestias aut. Omnis a omnis neque, sit deserunt fuga quidem animi est? Ut labore sit quod tempora earum et esse omnis commodi. Nostrum tempora dolorem quia iure nemo ad perspiciatis omnis et. Unde esse natus quia non illo excepturi et facilis quas; dolorem consequatur pariatur quam quibusdam quam facilis dolore vero facilis.', 5, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (13, 33, 2, N'Google Adds', N'Omnis molestias eos quae ipsa et vitae, voluptatem numquam deserunt.
Accusantium et, sed non quia laudantium corporis totam ab perspiciatis. Voluptatem reiciendis, exercitationem qui architecto porro amet omnis error est. Et consequuntur rerum pariatur non sint dicta sit aspernatur reiciendis! Assumenda similique illum, qui at sunt voluptatem vero ut voluptas. Quaerat ut omnis obcaecati porro nam quia qui suscipit earum! Facilis quo voluptatem sunt consectetur et magnam illum sit non? Vitae quia magni voluptas dignissimos ut sunt in odit et; repudiandae odit dicta consequatur, optio nesciunt modi optio maxime explicabo. Et qui fugit animi libero dolor pariatur dolorem possimus et. Et est nemo aut recusandae aliquam consequatur exercitationem et harum!
In ut corrupti omnis accusamus est blanditiis sed quisquam vero. Maxime aliquid necessitatibus error ipsam aliquam exercitationem deserunt tenetur et. Corporis sit quia sunt tempore totam voluptatem laudantium adipisci facere. Error ut ipsam alias aliquid eum ut sit officia voluptates; aut laboriosam accusantium ab et corporis ullam sed nesciunt consequatur...', 2, CAST(N'2020-02-25T19:21:28.950' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (14, 40, 1, N'Newspaper', N'Nostrum sit magnam, numquam vel itaque laboriosam ad dolor deserunt. Consequatur debitis vel dolores mollitia cupiditate molestias accusamus quia vitae? Iusto sit, minus eaque et libero aut voluptatum quia eum. Odit aperiam et aut sequi quia labore unde ex itaque...
Excepturi quia culpa sit cumque porro consequuntur quis esse odit. Et repellendus sed delectus aut unde repellat numquam nostrum aut. Ut veritatis tempora, odit reprehenderit in veritatis debitis totam sed. Eligendi et alias nobis quos recusandae saepe temporibus quibusdam rem. Ut exercitationem consequatur, accusantium error ut atque magnam perspiciatis debitis. Et dignissimos natus sapiente atque officiis et est tempora hic. Voluptas sit placeat earum recusandae distinctio eaque dignissimos quasi praesentium! Ullam nisi, velit error ex hic quis non ea repellendus. Iste harum, molestiae enim numquam veritatis sit neque dolor consequatur! Incidunt id error fuga aperiam quo nulla vel dolor eum.
Unde rerum earum, illo ut ipsam nihil est libero qui. Omnis autem qui, et inventore harum accusamus quidem exercitationem libero. Omnis laudantium eius iste unde ullam et consectetur quis nobis. Repellendus voluptas unde totam error ullam vel, omnis suscipit aut. In aut iste enim quia asperiores voluptatem natus veritatis illo. Enim odio veniam nesciunt et neque tempora dolores nisi quia! Quam delectus, voluptatem incidunt est facere recusandae ad cumque soluta.', 1, CAST(N'2020-01-10T00:42:27.090' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (15, 43, 1, N'Direct', N'Dignissimos aut repudiandae maxime quod dolor nemo perferendis asperiores ex. Modi dolores nisi optio placeat eum eos quisquam enim cum! Neque quo odit unde esse, natus voluptate natus non error. Corrupti unde qui dignissimos eligendi aliquid, ut nesciunt et dolor. Aliquid veritatis ut voluptatem omnis nihil nostrum, natus id distinctio. Voluptatem vel neque veniam aut molestiae ipsum et voluptatem sint? Eaque natus consequatur inventore consequatur voluptatem ipsum omnis sint labore. Quidem voluptatem consequatur, laudantium id eos cumque sed minus sit; sapiente consequatur ipsa dolorem nihil et amet quam veritatis officiis. Rem quia eos molestiae nemo corporis maiores id ad natus.
Sapiente amet ex, exercitationem sed consequatur fugit voluptatem aliquam est. Voluptas nemo iste recusandae ab ullam et sed voluptatem et. In odit aperiam, est dolore recusandae perspiciatis amet voluptatem officia. Quia omnis architecto exercitationem ut recusandae unde iste porro aut; qui iste sed quidem, optio illo natus excepturi ut incidunt. Nemo illo sed sunt voluptas sit id unde ad accusantium. Fugit laborum, et cupiditate qui consectetur inventore omnis architecto dolore! Ipsa iste iusto, facilis sit expedita aut necessitatibus vel quos. Non unde perspiciatis porro et ipsum blanditiis ipsum doloribus autem!', 3, CAST(N'2020-01-24T18:07:40.550' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (16, 46, 5, N'Internet', N'Sit natus laborum obcaecati in accusamus maiores ut quis saepe. Odit iusto at esse totam ut temporibus sed et nobis. Ducimus omnis quia omnis, est natus minima eligendi perspiciatis repellendus! Labore facere, vitae et placeat error adipisci ea suscipit sunt. Rerum nam ipsum quia ratione nostrum quis magnam consectetur unde. Ut at vel, sint amet deserunt eos totam itaque iusto. Aperiam eaque et ipsum exercitationem ipsam facilis voluptatibus laudantium earum. Iste repellendus a consequuntur, aut fugit omnis molestiae excepturi ducimus! Nobis obcaecati aut non tenetur obcaecati sed aut eum dicta.
Exercitationem quia quis vitae sequi magnam obcaecati, quisquam dolorem ut. Commodi iusto iure natus, et commodi officiis quisquam est aut. Possimus vitae, et eos numquam tempore suscipit voluptatem omnis modi. Assumenda sunt repellendus rerum, ut ipsum ad eius quasi dicta!', 4, CAST(N'2020-01-21T07:52:17.990' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (17, 12, 2, N'Internet', N'Et fugiat explicabo est similique delectus error porro accusamus non. Vitae mollitia ex et expedita, voluptatum ullam alias dicta sit!
Minima ex totam sit, tenetur omnis adipisci iste aut consequuntur; est ratione, odit eaque maxime eius perspiciatis dicta delectus placeat. A et soluta inventore natus reprehenderit perspiciatis numquam quasi voluptas; sed perferendis et magni maxime dolor corrupti blanditiis odit quaerat? Aut veritatis magni est consequuntur hic aut consectetur reprehenderit dolor! Labore repellat velit dolore quo nihil quos voluptas perferendis possimus. Facilis obcaecati fugiat, cupiditate eos laborum voluptatem beatae rem suscipit! Enim sed quia natus optio commodi vero et ut quidem. Aut debitis delectus nobis delectus quia est ut cupiditate ad.', 6, CAST(N'2020-02-24T13:28:00.490' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (18, 21, 7, N'Referral', N'Doloribus est distinctio ab laboriosam voluptatem natus, quos rerum esse. Exercitationem illo eum illum est tenetur obcaecati voluptatem odit ad! Modi quasi quaerat quidem sit in accusantium, et tempore sit. Perspiciatis ullam aliquid voluptatem et ab nihil veniam nulla sit. Iure tempora beatae recusandae in ut explicabo, maiores et rerum. Sit voluptate enim ut impedit placeat consequuntur inventore aspernatur cupiditate! Sit sed fugiat maxime quisquam unde quia dolores voluptates voluptatum? Quisquam tenetur libero sint, ad et deserunt sunt earum quia! Omnis quos nihil consequatur ut reprehenderit, dolorum quae necessitatibus sit. Incidunt dolorum est sunt omnis at maxime quia neque sapiente.', 3, CAST(N'2020-03-16T23:28:03.890' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (19, 37, 6, N'TV Adds', N'Modi adipisci sit magnam ratione natus, eum error laboriosam similique. Itaque quaerat labore rem a ullam placeat in eaque voluptatem.', 9, CAST(N'2020-01-23T18:19:33.880' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (20, 42, 7, N'Email', N'Deserunt voluptates quisquam et unde qui voluptatibus ut sunt dolor. Ipsum sit eum dolorem natus reprehenderit fugit, reprehenderit explicabo dolor. Modi architecto enim in ut, tempore error ea quas dolorem. Provident dolores aut voluptas, fugit assumenda est sed mollitia consequuntur! Ea natus, suscipit odio autem unde sit autem enim odio. Sed quas, ut optio magni iste quia est doloremque perspiciatis. Quis et deleniti, sit nesciunt natus est illo odit et. Eius iste maxime unde accusantium sed consequatur aut omnis qui. Animi consequatur nemo consequatur perspiciatis aliquam officiis autem, officia tempora.', 8, CAST(N'2020-01-25T00:35:13.930' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (21, 45, 7, N'Add.Words', N'Aliquam temporibus nostrum, veniam et unde amet rerum quibusdam architecto. Minima maiores sed magnam ut vel sint molestiae quo distinctio. Soluta non iure quaerat quod ullam ut voluptatibus quisquam fuga. Unde pariatur voluptatum harum voluptatibus voluptatem rem, voluptatum sit error. Eius blanditiis, vitae sint sit natus quo non recusandae quas. Sed perspiciatis voluptatem unde asperiores repellat tenetur voluptas suscipit nihil. Voluptas rerum, debitis voluptate ex dolore in autem sint labore. Consequatur unde voluptates in nam non nihil voluptatem animi ipsa. Voluptas quasi iste necessitatibus beatae, ipsum sunt quia explicabo soluta.
Ipsum quia porro sint doloribus obcaecati laboriosam omnis quos consequuntur. Velit est rerum architecto quo itaque minima voluptates sit unde! Voluptas aspernatur harum, dolores consequatur pariatur qui ut assumenda inventore. Voluptate rerum aliquam omnis nisi sit nisi sint autem laboriosam! Consectetur enim et aut excepturi cumque quo dolore nulla perspiciatis. Optio perferendis earum nisi eum et qui dolores architecto nam? Voluptate ea sit dicta reiciendis ut voluptatem error ut voluptates; sit explicabo sed voluptas voluptatum quia quam tempora quo quidem.
Deleniti totam aliquid quaerat ea eum sit minima ea iure. Exercitationem rerum nihil totam exercitationem voluptas explicabo eveniet neque ex! Corporis est enim rerum quis maiores doloribus cumque nesciunt cumque. Sed veniam ut, sed delectus quod corporis suscipit harum culpa.', 7, CAST(N'2020-03-19T06:02:15.860' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (22, 10, 9, N'Google Adds', N'Cupiditate tempore deleniti magni expedita cum voluptatibus debitis non veniam. Voluptas provident, doloremque nisi sed quaerat modi voluptas consequuntur quisquam! Debitis error et, debitis aut ut neque animi est autem. Nemo ut eveniet, ut repellendus sit dolorem quisquam sint corporis! Eos voluptatem unde non unde sed ut harum perspiciatis velit. Sint rerum, dolorem natus voluptate ipsum impedit ad sed autem; et aut repellat in numquam eos repudiandae asperiores qui rerum.', 2, CAST(N'2020-05-06T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (23, 29, 7, N'Bing Adds', N'Cum ut qui, unde iste qui ut consequatur sed dicta. Qui accusantium sunt officiis eos vel, natus est officia aspernatur. Sed quia a neque odio nisi possimus nesciunt labore ullam! Sit nemo et delectus molestiae laudantium sed nihil velit omnis. Itaque tempore, corporis est ut dolor nesciunt beatae perspiciatis sunt. Totam iure eveniet et assumenda adipisci id sed sit sed. Excepturi voluptatem quidem esse voluptatem, qui voluptas recusandae aspernatur perspiciatis; ut perspiciatis eius, sed culpa voluptatibus mollitia temporibus possimus perspiciatis.
Qui quidem libero sed ipsa rerum aliquid harum qui delectus. Natus dicta quod ipsam fugit consequuntur et quidem distinctio eum.', 5, CAST(N'2020-05-06T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (24, 39, 5, N'Add.Words', N'Dolorem animi officia veniam voluptatem aliquid numquam sed voluptatem sit. Sed ut officia voluptates tempora molestiae laudantium qui fugit sapiente! Soluta ad adipisci qui rerum quidem, voluptatibus eius eligendi sunt; quisquam tempora ipsam neque omnis facilis sit qui facilis ad. Qui quod in sit cupiditate a assumenda tenetur atque sapiente. Eum error quis sit possimus explicabo perferendis consectetur fugiat error? Repudiandae accusamus magni maxime itaque iure optio adipisci et dicta. Mollitia iusto culpa ut a vero quis eum asperiores aut! Iste sed ut adipisci unde, et ea doloribus voluptatem dolor. Quia non ut quisquam est asperiores tenetur quia voluptate temporibus!
Eos illo non aspernatur tempora nihil voluptatibus distinctio iure temporibus. Corporis sunt, accusamus eligendi est voluptas magni vel qui incidunt. Cupiditate consequatur dolorem perspiciatis quo ut non sed ut sint? Est atque tenetur et inventore ad provident, neque ut omnis. Aut odio, aspernatur qui voluptatem et quam rerum amet delectus. Inventore et voluptatum error nam magni commodi, aut et sint. Sit laboriosam odit sit unde similique quas est corrupti dolorem. Ullam delectus illum enim voluptatem accusamus nisi illum ullam perspiciatis! Est fugit inventore culpa ipsam aperiam voluptatibus ut voluptatem vel.', 2, CAST(N'2020-05-06T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (25, 47, 2, N'Bing Adds', N'Aliquid non sit eum nesciunt ut repudiandae voluptatem porro odit. Vitae aut sit ut obcaecati omnis, aliquam aut natus harum! Fuga neque error id magni eos numquam error accusamus dolor. Sunt optio repudiandae cupiditate beatae natus officiis dolorem ad doloremque. Ipsam rem expedita tempora doloremque, ut delectus voluptatibus sit dolores? Tempore sit est nesciunt dolor minima et omnis nam mollitia. Illum suscipit perspiciatis dicta ut perspiciatis sit unde ut unde. Mollitia iste delectus accusamus aut eaque consequatur quis recusandae ullam. Inventore accusamus, ut quis unde totam fuga praesentium omnis quam.
Necessitatibus laudantium doloremque nobis deserunt voluptatem ipsam placeat quo ea.', 5, CAST(N'2020-05-06T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (26, 49, 8, N'Bing Adds', N'Sit aspernatur, quis mollitia ab consectetur suscipit vel quaerat ad. Voluptate qui, voluptatem molestiae odio et debitis quaerat sint obcaecati. Non sed inventore aliquam voluptatem autem sapiente provident, reprehenderit provident. Maiores optio numquam unde et, animi et nisi fugit ex. Et provident perferendis soluta voluptatem in reprehenderit impedit nihil nobis? Qui iste, ut dicta nisi molestias at et aut accusantium! Labore suscipit non, rerum voluptas iure voluptatem eligendi omnis cumque. Natus porro modi dolorem culpa cum expedita ab doloribus dignissimos.
Accusantium necessitatibus laborum dolores consequatur quod architecto voluptas natus unde. Eaque id eveniet exercitationem possimus consectetur numquam repellendus ipsa repellendus. Officiis eligendi aliquid suscipit alias, maiores omnis perferendis aperiam corporis. Tempora quasi, nobis incidunt est facere quia sunt aut adipisci. Blanditiis deleniti ut, natus aspernatur voluptates non quos omnis consequuntur. Atque aspernatur nisi tempore omnis error consectetur sit voluptates odio. Cum eum maxime debitis quo voluptatum quia nesciunt quo nihil? Rerum voluptas qui, voluptatem ipsa numquam suscipit nemo blanditiis vero! In architecto non voluptatem eveniet labore, voluptatibus et perspiciatis quia. Autem cum iusto ipsum est fugit et porro consequuntur accusantium!', 6, CAST(N'2020-05-06T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (27, 8, 1, N'TV Adds', N'Totam quidem qui, in exercitationem sequi ut id itaque natus. Eius tempora numquam ut voluptatum quo est natus sit asperiores. Dicta sequi in qui tempora corporis tenetur reprehenderit et natus? Doloribus recusandae explicabo minus est, enim fugit similique ea debitis. Saepe voluptatem est inventore, esse amet et expedita veniam aut. Explicabo aspernatur eum, ad voluptatem est sunt natus eum unde...', 7, CAST(N'2020-05-06T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (28, 22, 3, N'Email', N'Et quisquam asperiores nisi aliquid ea reprehenderit est, enim voluptatem. Et sit id aliquam, incidunt qui sint unde omnis sed. Ex id, laborum quae voluptas iusto voluptatem commodi molestiae vel. Sit ut nulla minima perferendis ea nemo quibusdam maxime ut. Voluptatem qui omnis molestias animi quis ipsam enim sit ipsa. Laudantium ut et nobis error cupiditate error quia amet aliquid. Et molestiae, consectetur vitae perferendis odio sit libero aliquam aut; at commodi delectus nulla sint repellat et alias eos quis. Unde minima, dolores atque doloremque praesentium maiores rem sed dolor!', 5, CAST(N'2020-05-06T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (29, 38, 3, N'Add.Words', N'Omnis inventore voluptatem quo nulla autem quas consequatur eum rerum.', 10, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (30, 41, 3, N'Email', N'Et sequi dolor, voluptatem dolores ea qui dolor dolore voluptatem. Sequi consequatur, in doloribus aut ad odio iste natus eius? Sequi inventore, quo odio eaque consequatur asperiores earum omnis magnam. Atque quod ut quisquam laudantium autem ut vel ipsum aut; unde enim dolores enim mollitia autem odit in iusto harum. Aliquid alias perspiciatis aut voluptates, et voluptas architecto enim exercitationem. Laboriosam incidunt consequatur magni consequuntur odit laborum reiciendis dolore illum. Tempora et quo praesentium veritatis provident qui, eum non optio. Adipisci neque et aut doloremque omnis, ullam ducimus dolores sapiente. At sunt blanditiis atque sunt aut molestiae laboriosam consequatur sit.
Nostrum officia similique est voluptas quae inventore perspiciatis sed aliquid. Voluptatum quos magni sed rerum qui soluta praesentium nostrum harum? Cum facilis quia error inventore exercitationem accusantium molestiae voluptas aut. Aliquid ut voluptatem dolorum doloremque eius qui quisquam architecto voluptatum.', 11, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (31, 48, 3, N'Bing Adds', N'Sunt nobis iure esse iure nam dolore ad velit veritatis. Tenetur quia beatae ut consequatur facere fuga asperiores, ut assumenda? Tempore voluptatem atque obcaecati laudantium ut autem odio accusamus suscipit. Consequatur error voluptatem facere voluptatem tempore error explicabo magnam inventore! Est perferendis ad sit dolorem rerum doloribus pariatur qui id. Et quia amet ut est reprehenderit pariatur voluptatem reprehenderit quam. Rem ab sequi, doloribus error nesciunt molestias iste suscipit omnis. Vero aut quo praesentium error est perspiciatis non rem est. Eum quo error unde obcaecati ducimus quia aut unde at. Ducimus temporibus est voluptates odio, aut tenetur labore voluptatem odit.', 12, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (32, 50, 3, N'Newspaper', N'Ut et dolorum iste consequatur quidem suscipit ut at enim. Vitae cum facere sed et laborum est rerum sed iusto; rem mollitia vitae eligendi error quis necessitatibus corrupti omnis ratione. Ea minus qui eos ipsum quia sit inventore cupiditate architecto. Deleniti fugit omnis inventore velit itaque praesentium nostrum error exercitationem. Molestias voluptatem vel, natus voluptas autem magnam eaque voluptatum eum. Repellendus adipisci quibusdam dolores vel saepe perspiciatis sit eius omnis.
Doloremque eius eligendi excepturi accusamus quia distinctio facilis laborum ipsa. Voluptas nesciunt aut, quis iusto iste perspiciatis eaque qui quia! Corporis quaerat voluptas omnis earum atque sed omnis harum nobis.', 5, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (33, 13, 4, N'TV Adds', N'Iste nihil et qui provident qui itaque qui, dolorum culpa. Nihil quae nisi voluptatem provident magni facere nobis et sed! Omnis officia rerum ab et iste sed accusamus alias rerum.
Iste alias iure vero, reiciendis atque ut voluptatem cum non. Perspiciatis in, et reprehenderit ad ullam quia tempore commodi pariatur. Aut non et quasi recusandae dolorem laboriosam minima iste omnis. Qui perferendis vitae aut voluptate ut qui quia quasi error? Possimus aliquam nobis, repellendus sit ad quia quis est excepturi. Aperiam ut laborum provident numquam nihil sed eos quis cum.
Ullam rerum sunt beatae porro aliquam enim dicta et quae. Nulla ut rerum sit tempore eligendi rerum error a error. Similique dolores nihil non cum perspiciatis, omnis incidunt voluptatem molestiae; corporis est voluptatibus enim itaque excepturi quia voluptatem quisquam obcaecati.', 5, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (34, 17, 5, N'Referral', N'Laudantium voluptatum voluptate ea quis eaque ipsam dolore aut sint. Dolores magni quisquam, voluptas ut natus et ut sit voluptatem. Nesciunt et ut perspiciatis molestiae ipsam soluta quas aliquid obcaecati. Voluptatem aspernatur qui et, impedit perspiciatis dolor voluptas sed repudiandae! Vitae non aliquid sit voluptas aliquam qui deleniti unde fugiat.
Rem ut qui et quia quis voluptatem, iste dolores repellat. Excepturi eius voluptatem magnam natus dignissimos minima quae quasi est. Dolorem temporibus, ratione iste similique rerum sit ullam eum corrupti. Enim commodi beatae ut repellat unde qui eum doloremque mollitia. Nam incidunt suscipit laborum ipsam magnam omnis, sed tempore sit? At unde rerum molestias hic vitae qui non est consequatur. Et eum ex eum odio ex ad, consequatur nobis laudantium. Aliquam sed non omnis facere perspiciatis blanditiis voluptatum similique illum. Autem aperiam quae aut ad pariatur et voluptates delectus ut. Cupiditate rem perspiciatis quia, enim natus laboriosam molestiae aut dolorum.
Qui iste ut ipsum aut laudantium voluptates obcaecati deserunt perspiciatis. Placeat ratione necessitatibus deleniti amet consectetur magnam omnis sit sapiente. Sint voluptatibus ut, nulla sed rem aut quia est sunt? Consequuntur est aliquid itaque voluptates similique error ut atque quia.', 12, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (35, 23, 4, N'Bing Adds', N'Aperiam commodi veritatis impedit sed laboriosam expedita, cum qui et. Tenetur et qui modi laborum rerum officia deleniti, consequatur ratione? Harum nihil, adipisci sed impedit error iste omnis qui at! Id ut, fugiat aut ipsam porro provident dolor natus iure? Error laborum nesciunt sed id aut ab consequuntur aut eligendi; quia architecto nulla corporis enim laudantium sit, dolorem recusandae totam.', 11, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (36, 31, 5, N'Direct', N'Ut exercitationem voluptatem aliquam quasi omnis quis eaque voluptatem quisquam. Error cupiditate quia sit quae labore dolorem enim sit sed! Ipsam vitae enim incidunt sunt maxime voluptatem ipsam sit sed. Illo et, laborum error voluptatem architecto perspiciatis et corrupti enim; nihil voluptate ex quo sed voluptatem neque aliquid minima ut. Ipsam qui natus temporibus accusantium non consequatur dicta ducimus facere. Amet modi qui in beatae culpa quos velit ut laboriosam! Obcaecati dolore libero eum distinctio qui consectetur natus quis iste. Odit error aspernatur molestiae in nemo vel obcaecati est unde.
Cum sed enim dolor est similique placeat veritatis quidem consequuntur. Est omnis nihil autem, aut ut non et obcaecati dolorem.', 10, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (37, 36, 8, N'Word of mouth', N'Laborum in amet, temporibus perspiciatis qui ipsam hic sit debitis.
Soluta labore incidunt quibusdam sit atque soluta molestiae voluptatem unde. Nobis eius, ratione nemo exercitationem quaerat et animi enim dolor. Deleniti quas, itaque incidunt ut quae neque enim qui perferendis.
Blanditiis et animi possimus, ipsa fuga ut laudantium ut doloremque.', 9, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (38, 1, 4, N'Newspaper', N'Delectus ipsam officia et repellat dolore explicabo deleniti minima ut. Nisi unde aut fugit quibusdam mollitia velit magnam perspiciatis dicta.', 5, CAST(N'2020-05-07T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (39, 9, 9, N'Newspaper', N'Atque velit non unde quia reprehenderit deleniti praesentium consequuntur ipsum.
Est sint reiciendis eaque eum cum quod magni quae iusto. Voluptate totam qui officia alias consequatur ad natus qui sit. Nesciunt eum neque tenetur asperiores placeat et perspiciatis quia aut? Commodi veritatis perspiciatis ut voluptate saepe ex officiis distinctio dolore. Et consequatur eos vel error, cum et aspernatur ut culpa. Voluptas id iste omnis et sed qui quia et dolor.
Voluptas suscipit sed error, modi autem fuga minus quia obcaecati. Eum eos sit facere a repudiandae voluptas cum esse minima!', 8, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (40, 18, 8, N'Email', N'Eos dolor veniam sint, cumque iusto modi ratione ipsum ex. Recusandae ut aut sunt quo nesciunt mollitia blanditiis et culpa. Ut soluta eius qui voluptatem et, magnam eaque molestiae dolores; eligendi explicabo inventore iste officia sed ratione sit eaque alias. Debitis perspiciatis, molestias corrupti et a sit qui illo aut! Minima dolor aut ex aliquam, ut repellat rerum et rerum.
Voluptatem id sapiente neque earum ex vitae praesentium cum rem. Expedita nobis, et vel omnis quo dolor at quia ut; ducimus vitae commodi magni sed animi, et soluta omnis est. Vitae quidem exercitationem nihil dignissimos et voluptas eligendi error beatae. Est aut ex autem dolores nostrum sint est in nostrum. Vitae minus nulla assumenda omnis, sint omnis iure exercitationem est! Dolore dolorem necessitatibus ipsam quos sit, beatae incidunt numquam quidem. Quas sapiente, est deleniti corrupti ut nobis est exercitationem ut. Animi officiis aliquid qui aut rerum quibusdam nam, qui perspiciatis. Quo perspiciatis amet pariatur consectetur iure dolorem obcaecati incidunt quibusdam.', 2, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (41, 28, 2, N'Bing Adds', N'Dolore error omnis neque qui optio quo veritatis, voluptatem explicabo. Quaerat odit qui, minus porro dolores pariatur voluptate exercitationem iste; vel consequatur voluptatem et ut perspiciatis excepturi sed iure in. Error sunt tempore voluptas eum optio sed sit adipisci ut.
Assumenda nostrum non vero quibusdam obcaecati animi dolore voluptas quia. Ut harum nulla error qui sint laudantium eveniet illum in! Eos asperiores neque eos tenetur, rerum porro ducimus cupiditate provident. Ipsam voluptatem sequi, in debitis qui laborum quibusdam ea error! Animi optio atque voluptatem dignissimos est quo explicabo neque exercitationem. Id natus et cum quam eum temporibus iste sed consequatur! Non quasi molestias dolor nulla provident veritatis ad labore aut. A magni itaque velit sit iusto magnam qui mollitia quo! Unde libero omnis rerum reprehenderit sit ut error, et qui. Ut vitae suscipit quam sit aspernatur quibusdam sed excepturi ut.
Id soluta quisquam qui harum atque iste ut consequatur neque. Distinctio impedit possimus omnis, enim quam sunt necessitatibus nisi sunt. Id iste, quaerat in tempora beatae facilis aspernatur unde expedita. Voluptates sed ratione est alias sit id quibusdam quis eum. Ut quam debitis iste vitae sunt accusantium laboriosam nihil voluptatibus? Sint nisi molestias repudiandae sed ut nihil et mollitia omnis. Et libero est nesciunt officia amet ullam est doloremque incidunt? Amet velit nostrum unde et, illum impedit dolor hic et...', 4, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (42, 35, 4, N'Add.Words', N'Natus voluptatem, repudiandae consectetur debitis mollitia quasi quia commodi porro. Aut nesciunt quia obcaecati dolore molestiae deleniti velit aperiam libero. Excepturi vel odio, doloribus minus omnis eum illo obcaecati ut; sunt officiis quos est quo ea quia sed deserunt natus; non itaque maxime, at nulla dolorum rerum voluptatibus aperiam rerum. Harum placeat iusto nihil fugit rerum error ipsa quis quas!', 6, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (43, 44, 6, N'Direct', N'Voluptatibus labore et delectus ipsum reprehenderit reiciendis, provident veniam sed. Ut quia illo officiis voluptas totam, perspiciatis culpa omnis accusamus.', 5, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (44, 3, 2, N'Internet', N'Omnis doloribus nam id sed aut commodi soluta omnis accusamus. Quasi autem a aut architecto rerum fugit quis corporis aut. Earum omnis iusto cum libero velit sed voluptatibus at et? Quae totam reprehenderit ratione nemo fugiat eligendi, repellendus eum architecto...', 11, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (45, 5, 8, N'Direct', N'Earum hic perferendis quod velit sed a quam vero ut. Sunt sed doloribus necessitatibus perspiciatis fugiat, aut quis temporibus at. Nam eos explicabo impedit repellendus ipsa modi laboriosam quia quo! Magnam non sit, quam id placeat ratione ipsa molestiae magni. Fugit illum repudiandae aut neque, sed sit hic autem sed. Ut natus maiores eius accusamus provident ipsam, voluptatem sed non. Tempora cupiditate sed ipsa quibusdam aut et sequi facere voluptatem! Molestiae impedit deleniti molestiae consequatur tempore ut ab modi nobis; laudantium qui molestias, qui ad reprehenderit omnis quis unde sit. Eum sunt ea ut delectus aliquam iste voluptas magnam non.', 5, CAST(N'2020-05-08T19:50:32.030' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (46, 25, 7, N'Bing Adds', N'Quis vel sed tempora a expedita voluptatem minus harum voluptatem. Ad dolor odio quasi ut doloribus nesciunt ad omnis sed. Fuga hic provident accusantium reiciendis voluptatem tenetur facere dolor ut. Beatae magnam in nobis et quae debitis in aut ea! Dolores blanditiis sapiente officia ipsum earum dolorum ipsa voluptas enim? Suscipit earum sed ipsum sit voluptatem et laboriosam sit quod. Obcaecati nesciunt architecto tempore excepturi aliquid quis laudantium illo nulla. Unde placeat nemo unde voluptatem ea molestiae quo pariatur deleniti? Labore ut labore esse eveniet quia aliquam est perspiciatis nihil.
Dolorum ut sit velit enim et sunt veritatis omnis modi.
Ut ducimus aut et ab eius sint aut sequi est. Non alias sunt voluptatem unde voluptates dolor consequatur voluptatibus voluptas. Vitae aspernatur sed deleniti quia, obcaecati delectus atque quaerat necessitatibus. Aliquid inventore voluptatum vel sit sunt cumque expedita dolorum unde.', 12, CAST(N'2020-05-31T01:27:51.967' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (47, 34, 9, N'Add.Words', N'Ut quia expedita, aut odio ut natus sapiente sint minima. Natus nostrum et, itaque aut in doloremque qui et consequuntur! Eligendi quis architecto laborum sit explicabo sapiente impedit labore in. Praesentium nemo eius est similique accusantium, numquam voluptatem maxime quia! Cumque non et consequatur repellendus error ullam natus officia et. Deserunt adipisci et eius qui sunt officiis, velit sequi velit...
Illum est impedit, minima molestias eum alias sit cum sed.', 5, CAST(N'2020-05-31T01:27:51.967' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (48, 6, 7, N'TV Adds', N'Veniam officia omnis esse iste dolores sunt accusantium eaque natus. Sint omnis fugiat quia quas aut veritatis amet quis asperiores. A ea consectetur ut error, perspiciatis est numquam deserunt quia. Quia quisquam molestias voluptatem dolorem perspiciatis laboriosam sed consectetur possimus. Est consequuntur reprehenderit unde cupiditate quod natus quos alias iste. Accusantium nisi quo perferendis itaque corporis iste, nulla reiciendis ipsum. Libero delectus consectetur dignissimos, eos et veritatis itaque nobis natus; molestiae ab necessitatibus praesentium est ut voluptates sed a repellat. Dicta tempore iusto sint veritatis itaque vel quia distinctio sed! Aut qui accusamus sed hic aspernatur eaque minima earum alias.
Ex laudantium expedita, et expedita nesciunt minus quo ut repellendus. Tempore cum eum error, quia unde dolor error at dicta! Autem porro sint vel, sit recusandae quo sapiente qui dolore. Corrupti id facilis cum quas error ipsum fugiat consequatur iste! Omnis ab perspiciatis aut magni sed totam nemo quas consectetur. Voluptatem iusto aliquam ut illum voluptas et reprehenderit odio omnis.', 6, CAST(N'2020-05-31T01:27:51.967' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (49, 32, 6, N'Add.Words', N'Modi magni dolor amet natus totam quia aliquid quia pariatur. Autem tenetur, eum qui porro eveniet sunt natus sed rem.
Ut omnis deleniti id rerum sed suscipit est et numquam; dignissimos non maxime quos hic magni, eius dolorem earum repellat. Ad dolorem sequi, nulla ullam sint iure quisquam autem eos. Fuga voluptatem et, exercitationem illo ea consequatur eligendi omnis pariatur? Ut enim quidem eius ullam qui ut asperiores optio voluptatem. Ut minus, natus unde quas consequatur tenetur perspiciatis necessitatibus sit. Labore tempora sint omnis assumenda sed ipsa soluta illo ad. Ut non et consequatur, voluptas aperiam dolorem libero architecto velit! Iste earum numquam doloribus consequuntur et a sunt atque et. Est aperiam minima aut, non consequuntur sit magni hic ut!', 7, CAST(N'2020-05-31T01:27:51.967' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (50, 7, 2, N'TV Adds', N'Ex deleniti odit consequuntur ab rem officiis et assumenda ut. Laborum quibusdam nisi adipisci sint error quaerat nam sed facilis? Placeat sed blanditiis, autem mollitia qui aut sunt voluptatem sed. Dolorem et quis error eaque sapiente sunt maxime autem earum. Aperiam at sunt, sint aut est exercitationem voluptas architecto necessitatibus. Sit molestiae omnis, voluptas tempora possimus dolorem ipsa consequatur voluptas. Quas corporis consectetur fugit ut quam, ut eum ullam odio.', 2, CAST(N'2020-05-31T01:27:51.967' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (77, 1057, 5, N'Imggggggggg', N'Welcome Aya', 5, CAST(N'2020-05-31T01:27:51.967' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (78, 1057, 1, N'Imggggggggg', N'Welcome Aya', 3, CAST(N'2020-05-31T01:30:21.940' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (79, 1057, 8, N'Imggggggggg', N'Welcome Aya', 3, CAST(N'2020-05-31T02:24:14.273' AS DateTime))
INSERT [dbo].[Posts] ([PostID], [UserID], [CategoryID], [ImageSource], [PostContent], [ReactionID], [PostDate]) VALUES (80, 1067, 3, NULL, N'Natus odit sit quam architecto magnam voluptatem asperiores voluptatum iste. Ut veritatis sed excepturi distinctio officiis sint recusandae qui et? Dolorum aut ut ab expedita quae velit autem harum ducimus. Perspiciatis maxime unde omnis libero accusamus voluptas sed mollitia laudantium. Totam reiciendis nesciunt corporis natus nam facilis iste omnis similique. Natus alias, asperiores beatae voluptatem temporibus impedit libero aut illo. Incidunt saepe qui modi ut, ad quaerat maiores ad illum; natus eos minima repellendus sunt omnis ut omnis blanditiis dolor.', 2, CAST(N'2020-07-01T16:53:30.637' AS DateTime))
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET IDENTITY_INSERT [dbo].[Question_Doctors(Mention)] ON 

INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (1, 24, 1, 1053)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (2, 10, 0, 1053)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (3, 21, 0, 1053)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (4, 28, 1, 46)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (5, 34, 0, 49)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (6, 14, 1, 31)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (7, 13, 1, 42)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (8, 39, 0, 8)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (9, 12, 1, 32)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (10, 20, 1, 43)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (11, 8, 0, 24)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (12, 4, 0, 16)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (13, 31, 0, 48)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (14, 27, 1, 24)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (15, 29, 1, 22)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (16, 33, 0, 14)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (17, 26, 1, 15)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (18, 38, 0, 15)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (19, 33, 0, 16)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (20, 13, 1, 8)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (21, 28, 1, 46)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (22, 2, 0, 15)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (23, 36, 1, 16)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (24, 47, 1, 44)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (25, 43, 0, 27)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (26, 26, 1, 46)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (27, 41, 0, 8)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (28, 7, 0, 44)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (29, 7, 1, 49)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (30, 12, 1, 4)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (31, 15, 1, 39)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (32, 10, 1, 15)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (33, 33, 0, 31)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (34, 35, 1, 26)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (35, 44, 0, 38)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (36, 6, 0, 22)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (37, 39, 0, 14)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (38, 49, 1, 43)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (39, 48, 0, 37)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (40, 6, 0, 39)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (41, 18, 0, 43)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (42, 27, 0, 31)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (43, 23, 0, 21)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (44, 40, 0, 42)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (45, 15, 1, 36)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (46, 38, 1, 39)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (47, 49, 1, 22)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (48, 41, 0, 26)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (49, 17, 1, 16)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (50, 22, 0, 8)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (60, 60, 0, 2)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (62, 62, 0, 2)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (63, 63, 0, 2)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (64, 64, 0, 2)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (65, 65, 0, 2)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (67, 5, 0, 1053)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (68, 4, 1, 1053)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (69, 3, 0, 1053)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (70, 66, 0, 1053)
INSERT [dbo].[Question_Doctors(Mention)] ([ID], [QuestionID], [Status], [DoctorID]) VALUES (71, 68, 0, 1055)
SET IDENTITY_INSERT [dbo].[Question_Doctors(Mention)] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (1, CAST(N'2020-04-14T18:23:36.620' AS DateTime), N'Minima quae molestiae. Assumenda esse!', 1057)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (2, CAST(N'2020-04-04T12:26:31.910' AS DateTime), N'Error et alias. Aut est minus. Eaque.', 1057)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (3, CAST(N'2020-05-12T05:32:16.280' AS DateTime), N'Ex praesentium dolorum. Quod harum.
', 1057)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (4, CAST(N'2020-05-04T04:32:22.500' AS DateTime), N'Adipisci ex sunt. Ea aspernatur sunt?
', 10)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (5, CAST(N'2020-02-25T18:29:56.330' AS DateTime), N'Suscipit alias a. Unde expedita!
', 44)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (6, CAST(N'2020-01-21T02:37:44.890' AS DateTime), N'Officia saepe et; eligendi earum.
', 50)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (7, CAST(N'2020-03-13T07:35:27.040' AS DateTime), N'Aut voluptatem temporibus. Labore a;', 14)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (8, CAST(N'2020-05-08T12:47:46.060' AS DateTime), N'Voluptatem aut non aut voluptatum quia.', 37)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (9, CAST(N'2020-05-12T23:56:58.620' AS DateTime), N'In non et magnam necessitatibus id.', 6)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (10, CAST(N'2020-01-31T08:11:40.610' AS DateTime), N'Unde magni non.
Quis sunt ducimus.
', 6)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (11, CAST(N'2020-03-02T09:29:15.210' AS DateTime), N'Voluptates ducimus accusantium. Enim?
', 8)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (12, CAST(N'2020-04-04T22:33:17.170' AS DateTime), N'Ut libero culpa. Qui praesentium;', 18)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (13, CAST(N'2020-05-08T11:27:39.120' AS DateTime), N'Et explicabo aut. Laudantium vel.
', 9)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (14, CAST(N'2020-04-10T00:57:52.570' AS DateTime), N'Et repellendus beatae. Et est eveniet.', 34)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (15, CAST(N'2020-05-05T16:48:29.510' AS DateTime), N'Sed perspiciatis explicabo. Amet natus.', 33)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (16, CAST(N'2020-04-28T20:27:08.350' AS DateTime), N'Soluta velit quia. Excepturi.
', 35)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (17, CAST(N'2020-04-28T13:28:13.920' AS DateTime), N'Quam dolor a. Natus voluptatem omnis.
', 20)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (18, CAST(N'2020-05-05T18:00:05.930' AS DateTime), N'A soluta nisi. Sunt et quia.
Sunt.', 40)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (19, CAST(N'2020-03-16T04:31:22.840' AS DateTime), N'Et nihil temporibus. Mollitia.
', 46)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (20, CAST(N'2020-03-20T08:26:43.660' AS DateTime), N'Ut et molestiae. Dicta minus.
', 33)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (21, CAST(N'2020-05-06T17:12:05.010' AS DateTime), N'Explicabo id in. Quisquam ut?
', 29)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (22, CAST(N'2020-05-04T12:18:12.610' AS DateTime), N'Porro ipsa quidem. Temporibus.
', 12)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (23, CAST(N'2020-05-05T11:14:10.880' AS DateTime), N'Officia quam qui. Et quia non.
Et.', 14)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (24, CAST(N'2020-05-06T23:48:12.640' AS DateTime), N'Molestiae voluptates dicta. Aut quia!
', 34)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (25, CAST(N'2020-02-22T15:18:35.520' AS DateTime), N'Aperiam molestiae voluptates error.', 35)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (26, CAST(N'2020-04-13T00:57:29.980' AS DateTime), N'Iste sint suscipit. Nulla ipsum a!
', 45)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (27, CAST(N'2020-05-02T15:26:50.590' AS DateTime), N'Illo magnam itaque. Quae voluptate!', 25)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (28, CAST(N'2020-04-03T05:13:25.350' AS DateTime), N'Vel recusandae sint. Doloremque!
', 50)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (29, CAST(N'2020-02-14T01:17:01.950' AS DateTime), N'Rerum esse similique. Sunt qui est.
', 10)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (30, CAST(N'2020-01-09T16:17:02.610' AS DateTime), N'Earum sunt voluptatum. Aliquam!
', 6)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (31, CAST(N'2020-04-07T05:53:35.500' AS DateTime), N'Neque non distinctio. Veritatis!', 30)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (32, CAST(N'2020-03-13T00:32:43.940' AS DateTime), N'Nisi molestiae at. Consequatur.
', 33)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (33, CAST(N'2020-05-11T14:41:09.740' AS DateTime), N'Ipsum eligendi veniam. In delectus.
', 30)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (34, CAST(N'2020-01-30T04:29:41.940' AS DateTime), N'Et quam rem. Sed velit illo.', 36)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (35, CAST(N'2020-04-22T15:23:44.220' AS DateTime), N'Repellat non ipsam. Impedit quos.
', 12)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (36, CAST(N'2020-04-08T09:31:03.500' AS DateTime), N'Doloribus eius ducimus. Est nemo!
', 16)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (37, CAST(N'2020-04-12T15:58:06.020' AS DateTime), N'Animi qui aut. Voluptatem ratione!
', 47)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (38, CAST(N'2020-02-27T03:33:32.630' AS DateTime), N'Rem pariatur tempora. Est ut sunt; id.', 34)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (39, CAST(N'2020-04-08T23:49:24.700' AS DateTime), N'Iste in error. Consequatur harum.', 13)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (40, CAST(N'2020-04-02T17:53:17.100' AS DateTime), N'Facere et quia. Omnis ut dolores!
', 36)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (41, CAST(N'2020-01-06T07:02:49.770' AS DateTime), N'Fugit a voluptatem. Exercitationem...
', 19)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (42, CAST(N'2020-03-10T04:42:31.240' AS DateTime), N'Animi unde et. Modi fuga.
', 3)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (43, CAST(N'2020-01-06T18:43:03.350' AS DateTime), N'Sit necessitatibus provident. Unde eos.', 28)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (44, CAST(N'2020-02-01T15:42:38.620' AS DateTime), N'Laudantium molestiae tempora. Nisi.', 37)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (45, CAST(N'2020-04-06T19:47:15.550' AS DateTime), N'Iste delectus suscipit. Maxime in.
', 28)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (46, CAST(N'2020-04-17T21:51:10.990' AS DateTime), N'Quidem quasi corporis. Fuga aut!', 39)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (47, CAST(N'2020-03-21T18:34:17.950' AS DateTime), N'Ipsa maxime excepturi; cupiditate.
', 29)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (48, CAST(N'2020-02-06T20:58:21.320' AS DateTime), N'Vitae quidem consequatur. Facilis?', 36)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (49, CAST(N'2020-04-03T02:03:16.410' AS DateTime), N'Obcaecati optio maiores.
', 36)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (50, CAST(N'2020-05-11T19:48:53.770' AS DateTime), N'Unde a temporibus. Ut odit neque! Id.
', 10)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (60, CAST(N'2020-05-25T20:15:21.583' AS DateTime), N'22', 1)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (61, CAST(N'2020-05-25T20:15:42.053' AS DateTime), N'dfsdfsdfsfdsf', 2)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (62, CAST(N'2020-05-25T20:16:16.580' AS DateTime), N'dfsdfsdfsfdsf', 1)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (63, CAST(N'2020-05-25T20:21:49.773' AS DateTime), N'dfsdfsdfsfdsf', 1)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (64, CAST(N'2020-05-25T20:26:17.947' AS DateTime), N'dfsdfsdfsfdsf', 1)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (65, CAST(N'2020-05-25T20:27:32.097' AS DateTime), N'dfsdfsdfsfdsf', 1)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (66, CAST(N'2020-06-15T08:46:10.733' AS DateTime), N'nmnbmnmn', 1057)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (67, CAST(N'2020-07-01T16:53:56.473' AS DateTime), N'tecto magnam voluptatem asperiores voluptatum iste', 1067)
INSERT [dbo].[Questions] ([QuestionID], [Date], [Question], [UserID]) VALUES (68, CAST(N'2020-07-01T16:58:18.627' AS DateTime), N'tecto magnam voluptatem asperiores voluptatum iste', 1067)
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Reactions] ON 

INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (1, N'سعيد')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (2, N'متحمس')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (3, N'نشيط')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (4, N'مهتم')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (5, N'متفائل')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (6, N'مضحك')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (7, N'حزين')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (8, N'منزعج')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (9, N'متوتر')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (10, N'خائف')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (11, N'مرهق')
INSERT [dbo].[Reactions] ([ReactionID], [ReactionName]) VALUES (12, N'محبط')
SET IDENTITY_INSERT [dbo].[Reactions] OFF
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (1, CAST(N'2020-04-10T14:26:29.600' AS DateTime), N'000       ', 0, 11, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (2, CAST(N'2020-03-24T02:46:31.710' AS DateTime), N'001       ', 0, 33, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (3, CAST(N'2020-04-05T14:35:24.430' AS DateTime), N'002       ', 2, 1, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (4, CAST(N'2020-04-14T11:31:31.450' AS DateTime), N'003       ', 0, 28, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (5, CAST(N'2020-01-19T19:24:26.580' AS DateTime), N'004       ', 0, 33, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (6, CAST(N'2020-03-17T00:25:41.240' AS DateTime), N'005       ', 0, 47, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (7, CAST(N'2020-02-24T20:29:15.530' AS DateTime), N'010       ', 0, 29, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (8, CAST(N'2020-03-03T18:10:09.550' AS DateTime), N'011       ', 0, 5, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (9, CAST(N'2020-03-29T05:50:04.350' AS DateTime), N'012       ', 0, 3, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (10, CAST(N'2020-02-16T20:32:57.690' AS DateTime), N'013       ', 0, 50, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (11, CAST(N'2020-01-17T03:34:38.200' AS DateTime), N'014       ', 0, 6, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (12, CAST(N'2020-05-12T03:50:51.220' AS DateTime), N'015       ', 0, 1, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (13, CAST(N'2020-02-20T14:11:36.320' AS DateTime), N'020       ', 0, 5, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (14, CAST(N'2020-02-29T10:53:27.560' AS DateTime), N'021       ', 0, 25, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (15, CAST(N'2020-01-26T03:30:15.730' AS DateTime), N'022       ', 0, 34, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (16, CAST(N'2020-04-23T01:35:08.030' AS DateTime), N'023       ', 0, 47, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (17, CAST(N'2020-03-29T02:18:13.040' AS DateTime), N'024       ', 0, 11, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (18, CAST(N'2020-05-02T17:57:57.970' AS DateTime), N'025       ', 0, 30, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (19, CAST(N'2020-03-10T04:56:27.310' AS DateTime), N'030       ', 0, 28, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (20, CAST(N'2020-02-12T19:48:02.940' AS DateTime), N'031       ', 0, 25, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (21, CAST(N'2020-01-27T04:13:15.380' AS DateTime), N'032       ', 0, 13, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (22, CAST(N'2020-01-17T22:01:35.200' AS DateTime), N'033       ', 0, 41, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (23, CAST(N'2020-02-09T12:44:19.540' AS DateTime), N'034       ', 0, 11, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (24, CAST(N'2020-05-09T01:29:26.690' AS DateTime), N'035       ', 0, 28, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (25, CAST(N'2020-02-13T19:24:33.900' AS DateTime), N'040       ', 0, 33, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (26, CAST(N'2020-01-25T17:24:22.760' AS DateTime), N'041       ', 0, 6, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (27, CAST(N'2020-04-27T10:49:26.480' AS DateTime), N'042       ', 0, 50, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (28, CAST(N'2020-02-06T17:02:35.420' AS DateTime), N'043       ', 0, 6, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (29, CAST(N'2020-02-12T04:25:49.890' AS DateTime), N'044       ', 0, 29, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (30, CAST(N'2020-03-14T23:24:58.760' AS DateTime), N'045       ', 0, 9, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (31, CAST(N'2020-05-03T04:48:19.360' AS DateTime), N'050       ', 0, 28, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (32, CAST(N'2020-04-08T20:05:54.570' AS DateTime), N'051       ', 0, 35, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (33, CAST(N'2020-01-15T11:09:28.550' AS DateTime), N'052       ', 0, 28, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (34, CAST(N'2020-04-16T19:30:55.830' AS DateTime), N'053       ', 0, 1, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (35, CAST(N'2020-03-11T02:17:16.440' AS DateTime), N'054       ', 0, 30, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (36, CAST(N'2020-04-05T14:45:33.000' AS DateTime), N'055       ', 0, 34, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (37, CAST(N'2020-05-07T13:47:21.390' AS DateTime), N'100       ', 0, 6, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (38, CAST(N'2020-03-09T10:22:12.250' AS DateTime), N'101       ', 0, 9, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (39, CAST(N'2020-04-30T05:25:33.170' AS DateTime), N'102       ', 0, 1, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (40, CAST(N'2020-04-23T05:00:22.730' AS DateTime), N'103       ', 0, 3, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (41, CAST(N'2020-04-30T16:07:29.790' AS DateTime), N'104       ', 0, 41, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (42, CAST(N'2020-01-31T07:14:20.800' AS DateTime), N'105       ', 0, 30, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (43, CAST(N'2020-04-07T19:47:38.070' AS DateTime), N'110       ', 0, 11, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (44, CAST(N'2020-02-10T01:06:59.000' AS DateTime), N'111       ', 0, 47, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (45, CAST(N'2020-03-14T06:18:35.560' AS DateTime), N'112       ', 0, 28, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (46, CAST(N'2020-04-11T17:13:19.660' AS DateTime), N'113       ', 0, 40, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (47, CAST(N'2020-01-29T01:13:52.770' AS DateTime), N'114       ', 0, 47, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (48, CAST(N'2020-02-28T11:51:12.860' AS DateTime), N'115       ', 0, 29, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (49, CAST(N'2020-04-15T04:33:56.730' AS DateTime), N'120       ', 0, 30, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (50, CAST(N'2020-03-03T00:35:56.750' AS DateTime), N'121       ', 0, 28, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (51, CAST(N'2020-05-31T20:34:30.683' AS DateTime), N'200       ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (52, CAST(N'2020-05-31T20:35:33.030' AS DateTime), N'200       ', 0, 1057, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (53, CAST(N'2020-05-31T20:35:47.387' AS DateTime), N'150       ', 0, 1057, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (54, CAST(N'2020-05-31T20:36:26.390' AS DateTime), N'170       ', 0, 1057, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (55, CAST(N'2020-06-03T00:00:00.000' AS DateTime), N'100       ', 2, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (56, CAST(N'2020-05-31T20:34:30.683' AS DateTime), N'200       ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (57, CAST(N'2020-05-31T20:34:30.683' AS DateTime), N'200       ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (58, CAST(N'2020-06-09T22:00:00.000' AS DateTime), N'212       ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (59, CAST(N'2020-05-31T20:34:30.683' AS DateTime), N'200       ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (60, CAST(N'2020-06-16T15:25:30.000' AS DateTime), N'20        ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (63, CAST(N'2020-06-15T22:48:43.000' AS DateTime), N'20        ', 2, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (64, CAST(N'2020-06-15T22:48:43.000' AS DateTime), N'200       ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (65, CAST(N'2020-06-15T22:50:37.000' AS DateTime), N'11        ', 1, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (66, CAST(N'2020-06-15T22:51:44.000' AS DateTime), N'111       ', 1, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (68, CAST(N'2020-06-16T11:39:33.000' AS DateTime), N'50        ', 0, 1057, 1)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (69, CAST(N'2020-07-01T14:50:19.000' AS DateTime), N'7.5       ', 0, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (70, CAST(N'2020-04-12T22:00:00.000' AS DateTime), N'8         ', 0, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (71, CAST(N'2020-01-15T22:00:00.000' AS DateTime), N'7         ', 0, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (72, CAST(N'2020-07-01T14:50:19.000' AS DateTime), N'320       ', 2, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (73, CAST(N'2020-06-29T22:00:00.000' AS DateTime), N'202       ', 2, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (74, CAST(N'2020-06-28T22:00:00.000' AS DateTime), N'200       ', 2, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (75, CAST(N'2020-06-22T22:00:00.000' AS DateTime), N'340       ', 1, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (76, CAST(N'2020-06-29T22:00:00.000' AS DateTime), N'230       ', 1, 1067, 0)
INSERT [dbo].[Test] ([ID], [Date], [Result], [Type], [PatientID], [Medication]) VALUES (77, CAST(N'2020-06-28T22:00:00.000' AS DateTime), N'242       ', 1, 1067, 0)
SET IDENTITY_INSERT [dbo].[Test] OFF
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (7, 50)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (8, 27)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (9, 39)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (10, 22)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (11, 10)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (12, 17)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (13, 33)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (14, 5)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (15, 12)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (16, 11)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (17, 34)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (18, 40)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (19, 6)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (20, 1)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (21, 18)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (22, 28)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (23, 35)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (24, 7)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (25, 46)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (26, 2)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (27, 8)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (28, 41)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (29, 23)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (30, 3)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (31, 36)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (32, 49)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (33, 13)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (34, 47)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (35, 42)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (36, 37)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (37, 19)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (38, 29)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (39, 24)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (40, 14)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (41, 30)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (42, 20)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (43, 15)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (44, 43)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (45, 21)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (46, 16)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (47, 25)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (48, 31)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (49, 26)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (50, 32)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1053, 4)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1053, 44)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1057, 9)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1057, 38)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1057, 79)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1059, 45)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1059, 48)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1067, 46)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1067, 49)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1067, 78)
INSERT [dbo].[User_SavedPosts] ([UserID], [PostID]) VALUES (1067, 79)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (1, 1)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (2, 2)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (3, 3)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (4, 4)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (5, 5)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (6, 6)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (7, 7)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (8, 8)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (9, 9)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (10, 10)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (11, 11)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (12, 12)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (13, 13)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (14, 14)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (15, 15)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (16, 16)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (17, 17)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (18, 18)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (19, 19)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (20, 20)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (21, 21)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (22, 22)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (23, 23)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (24, 24)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (25, 25)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (26, 26)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (27, 27)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (28, 28)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (29, 29)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (30, 30)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (31, 31)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (32, 32)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (33, 33)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (34, 34)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (35, 35)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (36, 36)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (37, 37)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (38, 38)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (39, 39)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (40, 40)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (41, 41)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (42, 42)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (43, 43)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (44, 44)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (45, 45)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (46, 46)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (47, 47)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (48, 48)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (49, 49)
INSERT [dbo].[User_SavedQuestion] ([QuestionID], [UserID]) VALUES (50, 50)
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1, N'Ryan2018', N'Referral', 0, N'15214')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (2, N'Janssen1973', N'TV Adds', 1, N'49164')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (3, N'Puckett588', N'Bing Adds', 0, N'86838')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (4, N'Donnell2009', N'Email', 1, N'10238')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (5, N'Wynell1974', N'Internet', 0, N'96491')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (6, N'Donnell113', N'Google Adds', 0, N'46460')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (7, N'Fernanda32', N'TV Adds', 1, N'86018')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (8, N'Jose2011', N'Email', 1, N'01798')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (9, N'Ai1', N'Add.Words', 0, N'04311')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (10, N'Ariel55', N'TV Adds', 0, N'60589')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (11, N'Ron972', N'Newspaper', 0, N'29593')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (12, N'Moises695', N'Google Adds', 0, N'72982')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (13, N'Abraham97', N'Bing Adds', 0, N'75065')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (14, N'Gaffney84', N'TV Adds', 1, N'96178')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (15, N'Lamonica2005', N'Internet', 1, N'77812')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (16, N'Hortensia1950', N'Bing Adds', 1, N'60452')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (17, N'Lovie25', N'Internet', 1, N'12618')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (18, N'Armstrong2021', N'TV Adds', 1, N'92715')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (19, N'Connors4', N'Internet', 1, N'81993')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (20, N'Donovan414', N'Newspaper', 0, N'23587')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (21, N'Amador519', N'Internet', 1, N'22314')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (22, N'Laurinda395', N'Word of mouth', 1, N'61914')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (23, N'Abreu1991', N'Add.Words', 0, N'32630')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (24, N'Erik48', N'Internet', 1, N'94696')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (25, N'Mickey85', N'Newspaper', 0, N'47306')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (26, N'Reynaldo79', N'Internet', 1, N'93075')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (27, N'Fred1986', N'Google Adds', 1, N'53107')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (28, N'Dane1954', N'Google Adds', 0, N'13871')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (29, N'Andersen2007', N'Bing Adds', 0, N'86314')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (30, N'Lucia2018', N'Direct', 0, N'36058')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (31, N'Stevie592', N'Internet', 1, N'75928')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (32, N'Loren1952', N'Internet', 1, N'00275')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (33, N'Doherty2022', N'Email', 0, N'35375')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (34, N'Minter1993', N'Referral', 0, N'72304')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (35, N'Shawnee499', N'Email', 0, N'56450')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (36, N'Alonzo1966', N'Referral', 1, N'57080')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (37, N'Franklyn1993', N'TV Adds', 1, N'53981')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (38, N'Cedric24', N'Internet', 1, N'06177')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (39, N'Numbers5', N'Bing Adds', 1, N'56716')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (40, N'Abel928', N'Add.Words', 0, N'15077')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (41, N'Rafaela98', N'Add.Words', 0, N'16787')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (42, N'Marlin1969', N'Direct', 1, N'88167')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (43, N'Shirlene5', N'Bing Adds', 1, N'22307')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (44, N'Adcock9', N'Email', 1, N'59171')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (45, N'Martin514', N'Google Adds', 1, N'95246')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (46, N'Andrade2025', N'Direct', 1, N'57310')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (47, N'Salazar2006', N'Email', 0, N'24269')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (48, N'Kelley2029', N'Direct', 1, N'69950')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (49, N'Aleida2025', N'Add.Words', 1, N'82668')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (50, N'Acosta1958', N'asda', 0, N'52660')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (52, N'ahmed gamal', N'adasda', 1, N'9f60867d-8c01-41d9-8cf3-18b8b80904c6')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1053, N'ahmed gamal A', N'asdasd', 1, N'20ea56e9-442b-45c0-aed5-13865bed0b4b')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1054, N'ahmed gamal', N'dasd', 1, N'08797997-bbad-4946-ae94-8fec5d384e17')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1055, N'ahmed gamal', N'dasd', 1, N'323a015a-bd61-43d1-bb27-0a46133e16d2')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1056, N'Aya Gamal', N'dadd', 1, N'991d4027-848d-4b3b-9d57-36f5ddebe022')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1057, N'12John', N'asdasd', 0, N'e57f5c70-583c-4bf6-92ae-eb03f052678b')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1058, N'asdad', N'asdasd', 0, N'd536ea15-a5cd-49e4-83df-aad2f483492a')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1059, N'asdad', N'asdasd', 0, N'eceb9e49-f42a-4747-8655-953647874eb9')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1060, N'asdad', N'asdasda', 0, N'80a1ffc6-f784-413d-a35d-16ea26779f82')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1061, N'asdad', N'asdasd', 0, N'04c16122-d14b-4a68-81f5-6cd8f5bcaa08')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1062, N'asdad', N'asdasda', 0, N'9cf88aaa-8582-42b1-b6c6-63a40e23bf77')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1063, N'john', N'asdasda', 0, N'1f8fde3f-e08d-4e53-877b-edae4fe69226')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1064, N'Dina Fahmy', N'dasdasd', 1, N'2d87f223-fdad-4253-9a42-949ab5ce1901')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1065, N'Dina Fahmy', N'adsdasd', 1, N'064101a8-a694-4ce0-9354-e18731df2d6a')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1066, N'Dina Fahmy', N'dasdasd', 1, N'e441789e-f198-4c43-bdab-bc2ab36331ae')
INSERT [dbo].[users] ([UserID], [UserName], [ImageSource], [Type], [ID]) VALUES (1067, N'DinaFahmy', NULL, 0, N'0c3bf6bd-3687-4b5e-8c46-fc8873097d42')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[Test] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__users__ID__7A672E12]  DEFAULT (N'') FOR [ID]
GO
ALTER TABLE [dbo].[Answers]  WITH NOCHECK ADD  CONSTRAINT [FK_Answers_Questions] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Questions] ([QuestionID])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions]
GO
ALTER TABLE [dbo].[Answers]  WITH NOCHECK ADD  CONSTRAINT [FK_Answers_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Users]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Certificates]  WITH NOCHECK ADD  CONSTRAINT [FK_Certificates_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Certificates] CHECK CONSTRAINT [FK_Certificates_Doctor]
GO
ALTER TABLE [dbo].[Chat]  WITH NOCHECK ADD  CONSTRAINT [FK_Chat_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [FK_Chat_Users]
GO
ALTER TABLE [dbo].[ChecksUps]  WITH NOCHECK ADD  CONSTRAINT [FK_ChecksUps_Patient1] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[ChecksUps] CHECK CONSTRAINT [FK_ChecksUps_Patient1]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts_PostID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_users_UserID]
GO
ALTER TABLE [dbo].[Doctor]  WITH NOCHECK ADD  CONSTRAINT [FK_Doctor_Users] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Users]
GO
ALTER TABLE [dbo].[Drug_Patient]  WITH NOCHECK ADD  CONSTRAINT [FK_Drug_Patient_Drugs] FOREIGN KEY([DrugID])
REFERENCES [dbo].[Drugs] ([DrugID])
GO
ALTER TABLE [dbo].[Drug_Patient] CHECK CONSTRAINT [FK_Drug_Patient_Drugs]
GO
ALTER TABLE [dbo].[Drug_Patient]  WITH NOCHECK ADD  CONSTRAINT [FK_Drug_Patient_Patient1] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Drug_Patient] CHECK CONSTRAINT [FK_Drug_Patient_Patient1]
GO
ALTER TABLE [dbo].[Msg]  WITH NOCHECK ADD  CONSTRAINT [FK_Msg_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[Msg] CHECK CONSTRAINT [FK_Msg_Users]
GO
ALTER TABLE [dbo].[Notification_Answer]  WITH NOCHECK ADD  CONSTRAINT [FK_Notification_Answer_Answers] FOREIGN KEY([AnswerID])
REFERENCES [dbo].[Answers] ([AnswerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notification_Answer] CHECK CONSTRAINT [FK_Notification_Answer_Answers]
GO
ALTER TABLE [dbo].[Notification_Answer]  WITH NOCHECK ADD  CONSTRAINT [FK_Notification_Answer_Notification] FOREIGN KEY([NotificationID])
REFERENCES [dbo].[Notification] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notification_Answer] CHECK CONSTRAINT [FK_Notification_Answer_Notification]
GO
ALTER TABLE [dbo].[Notification_Asked]  WITH NOCHECK ADD  CONSTRAINT [FK_Notification_Asked_Notification] FOREIGN KEY([NotificationID])
REFERENCES [dbo].[Notification] ([ID])
GO
ALTER TABLE [dbo].[Notification_Asked] CHECK CONSTRAINT [FK_Notification_Asked_Notification]
GO
ALTER TABLE [dbo].[Notification_Asked]  WITH NOCHECK ADD  CONSTRAINT [FK_Notification_Asked_Question_Doctors(Mention)] FOREIGN KEY([MentionID])
REFERENCES [dbo].[Question_Doctors(Mention)] ([ID])
GO
ALTER TABLE [dbo].[Notification_Asked] CHECK CONSTRAINT [FK_Notification_Asked_Question_Doctors(Mention)]
GO
ALTER TABLE [dbo].[Notification_Follow]  WITH NOCHECK ADD  CONSTRAINT [FK_Notification_Follow_Notification] FOREIGN KEY([NotificationID])
REFERENCES [dbo].[Notification] ([ID])
GO
ALTER TABLE [dbo].[Notification_Follow] CHECK CONSTRAINT [FK_Notification_Follow_Notification]
GO
ALTER TABLE [dbo].[Notification_MedicalInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_Notification_MedicalInfo_Notification] FOREIGN KEY([NotificationID])
REFERENCES [dbo].[Notification] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notification_MedicalInfo] CHECK CONSTRAINT [FK_Notification_MedicalInfo_Notification]
GO
ALTER TABLE [dbo].[Notification_MedicalInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_Notification_MedicalInfo_Patient_Doctors(follow)] FOREIGN KEY([MedicalInfoID])
REFERENCES [dbo].[Patient_Doctors(follow)] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notification_MedicalInfo] CHECK CONSTRAINT [FK_Notification_MedicalInfo_Patient_Doctors(follow)]
GO
ALTER TABLE [dbo].[Patient]  WITH NOCHECK ADD  CONSTRAINT [FK_Patient_Users] FOREIGN KEY([PatientID])
REFERENCES [dbo].[users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Users]
GO
ALTER TABLE [dbo].[Patient_Doctors(follow)]  WITH NOCHECK ADD  CONSTRAINT [FK_Patient_Doctors_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Patient_Doctors(follow)] CHECK CONSTRAINT [FK_Patient_Doctors_Doctor]
GO
ALTER TABLE [dbo].[Patient_Doctors(follow)]  WITH NOCHECK ADD  CONSTRAINT [FK_Patient_Doctors_Patient] FOREIGN KEY([PatienID])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Patient_Doctors(follow)] CHECK CONSTRAINT [FK_Patient_Doctors_Patient]
GO
ALTER TABLE [dbo].[Posts]  WITH NOCHECK ADD  CONSTRAINT [FK_Posts_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Category]
GO
ALTER TABLE [dbo].[Posts]  WITH NOCHECK ADD  CONSTRAINT [FK_Posts_Reactions] FOREIGN KEY([ReactionID])
REFERENCES [dbo].[Reactions] ([ReactionID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Reactions]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_users1] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_users1]
GO
ALTER TABLE [dbo].[Question_Doctors(Mention)]  WITH NOCHECK ADD  CONSTRAINT [FK_Question_Doctors_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Question_Doctors(Mention)] CHECK CONSTRAINT [FK_Question_Doctors_Doctor]
GO
ALTER TABLE [dbo].[Question_Doctors(Mention)]  WITH NOCHECK ADD  CONSTRAINT [FK_Question_Doctors_Questions] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Questions] ([QuestionID])
GO
ALTER TABLE [dbo].[Question_Doctors(Mention)] CHECK CONSTRAINT [FK_Question_Doctors_Questions]
GO
ALTER TABLE [dbo].[Questions]  WITH NOCHECK ADD  CONSTRAINT [FK_Questions_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Users]
GO
ALTER TABLE [dbo].[Test]  WITH NOCHECK ADD  CONSTRAINT [FK_Test_Patient] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Patient]
GO
ALTER TABLE [dbo].[User_SavedPosts]  WITH NOCHECK ADD  CONSTRAINT [FK_User_SavedPosts_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_SavedPosts] CHECK CONSTRAINT [FK_User_SavedPosts_Posts]
GO
ALTER TABLE [dbo].[User_SavedPosts]  WITH NOCHECK ADD  CONSTRAINT [FK_User_SavedPosts_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[User_SavedPosts] CHECK CONSTRAINT [FK_User_SavedPosts_Users]
GO
ALTER TABLE [dbo].[User_SavedQuestion]  WITH NOCHECK ADD  CONSTRAINT [FK_User_SavedQuestion_Questions] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Questions] ([QuestionID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_SavedQuestion] CHECK CONSTRAINT [FK_User_SavedQuestion_Questions]
GO
ALTER TABLE [dbo].[User_SavedQuestion]  WITH NOCHECK ADD  CONSTRAINT [FK_User_SavedQuestion_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_SavedQuestion] CHECK CONSTRAINT [FK_User_SavedQuestion_Users]
GO
ALTER TABLE [dbo].[users]  WITH NOCHECK ADD  CONSTRAINT [FK_users_AspNetUsers_ID] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_AspNetUsers_ID]
GO
/****** Object:  StoredProcedure [dbo].[AddAnswer]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddAnswer] 
@quesID int, @ans nvarchar(MAX), @notifType smallint, @userID int
 
AS
	insert into Answers(QuestionID,Answer,Date,UserID)
	values (@quesID,@ans,GETDATE(),@userID)
	Declare @ansId int
	select @ansId = SCOPE_IDENTITY();

	Declare @userName nvarchar(50)
select @userName=UserName from Answers a
inner join Users u
on a.UserID=u.UserID

	insert into Notification (UserID,Date,NotificationContent,Type)
    values (@userID,GETDATE(),@userName+' answered your question',@notifType)

	Declare @notifID int
	select @notifID=SCOPE_IDENTITY();

	insert into Notification_Answer(AnswerID,NotificationID)
	values(@ansId,@notifID)

Select * from Answers where Answers.AnswerID = @ansId

GO
/****** Object:  StoredProcedure [dbo].[AddCertificate]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddCertificate] @certificate nvarchar(50),@uni nvarchar(50), @drID int
as insert into Certificates(Certificate,University,DoctorID)
values (@certificate,@uni, @drID)
SELECT * FROM Certificates c  WHERE c.ID=SCOPE_IDENTITY()

GO
/****** Object:  StoredProcedure [dbo].[addcheckup]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addcheckup] @patientId int,@CheckupType smallint,@Notes nvarchar(100)
as
insert into ChecksUps(CheckupType,Date,PatientID,Notes) values(@CheckupType,getdate(),@patientId,@Notes)
SELECT * FROM ChecksUps cu WHERE cu.ID=SCOPE_IDENTITY()




GO
/****** Object:  StoredProcedure [dbo].[AddDrugForPatient]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddDrugForPatient] @drugID int, @note nvarchar(50), @patientID int, @dose int
as insert into Drug_Patient(DrugID,Note,PatientID,Dosage)
values (@drugID,@note, @patientID, @dose)

SELECT * FROM Drug_Patient dp WHERE dp.DrugID=@drugID AND dp.PatientID = @patientID

GO
/****** Object:  StoredProcedure [dbo].[AddPost]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddPost] @userID int, @categoryID int, @img nvarchar(50), @content nvarchar(MAX), @reactID int
as insert into Posts(UserID,CategoryID,ImageSource,PostContent,ReactionID,PostDate)
values (@userID, @categoryID, @img,@content, @reactID,GETDATE())

Select * from Posts where Posts.PostID = SCOPE_IDENTITY();


GO
/****** Object:  StoredProcedure [dbo].[addquestion]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addquestion] @DocID int,@question nvarchar(50),@userid int, @notifType smallint
AS

begin
if(@DocID=-1)
insert into Questions(UserID,Question,Date) values (@userid,@question,GETDATE())
else
begin
insert into Questions(UserID,Question,Date) values (@userid,@question,GETDATE())
declare @QID int
select @QID =SCOPE_IDENTITY()
--select @QID
insert into [Question_Doctors(Mention)](DoctorID,QuestionID,Status) values(@DocID,@QID,0)
declare @MID int
select @MID =SCOPE_IDENTITY()
--select @MID

	Declare @userName nvarchar(50)
    select @userName=UserName from Questions q
    inner join Users u
	on q.UserID=u.UserID

	insert into Notification (UserID,Date,NotificationContent,Type)
    values (@userID,GETDATE(),@userName+' mentioned you in a question',@notifType)

--declare @Qcontent nvarchar(50)
--select  @Qcontent=Question from Questions where QuestionID=@QID
--insert into Notification(UserID,NotificationContent,Type,Date) values(@DocID,@Qcontent,0,GETDATE())
declare @NID int
select @NID =SCOPE_IDENTITY()
--select @NID
insert into Notification_Asked(NotificationID,MentionID) values(@NID,@MID)
end
end

select * from Questions where Questions.QuestionID = @QID;

GO
/****** Object:  StoredProcedure [dbo].[AddTest]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddTest]  

@testResult int,
@testType SMALLINT,
@patientID int,
@testMedication BIT,
@Date DATETIME
AS 
	insert into Test(Date,Result,Type,PatientID,Medication)
	values (@Date,@testResult,@testType,@patientID,@testMedication)

	SELECT * FROM Test t	WHERE t.ID	= SCOPE_IDENTITY()

GO
/****** Object:  StoredProcedure [dbo].[Chat_Insert]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Chat_Insert] 
    @MyID int,
  @UserID int
AS 
    SET NOCOUNT ON 
    SET XACT_ABORT ON  

    BEGIN TRAN


    INSERT INTO Chat (UserID)
    VALUES	(@MyID)
	SET IDENTITY_INSERT Chat ON
	INSERT INTO Chat (UserID,ChatID)
	
	VALUES (@UserID,SCOPE_IDENTITY())
	SELECT * FROM	Chat c WHERE c.ChatID=SCOPE_IDENTITY()
SET IDENTITY_INSERT Chat OFF

    /*
    -- Begin Return row code block

    SELECT UserID, ChatID
    FROM   dbo.Chat
    WHERE  UserID = @UserID AND ChatID = @ChatID

    -- End Return row code block

    */
    COMMIT

GO
/****** Object:  StoredProcedure [dbo].[ChecksUps_Select]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChecksUps_Select]
    @PatientID int
AS
    BEGIN TRAN

    SELECT ID, CheckupType, Notes, Date, ResultData, Status, PatientID 
    FROM   dbo.ChecksUps
    WHERE  PatientID = @PatientID
	ORDER BY Date 


    COMMIT

GO
/****** Object:  StoredProcedure [dbo].[FollowDoctor]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FollowDoctor] @patienttID int, @drID int, @accessMedInfo smallint, @notifType smallint						 
AS 
insert into [Patient_Doctors(follow)](PatienID,DoctorID,Access_MedicalInfo)
values (@patienttID,@drID,@accessMedInfo)

Declare @notifID int
select @notifID = MAX(ID) from Notification

Declare @patientName nvarchar(50)
select @patientName=UserName from [Patient_Doctors(follow)]
inner join Users
on UserID=PatienID

insert into Notification (UserID,Date,NotificationContent,Type)
values (@drID,GETDATE(),@patientName+' followed you',@notifType)

Declare @followID int
select @followID = MAX(ID) from [Patient_Doctors(follow)]

insert into Notification_Follow (FollowID,NotificationID)
values (@followID,@notifID)


GO
/****** Object:  StoredProcedure [dbo].[getLastTenPosts]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[getLastTenPosts]  @postID int
as
select * from ( select TOP 10 * from Posts
where Posts.PostID > @postID) x
order by x.PostDate DESC

GO
/****** Object:  StoredProcedure [dbo].[getLatestPosts]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[getLatestPosts]  
as
select TOP 10 * from posts
order by PostDate DESC

GO
/****** Object:  StoredProcedure [dbo].[Msgs_Select]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Msgs_Select]
    @ChatID  int
AS
    
    BEGIN TRAN

    SELECT ChatID, MsgID, Date, MsgContent, UserID 
    FROM   dbo.Msg
    WHERE  ChatID = @ChatID  

    COMMIT

GO
/****** Object:  StoredProcedure [dbo].[Notification_Doctor_Select]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Notification_Doctor_Select]
    @DoctorID  int
AS
    
    BEGIN TRAN

    SELECT *
    FROM   dbo.Notification n
    WHERE  @DoctorID=n.UserID AND n.Type IN(1,2)	

    COMMIT




GO
/****** Object:  StoredProcedure [dbo].[Notification_Patient]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Notification_Patient] @patientID int AS
select * from Notification
where Notification.Type in (0 , 3) and @patientID = UserID 


GO
/****** Object:  StoredProcedure [dbo].[Patient_Drugs_Select]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Patient_Drugs_Select]
    @PatientID int
AS
    BEGIN TRAN

    SELECT d.DrugID,d.DrugName,d.DosageType,dp.PatientID
    FROM   dbo.Drug_Patient dp
	JOIN	Drugs d
	ON  d.DrugID=dp.DrugID
    WHERE  PatientID = @PatientID

    COMMIT

GO
/****** Object:  StoredProcedure [dbo].[Patient_Insert]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Patient_Insert] 
    
    @BirthDate datetime,
    @Gender char(1),
    @MedicalCondetion smallint,
    @Weight SMALLINT,
    @height smallint,
    @LifeStyle smallint,
	
    @UserName nvarchar(50),
	@userID nvarchar(450)=NULL	,
   
    @Points SMALLINT=NULL,
    @ImageSource nvarchar(max)=NULL
    
AS 
  

    BEGIN TRAN
	 INSERT INTO dbo.Users ( UserName, ImageSource, Type,ID)
    VALUES(  @UserName, @ImageSource,0,@userID)
	DECLARE @PatientID INT=SCOPE_IDENTITY()
    INSERT INTO dbo.Patient (PatientID, BirthDate, Gender, MedicalCondetion, Weight, height, LifeStyle, 
                             Points)
	VALUES(@PatientID, @BirthDate, @Gender, @MedicalCondetion, @Weight, @height, @LifeStyle, @Points)
	COMMIT

GO
/****** Object:  StoredProcedure [dbo].[Posts_Select]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Posts_Select]
    @categoryID int
AS
     BEGIN TRAN

    SELECT PostID, UserID, CategoryID, ImageSource, PostContent, ReactionID ,p.PostDate
    FROM   dbo.Posts p
    WHERE  CategoryID= @categoryID  
	ORDER BY PostDate DESC
    COMMIT




GO
/****** Object:  StoredProcedure [dbo].[Posts_Select_ByUserID]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Posts_Select_ByUserID]
    @user_id int
AS
    SELECT *
    FROM   dbo.Posts p
    WHERE  p.UserID= @user_id  
	ORDER BY PostDate DESC

GO
/****** Object:  StoredProcedure [dbo].[Questions_Select]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Questions_Select]
    @userID int
AS
    BEGIN TRAN

    SELECT QuestionID, Date, Question, UserID 
    FROM   dbo.Questions
    WHERE  UserID = @userID  

    COMMIT

GO
/****** Object:  StoredProcedure [dbo].[RequestMedicalInfo]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RequestMedicalInfo] @DocID INT,@userid INT,@followID INT, @notifType smallint
AS

begin
UPDATE [Patient_Doctors(follow)] SET Access_MedicalInfo = 1 WHERE ID=@followID
--DECLARE @notification NVARCHAR(50)
--SET @notification='asked for medical info'

--INSERT INTO Notification (UserID,NotificationContent,Type,Date) VALUES (@userid,@notification,3,GETDATE())

	Declare @drName nvarchar(50)
	select @drName=UserName from [Patient_Doctors(follow)] a
	inner join Users u
	on a.DoctorID=u.UserID

	insert into Notification (UserID,Date,NotificationContent,Type)
    values (@userID,GETDATE(),@drName+' asked to access your medical information',@notifType)


INSERT INTO Notification_MedicalInfo (NotificationID,MedicalInfoID) VALUES (SCOPE_IDENTITY(),@followID)
END

SELECT * FROM [Patient_Doctors(follow)] pd WHERE pd.ID=@followID

GO
/****** Object:  StoredProcedure [dbo].[SavedPosts]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE	 proc [dbo].[SavedPosts] @userID int
as
select Posts.PostID,CategoryID,ImageSource,PostContent,ReactionID,PostDate from Posts , User_SavedPosts
where @userID = [Posts].UserID and [Posts].PostID = [User_SavedPosts].PostID



GO
/****** Object:  StoredProcedure [dbo].[SavedQuestions_Select]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SavedQuestions_Select]
    @UserID int
AS
    BEGIN TRAN

    SELECT q.QuestionID ,q.Question,q.Date,q.UserID FROM Questions q
    JOIN User_SavedQuestion usq ON q.QuestionID = usq.QuestionID
    WHERE  q.UserID = @UserID

    COMMIT




GO
/****** Object:  StoredProcedure [dbo].[SelectFollowingPatients]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectFollowingPatients] @drID int as
SELECT u.UserName, u.ImageSource, p.PatientID, p.BirthDate, p.Gender, p.MedicalCondetion, p.Weight, p.height, p.LifeStyle, p.Points, u.UserID, u.Type, u.ID FROM users u
inner join Patient p on p.PatientID=u.UserID
inner join [Patient_Doctors(follow)] on[Patient_Doctors(follow)].PatienID=p.PatientID
INNER JOIN AspNetUsers anu ON u.ID = anu.Id
where DoctorID=@drID

GO
/****** Object:  StoredProcedure [dbo].[SelectTests]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectTests] @userID int
as select *  from Test 
where PatientID=@userID
order by Date DESC



GO
/****** Object:  StoredProcedure [dbo].[SelectTestsByType]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectTestsByType] @userID INT ,@type SMALLINT
as select * from Test
where PatientID=@userID AND @type=Type
order by Date DESC

GO
/****** Object:  StoredProcedure [dbo].[unfollowdoctor]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[unfollowdoctor] @DocID int,@patientId int
as
delete from [Patient_Doctors(follow)] where DoctorID=@DocID and PatienID=@patientId



GO
/****** Object:  StoredProcedure [dbo].[UpdateCheckups]    Script Date: 7/1/2020 5:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[UpdateCheckups] 
@cuID int, 
@cuResultDate nvarchar(max), 
@cuStatus smallint
AS 
Begin
Update ChecksUps 
Set 
ResultData = @cuResultDate,
[Status] = @cuStatus
Where ID = @cuID
End

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'notify Doctor when a patient follows him' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Notification_Follow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notify Patient that a doctor requested Medicalinfo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Notification_MedicalInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IF the questions is answered or not' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Question_Doctors(Mention)', @level2type=N'COLUMN',@level2name=N'Status'
GO
USE [master]
GO
ALTER DATABASE [DiabetesSyst2] SET  READ_WRITE 
GO
