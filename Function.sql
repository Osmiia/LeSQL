USE Fletnix
go

ALTER TABLE Watchhistory
DROP CONSTRAINT CK_WatchdateTussenAbbonement

DROP FUNCTION dbo.fnCK_WatchdateTussenAbbonement
go

CREATE FUNCTION dbo.fnCK_WatchdateTussenAbbonement
(@watchdate DATE, @customer_mail_address varchar(255))
RETURNS BIT
AS
BEGIN
RETURN CASE WHEN EXISTS(SELECT	C.customer_mail_address
						FROM	Customer C
						WHERE	@customer_mail_address = C.customer_mail_address
						AND		((@watchdate BETWEEN C.subscription_start AND C.subscription_end) OR  (C.subscription_end IS NULL))
				THEN 1
				ELSE 0
			END
END
GO

ALTER TABLE Watchhistory
ADD CONSTRAINT CK_WatchdateTussenAbbonement
CHECK (dbo.fnCK_WatchdateTussenAbbonement (watch_date, customer_mail_address) = 1)

						--SELECT	W.watch_date, C.customer_mail_address
						--FROM	Customer C, Watchhistory W
						--WHERE	W.customer_mail_address = C.customer_mail_address
						--AND		((W.watch_date BETWEEN C.subscription_start AND C.subscription_end) OR  (C.subscription_end IS NULL))