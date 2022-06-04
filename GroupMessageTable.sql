USE [SocialDb]
GO

/****** Object:  Table [dbo].[GroupMessage]    Script Date: 2.06.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GroupMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[groupId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[message] [varchar](500) NOT NULL,
	[type] [nchar](10) NOT NULL,
	[createdAt] [datetime] NOT NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_GroupMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[GroupMessage] ADD  CONSTRAINT [DF_GroupMessage_updatedAt]  DEFAULT (NULL) FOR [updatedAt]
GO

ALTER TABLE [dbo].[GroupMessage]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessage_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([Id])
GO

ALTER TABLE [dbo].[GroupMessage] CHECK CONSTRAINT [FK_GroupMessage_Group]
GO

ALTER TABLE [dbo].[GroupMessage]  WITH CHECK ADD  CONSTRAINT [FK_GroupMessage_user] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[GroupMessage] CHECK CONSTRAINT [FK_GroupMessage_user]
GO


