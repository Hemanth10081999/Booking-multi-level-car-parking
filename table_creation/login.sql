USE [book parking slot]
GO

/****** Object:  Table [dbo].[login]    Script Date: 5/31/2019 6:00:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[login](
	[login ID] [int] NOT NULL primary key identity(1,1),
	[FirstName] [varchar](30) not NULL unique,
	[LastName] [varchar](30) NULL,
	[mailid] [varchar](50) NOT NULL unique,
	[phone] [varchar](13) NOT NULL unique,
	[password] [varchar](16) NOT NULL,
	[DOB] [date] NULL,
	[gender] [char](1) NULL,
	[company name] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[city] [varchar](20) NULL,
	[pin] [varchar](8) NULL,
	[wallet balance] [int] NOT NULL,

);
