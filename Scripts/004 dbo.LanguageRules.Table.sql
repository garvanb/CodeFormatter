USE [CodeFormatter]
GO
/****** Object:  Table [dbo].[LanguageRules]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageRules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[RuleId] [int] NOT NULL
) ON [PRIMARY]

GO
