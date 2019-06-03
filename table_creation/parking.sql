USE [multi level parking]
GO

/****** Object:  Table [dbo].[parking]    Script Date: 5/31/2019 11:03:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parking](
	[park ID] [int] NOT NULL primary key,
	[vehicle id] [int] NOT NULL foreign key references [dbo].[vehicle]([vehicle id]),
	[slot ID] [int] NOT NULL foreign key references [dbo].[slot details]([slot ID]),
	[in time] [datetime] NOT NULL,
	[out time] [datetime] NULL,
	
);