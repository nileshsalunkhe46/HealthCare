USE [master]
GO

CREATE DATABASE [LoginDB]

GO

USE [LoginDB]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 01/03/2014 16:36:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [LoginDB]
GO

INSERT INTO Users
SELECT 'Mudassar', '12345', 'mudassar@aspsnippets.com', GETDATE(), NULL
UNION ALL
SELECT 'Ram', '12345', 'ram@aspsnippets.com', GETDATE(), NULL
GO
