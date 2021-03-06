USE [CodeFormatter]
GO
/****** Object:  StoredProcedure [dbo].[EditRule]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditRule] 
	-- Add the parameters for the stored procedure here
	@Id INT,
	@Keyword NVARCHAR(MAX),
	@MatchCount INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	UPDATE 
		Rules
	SET 
		Keyword = @Keyword
		, MatchCount = @MatchCount
	WHERE 
		RuleId = @Id

END


GO
