USE [TestDatabase]
GO

CREATE TABLE [dbo].[AspNetPermissions](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL)
GO

CREATE TABLE [dbo].[AspNetRolePermissions](
	[RoleId] [nvarchar](128) NOT NULL,
	[PermissionId] [int] NOT NULL)
GO

CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL)
GO

CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL)
GO

CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL)
GO

CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL)
GO

CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
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
	[UserName] [nvarchar](256) NOT NULL)
GO

CREATE TABLE [dbo].[ConfigurationKeys](
	[ConfigurationKeyId] [int] IDENTITY(1,1) NOT NULL,
	[ConfigurationKeyTypeId] [int] NOT NULL,
	[Key] [nvarchar](100) NULL,
	[Value] [nvarchar](100) NULL,
	[Regex] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[IsValidated] [bit] NOT NULL)
GO

CREATE TABLE [dbo].[ConfigurationKeyTypes](
	[ConfigurationKeyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL)
GO