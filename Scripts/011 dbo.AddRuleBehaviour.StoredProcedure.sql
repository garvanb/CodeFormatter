USE [CodeFormatter]
GO
/****** Object:  StoredProcedure [dbo].[AddRuleBehaviour]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddRuleBehaviour] 
	-- Add the parameters for the stored procedure here
	@RuleId INT,
	@BehaviourId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	INSERT INTO dbo.[RuleBehaviour]
		(RuleId, BehaviourId)
	VALUES
		(@RuleId, @BehaviourId)


END


GO
