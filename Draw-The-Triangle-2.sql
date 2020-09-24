DECLARE @i INT = 1
WHILE (@i <= 20)
BEGIN   
   PRINT REPLICATE('* ', @i)
    SET @i = @i + 1
END

/*  hakkache yassin */