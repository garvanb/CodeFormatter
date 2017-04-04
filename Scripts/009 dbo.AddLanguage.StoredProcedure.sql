USE [CodeFormatter]
GO
/****** Object:  StoredProcedure [dbo].[AddLanguage]    Script Date: 28/03/2017 15:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddLanguage] 
	-- Add the parameters for the stored procedure here
	@Name nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	
    -- Insert statements for procedure here
	INSERT INTO dbo.[Language]
		(Name)
	VALUES
		(@Name)

    RETURN SCOPE_IDENTITY()
END


GO
