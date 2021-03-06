USE [master]
GO
/****** Object:  Database [SmartphonesDb]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE DATABASE [SmartphonesDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartphonesDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SmartphonesDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SmartphonesDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SmartphonesDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SmartphonesDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartphonesDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartphonesDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartphonesDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartphonesDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartphonesDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartphonesDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartphonesDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SmartphonesDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartphonesDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartphonesDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartphonesDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartphonesDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartphonesDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartphonesDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartphonesDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartphonesDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SmartphonesDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartphonesDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartphonesDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartphonesDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartphonesDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartphonesDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartphonesDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartphonesDb] SET RECOVERY FULL 
GO
ALTER DATABASE [SmartphonesDb] SET  MULTI_USER 
GO
ALTER DATABASE [SmartphonesDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartphonesDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartphonesDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartphonesDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartphonesDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SmartphonesDb', N'ON'
GO
ALTER DATABASE [SmartphonesDb] SET QUERY_STORE = OFF
GO
USE [SmartphonesDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30/09/2020 10:31:29 am ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 30/09/2020 10:31:29 am ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 30/09/2020 10:31:29 am ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 30/09/2020 10:31:29 am ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 30/09/2020 10:31:29 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 30/09/2020 10:31:29 am ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 30/09/2020 10:31:29 am ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 30/09/2020 10:31:29 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAssessories]    Script Date: 30/09/2020 10:31:29 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssessories](
	[AssID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Genuine] [bit] NOT NULL,
	[Copy] [bit] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_tblAssessories] PRIMARY KEY CLUSTERED 
(
	[AssID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLabs]    Script Date: 30/09/2020 10:31:29 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLabs](
	[LabId] [int] IDENTITY(1,1) NOT NULL,
	[MobileModel] [nvarchar](max) NOT NULL,
	[Fault] [nvarchar](max) NOT NULL,
	[ExpectedRepairDate] [datetime2](7) NOT NULL,
	[IsRepairable] [bit] NOT NULL,
	[IsDeadCondition] [bit] NOT NULL,
 CONSTRAINT [PK_tblLabs] PRIMARY KEY CLUSTERED 
(
	[LabId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhones]    Script Date: 30/09/2020 10:31:29 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhones](
	[PhoneId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Storage] [int] NOT NULL,
	[RAM] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_tblPhones] PRIMARY KEY CLUSTERED 
(
	[PhoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200920172625_InitialCreate', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200926074913_assessoriesAdded', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200926081136_labadded', N'3.1.8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fe6b5ad9-d6e5-4bf0-83d0-355a0f68e9fe', N'harpreet@gmail.com', N'HARPREET@GMAIL.COM', N'harpreet@gmail.com', N'HARPREET@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHVsPNiXpgWjJzZiueL2MtaEHbZl98wGpqvrp0kzSZzZm0gTryPnP6Ex48ltkcU6gw==', N'BVUJBT4JR5E6SQ5WPIBOPOY35UOOLZ6V', N'adedaabf-2235-4e81-b7c8-e723ca712795', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[tblAssessories] ON 

INSERT [dbo].[tblAssessories] ([AssID], [Name], [Company], [Price], [Genuine], [Copy], [Stock]) VALUES (1, N'display', N'samsung', 200, 1, 0, 1)
INSERT [dbo].[tblAssessories] ([AssID], [Name], [Company], [Price], [Genuine], [Copy], [Stock]) VALUES (2, N'headphone', N'Apple', 1000, 1, 0, 1)
INSERT [dbo].[tblAssessories] ([AssID], [Name], [Company], [Price], [Genuine], [Copy], [Stock]) VALUES (3, N'watch', N'Apple', 500, 1, 0, 60)
INSERT [dbo].[tblAssessories] ([AssID], [Name], [Company], [Price], [Genuine], [Copy], [Stock]) VALUES (4, N'Charger', N'samsung', 300, 0, 1, 22)
INSERT [dbo].[tblAssessories] ([AssID], [Name], [Company], [Price], [Genuine], [Copy], [Stock]) VALUES (5, N'SelfieStick', N'Apple', 200, 1, 0, 20)
SET IDENTITY_INSERT [dbo].[tblAssessories] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLabs] ON 

INSERT [dbo].[tblLabs] ([LabId], [MobileModel], [Fault], [ExpectedRepairDate], [IsRepairable], [IsDeadCondition]) VALUES (1, N'Samsung Galaxy A', N'increased battery drain', CAST(N'0009-11-18T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[tblLabs] ([LabId], [MobileModel], [Fault], [ExpectedRepairDate], [IsRepairable], [IsDeadCondition]) VALUES (3, N'Galaxy S10+', N'fault in battery', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[tblLabs] ([LabId], [MobileModel], [Fault], [ExpectedRepairDate], [IsRepairable], [IsDeadCondition]) VALUES (4, N'iphone10', N'Screen replacement', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[tblLabs] ([LabId], [MobileModel], [Fault], [ExpectedRepairDate], [IsRepairable], [IsDeadCondition]) VALUES (5, N'realme', N'fault in camera', CAST(N'0001-01-05T12:02:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[tblLabs] ([LabId], [MobileModel], [Fault], [ExpectedRepairDate], [IsRepairable], [IsDeadCondition]) VALUES (6, N'iball', N'front camera', CAST(N'0001-01-16T00:03:00.0000000' AS DateTime2), 0, 1)
SET IDENTITY_INSERT [dbo].[tblLabs] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPhones] ON 

INSERT [dbo].[tblPhones] ([PhoneId], [Title], [Storage], [RAM], [Price]) VALUES (1, N'Samsung ', 10, 8, 500)
SET IDENTITY_INSERT [dbo].[tblPhones] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 30/09/2020 10:31:29 am ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [SmartphonesDb] SET  READ_WRITE 
GO
