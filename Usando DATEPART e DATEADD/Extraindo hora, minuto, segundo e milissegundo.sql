DECLARE @DATA DATETIME = '2014-07-17 16:11:40.183';

SELECT
    DATEPART(HOUR, @DATA) AS PostTimeHour,
    DATEPART(MINUTE, @DATA) AS PostTimeMin,
    DATEPART(SECOND, @DATA) AS PostTimeSec,
    DATEPART(MILLISECOND, @DATA) AS PostTimeMs; 