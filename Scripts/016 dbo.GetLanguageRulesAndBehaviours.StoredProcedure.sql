USE [CodeFormatter]
GO
/****** Object:  StoredProcedure [dbo].[GetLanguageRulesAndBehaviours]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLanguageRulesAndBehaviours] 
	-- Add the parameters for the stored procedure here
	@LanguageId INT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		dbo.Rules.RuleId, dbo.Rules.Keyword, dbo.Rules.MatchCount, 
		dbo.Behaviour.Behaviour, dbo.Behaviour.Id AS BehaviourId
	FROM   
		dbo.Behaviour INNER JOIN
		dbo.RuleBehaviour ON dbo.Behaviour.Id = dbo.RuleBehaviour.BehaviourId RIGHT OUTER JOIN
		dbo.LanguageRules INNER JOIN
		dbo.Rules ON dbo.LanguageRules.RuleId = dbo.Rules.RuleId ON dbo.RuleBehaviour.RuleId = dbo.Rules.RuleId
	WHERE
		dbo.LanguageRules.LanguageId = @LanguageId
	ORDER BY
		dbo.Rules.RuleId
END

GO
