USE [CodeFormatter]
GO
/****** Object:  Table [dbo].[RuleBehaviour]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleBehaviour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RuleId] [int] NOT NULL,
	[BehaviourId] [int] NOT NULL
) ON [PRIMARY]

GO
