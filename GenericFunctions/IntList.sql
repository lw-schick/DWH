CREATE FUNCTION [dbo].[IntList](@From int, @To int)
RETURNS @returnVal TABLE
(
	i int
)
AS
BEGIN

	WITH src AS
	(
		SELECT i = @From
		WHERE @From + 1 <= @To
		UNION ALL
		SELECT i + 1
		FROM src
		WHERE i + 1 <= @To
	)
	INSERT INTO @ReturnVal ( i )
	SELECT * FROM src
	OPTION (MAXRECURSION 0);

	RETURN

END;
