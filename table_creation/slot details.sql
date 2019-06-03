USE [multi level parking]
GO

/****** Object:  Table [dbo].[slot details]    Script Date: 5/31/2019 9:59:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[slot details](
	[slot ID] [int] NOT NULL primary key,
	[loc id] [int] not null foreign key references [dbo].[location details]([loc_id]),
	[slot name] [varchar](3) NOT NULL,
	[floor] [int] not null,
	[slot type id] int not null foreign key references [dbo].[slot type]([slot type id]),
	[availability] [int] NOT NULL,
);