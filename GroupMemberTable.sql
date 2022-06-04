USE [SocialDb]
GO

/****** Object:  Table [dbo].[GroupMember]    Script Date: 2.06.2022 17:02:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GroupMember](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[createdAt] [datetime] NOT NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_GroupMember] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[GroupMember] ADD  CONSTRAINT [DF_GroupMember_updatedAt]  DEFAULT (NULL) FOR [updatedAt]
GO

ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD  CONSTRAINT [FK_GroupMember_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([Id])
GO

ALTER TABLE [dbo].[GroupMember] CHECK CONSTRAINT [FK_GroupMember_Group]
GO

ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD  CONSTRAINT [FK_GroupMember_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[GroupMember] CHECK CONSTRAINT [FK_GroupMember_User]
GO


