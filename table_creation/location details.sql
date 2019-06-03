USE [multi level parking]
GO

/****** Object:  Table [dbo].[location details]    Script Date: 5/31/2019 8:49:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[location details](
	[loc_id] [int] NOT NULL primary key,
	[location name] [varchar](30) NOT NULL,
	[location address] [varchar](300) NOT NULL,
	[location city] [varchar](30) NOT NULL,
	[location pin] [bigint] NOT NULL,
	[location support no] [bigint] NOT NULL,
	[sector] [int] NOT NULL,
	[total slots] [int] NOT NULL,
	[available slots] [int] NOT NULL,
	[longitude] [decimal](18, 9) NOT NULL,
	[latitude] [decimal](18, 9) NOT NULL,
);
