CREATE TRIGGER Championship_Date
AFTER INSERT ON CHAMPIONSHIP
WHEN (new.Date_Created IS NULL)
DECLARE
    Championship_Name VARCHAR(50);
BEGIN
    Name := NEW.Championship_Name;
    UPDATE CHAMPIONSHIP
    SET Date_Created = CURRENT_DATE
    WHERE Name = Championship_Name;
END;
.
RUN;

CREATE TRIGGER Episode_Date
AFTER INSERT ON EPISODE
WHEN (new.Date IS NULL)
DECLARE
    Episode_Title VARCHAR(255);
BEGIN
    Episode_Title := NEW.Title;
    UPDATE EPISODE
    SET Date = CURRENT_DATE
    WHERE Title = Episode_Title;
END;
.
RUN;