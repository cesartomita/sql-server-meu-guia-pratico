DECLARE @DATA DATE = '2022-12-25';

SELECT
    DATEDIFF(YEAR, @DATA, GETDATE()) AS DATEDIFF_YEAR,
    DATEDIFF(MONTH, @DATA, GETDATE()) AS DATEDIFF_MONTH,
    DATEDIFF(DAY, @DATA, GETDATE()) AS DATEDIFF_DAY;