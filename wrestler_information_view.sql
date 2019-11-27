CREATE VIEW WRESTLER_INFORMATION (
    Wrestler_Ring_Name,
    Wrestler_Gender,
    Wrestler_First_Name,
    Wrestler_Last_Name,
    Wrestler_Date_Of_Birth,
    Wrestler_Phone_No,
    Wrestler_House_No,
    Wrestler_Street,
    Wrestler_City,
    Wrestler_State_Country)
    AS SELECT WRESTLER.Ring_Name, WRESTLER.Gender, STAFF.First_Name, STAFF.Last_Name, STAFF.Date_Of_Birth, STAFF.Phone_No, STAFF.House_No, STAFF.Street, STAFF.City, STAFF.State_Country
    FROM WRESTLER, STAFF
    WHERE WRESTLER.Ring_Name = STAFF.Ring_Name;