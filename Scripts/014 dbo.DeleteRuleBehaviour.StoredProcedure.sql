USE [CodeFormatter]
GO
/****** Object:  StoredProcedure [dbo].[DeleteRuleBehaviour]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteRuleBehaviour] 
	-- Add the parameters for the stored procedure here
	@RuleId INT,
	@BehaviourId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	DELETE FROM 
		dbo.[RuleBehaviour]
	WHERE
		RuleId = @RuleId
		AND BehaviourId = @BehaviourId
	
END


GO
