CREATE OR ALTER PROCEDURE SelectQualifiedEmployees (@passedExams as int)
AS
SELECT id FROM dbo.Salary
WHERE passedExams > @passedExams


DECLARE @RC int
DECLARE @passedExams int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[SelectQualifiedEmployees]
   @passedExams
GO


USE SalaryBase
EXECUTE [dbo].[SelectQualifiedEmployees] @passedExams = 30