USE [CodeFormatter]
GO
/****** Object:  Table [dbo].[Rules]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rules](
	[RuleId] [int] IDENTITY(1,1) NOT NULL,
	[Keyword] [nvarchar](max) NOT NULL,
	[MatchCount] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
