USE [SocialDb]
GO

/****** Object:  Table [dbo].[UserMessage]    Script Date: 2.06.2022 17:00:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserMessage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sourceId] [int] NOT NULL,
	[targetId] [int] NOT NULL,
	[message] [varchar](500) NOT NULL,
	[type] [nchar](10) NULL,
	[createdAt] [datetime] NOT NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_UserMessage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserMessage] ADD  CONSTRAINT [DF_UserMessage_updatedAt]  DEFAULT (NULL) FOR [updatedAt]
GO

ALTER TABLE [dbo].[UserMessage]  WITH CHECK ADD  CONSTRAINT [FK_UserMessage_User] FOREIGN KEY([sourceId])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[UserMessage] CHECK CONSTRAINT [FK_UserMessage_User]
GO

ALTER TABLE [dbo].[UserMessage]  WITH CHECK ADD  CONSTRAINT [FK_UserMessage_User2] FOREIGN KEY([targetId])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[UserMessage] CHECK CONSTRAINT [FK_UserMessage_User2]
GO


