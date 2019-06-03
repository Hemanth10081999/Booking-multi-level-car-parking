USE [multi level parking]
GO

/****** Object:  Table [dbo].[car]    Script Date: 5/31/2019 8:56:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vehicle](
	[vehicle id] [int] NOT NULL primary key,
	[login id] int NOT NULL foreign key references [dbo].[login] ([login ID]),
	[vehicle name] [varchar](20) NULL,
	[vehicle type] [varchar](30) not null,
	[vehicle no] [char](15) NOT NULL,
	[vehicle colour] [varchar](10) NULL,
	[available seats] [int] NULL
);


