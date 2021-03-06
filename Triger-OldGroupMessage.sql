USE [SocialDb]
GO
/****** Object:  Trigger [dbo].[OldGroupMessage]    Script Date: 2.06.2022 16:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER trigger [dbo].[OldGroupMessage]

on [dbo].[GroupMessage]

after update

as 

begin 

	declare @message varchar(500), @type nchar(10), @createdAt Datetime
	
	select @message=d.message, @type= d.type, @createdAt=d.createdAt from deleted d

	insert into  MessageArchive values ( @message,@createdAt,@type) 

end
