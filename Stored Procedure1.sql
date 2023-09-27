USE [DP6-Titans]
GO

DECLARE	@return_value int,
		@result int

SELECT	@result = 0

EXEC	@return_value = [dbo].[myproc1]
		@num1 = 5,
		@num2 = 2,
		@result = @result OUTPUT

SELECT	@result as N'@result'

SELECT	'Return Value' = @return_value

GO
