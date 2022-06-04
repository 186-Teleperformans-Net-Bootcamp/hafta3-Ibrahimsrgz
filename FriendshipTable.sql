USE [SocialDb]
GO

/****** Object:  Table [dbo].[Friendship]    Script Date: 2.06.2022 17:03:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Friendship](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sourceId] [int] NOT NULL,
	[targetId] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Friendship] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Friendship] ADD  CONSTRAINT [DF_Friendship_status]  DEFAULT ((0)) FOR [status]
GO

ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD  CONSTRAINT [FK_Friendship_User] FOREIGN KEY([sourceId])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[Friendship] CHECK CONSTRAINT [FK_Friendship_User]
GO

ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD  CONSTRAINT [FK_Friendship_User2] FOREIGN KEY([targetId])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[Friendship] CHECK CONSTRAINT [FK_Friendship_User2]
GO


