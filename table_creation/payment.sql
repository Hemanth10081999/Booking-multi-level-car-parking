USE [multi level parking]
GO

/****** Object:  Table [dbo].[payment]    Script Date: 5/31/2019 10:51:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[payment](
	[payment id] [int] NOT NULL primary key,
	[payment mode] [int] NOT NULL,
	[history id] [int] not null foreign key references [dbo].[parking history]([history id]),
	[paid amount] [int] NOT NULL,

);