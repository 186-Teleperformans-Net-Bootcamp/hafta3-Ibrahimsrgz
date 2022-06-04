USE [SocialDb]
GO

/****** Object:  Table [dbo].[Group]    Script Date: 2.06.2022 17:02:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[createdBy] [int] NOT NULL,
	[updatedBy] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
	[createdAt] [datetime] NOT NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_updatedAt]  DEFAULT (NULL) FOR [updatedAt]
GO

ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_User] FOREIGN KEY([createdBy])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_User]
GO

ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_User2] FOREIGN KEY([updatedBy])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_User2]
GO


