USE [multi level parking]
GO

/****** Object:  Table [dbo].[parking history]    Script Date: 5/31/2019 11:42:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parking history](
	[history id] [int] NOT NULL primary key,
	[vehicle id] [int] not null foreign key references[dbo].[vehicle]([vehicle id]),
	[slot id] [int] not null foreign key references [dbo].[slot details]([slot ID]),
	[in time] [datetime] NOT NULL,
	[out time] [datetime] NOT NULL,
	
);