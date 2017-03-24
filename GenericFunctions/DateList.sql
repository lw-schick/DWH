-- Credit goes to: http://www.sbrickey.com/Tech/Blog/Post/OLAP_An_improved_Date_dimension

CREATE FUNCTION [dbo].[DateList](@FromDate date, @ToDate date)
RETURNS @returnVal TABLE
(
	d datetime
)
AS
BEGIN

	WITH src AS
	(
		SELECT d = DATEADD(dd, 1, @FromDate)
		WHERE DATEADD(dd, 1, @FromDate) < @ToDate
		UNION ALL
		SELECT DATEADD(dd, 1, d)
		FROM src
		WHERE DATEADD(dd, 1, d) < @ToDate
	)
	INSERT INTO @ReturnVal ( d )
	SELECT * FROM src
	OPTION (MAXRECURSION 0);

	RETURN

END;
