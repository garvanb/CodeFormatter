USE [CodeFormatter]
GO
/****** Object:  User [CodeFormatterUser]    Script Date: 28/03/2017 15:17:56 ******/
CREATE USER [CodeFormatterUser] FOR LOGIN [CodeFormatterUser] WITH DEFAULT_SCHEMA=[dbo]
GO
EXEC sp_addrolemember 'db_owner', 'CodeFormatterUser'
GO
