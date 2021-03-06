USE [CodeFormatter]
GO
/****** Object:  StoredProcedure [dbo].[AddRule]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddRule] 
	-- Add the parameters for the stored procedure here
	@LanguageId INT,
	@Keyword NVARCHAR(MAX),
	@MatchCount INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	
    -- Insert statements for procedure here
	INSERT INTO dbo.[Rules]
		(Keyword, MatchCount)
	VALUES
		(@Keyword, @MatchCount)

	DECLARE @NewRuleId INT 
	SET @NewRuleId = SCOPE_IDENTITY()

	INSERT INTO dbo.LanguageRules
		(LanguageId, RuleId)
	VALUES
		(@LanguageId, @NewRuleId)

	RETURN @NewRuleId
END


GO
