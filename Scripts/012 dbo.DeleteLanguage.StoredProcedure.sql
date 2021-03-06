USE [CodeFormatter]
GO
/****** Object:  StoredProcedure [dbo].[DeleteLanguage]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteLanguage] 
	-- Add the parameters for the stored procedure here
	@LanguageId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	
    -- Delete all associate behaviours
	DELETE
		RuleBehaviour
	FROM   
		dbo.LanguageRules INNER JOIN
        dbo.Rules ON dbo.LanguageRules.RuleId = dbo.Rules.RuleId INNER JOIN
        dbo.RuleBehaviour ON dbo.Rules.RuleId = dbo.RuleBehaviour.RuleId
	WHERE
		LanguageId = @LanguageId 
		
	--Delete rules
	DELETE
		Rules
	FROM   
		dbo.LanguageRules INNER JOIN
        dbo.Rules ON dbo.LanguageRules.RuleId = dbo.Rules.RuleId	
	WHERE
		LanguageId = @LanguageId

	--Delete Language rules
	DELETE
		LanguageRules
	FROM   
		dbo.LanguageRules
	WHERE
		LanguageId = @LanguageId

	--Delete Language
	DELETE
		[Language]
	FROM   
		dbo.[Language]
	WHERE
		LanguageId = @LanguageId
	
END


GO
