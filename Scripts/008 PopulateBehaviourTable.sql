Use [CodeFormatter]
GO

--DELETE FROM [Behaviour]

--DBCC CHECKIDENT ('[Behaviour]', RESEED, 0);

INSERT INTO
	Behaviour
	(Behaviour)
VALUES
	('Tab')

INSERT INTO
	Behaviour
	(Behaviour)
VALUES
	('CarriageReturn')

GO