USE [SocialDb]
GO

/****** Object:  Table [dbo].[FriendshipApprove]    Script Date: 2.06.2022 17:03:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FriendshipApprove](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sourceId] [int] NOT NULL,
	[targetId] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_FriendshipApprove] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FriendshipApprove] ADD  CONSTRAINT [DF_FriendshipApprove_status]  DEFAULT ((0)) FOR [status]
GO


