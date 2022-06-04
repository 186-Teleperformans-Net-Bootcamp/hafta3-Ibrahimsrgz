USE [SocialDb]
GO

/****** Object:  Table [dbo].[MessageArchive]    Script Date: 2.06.2022 17:01:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MessageArchive](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [varchar](500) NOT NULL,
	[createdAt] [datetime] NOT NULL,
	[type] [nchar](10) NOT NULL,
 CONSTRAINT [PK_MessageArchive] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


