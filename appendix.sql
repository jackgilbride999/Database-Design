CREATE TABLE STAFF (
    Staff_Number INTEGER NOT NULL,
    SSN INTEGER NOT NULL UNIQUE,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Salary INTEGER,
    Phone_No CHAR(10),
    House_No VARCHAR(20),
    Street VARCHAR(20),
    City VARCHAR(20),
    State_Country VARCHAR(20),
    PRIMARY KEY (Staff_Number),
    CHECK (SALARY > 0)
);

CREATE TABLE WRESTLER (
    Ring_Name VARCHAR(50) NOT NULL,
    Gender CHAR(1),
    Height INTEGER,
    Weight INTEGER,
    Billed_From VARCHAR(50),
    Staff_Number INTEGER NOT NULL,
    PRIMARY KEY (Ring_Name),
    FOREIGN KEY (Staff_Number) REFERENCES STAFF (Staff_Number) ON UPDATE CASCADE,
    CONSTRAINT CHK_Wrestler CHECK (Height > 0 AND Weight > 0)
);

CREATE TABLE SHOW (
    Name VARCHAR(20) NOT NULL,
    Channel VARCHAR(20),
    Airtime INTEGER,
    Brand_Color INTEGER,
    First_Aired DATE,
    PRIMARY KEY (Name)
);

CREATE TABLE CHAMPIONSHIP (
    Name VARCHAR(50) NOT NULL,
    Date_Created DATE,
    Strap_Colour INTEGER,
    Plate_Colour INTEGER,
    Holder_Name VARCHAR(50) NOT NULL,
    Show_Name VARCHAR(20) NOT NULL,
    PRIMARY KEY (Name),
    FOREIGN KEY (Holder_Name) REFERENCES WRESTLER (Ring_Name) ON UPDATE CASCADE,
    FOREIGN KEY (Show_Name) REFERENCES SHOW (Name) ON UPDATE CASCADE
);

CREATE TABLE ARENA (
    Name VARCHAR(255) NOT NULL,
    Attendence INTEGER,
    Street VARCHAR(20),
    City VARCHAR(20),
    State VARCHAR(20),
    PRIMARY KEY (Name),
    CHECK (Attendence > 0)
);

CREATE TABLE EPISODE(
    Title VARCHAR(255) NOT NULL,
    Number INTEGER,
    Start_Time TIME(0),
    End_Time TIME(0),
    Date DATE,
    Show_Name VARCHAR(20) NOT NULL,
    Arena_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Title),
    FOREIGN KEY (Show_Name) REFERENCES SHOW (Name) ON UPDATE CASCADE,
    FOREIGN KEY (Arena_Name) REFERENCES ARENA (Name) ON UPDATE CASCADE,
    CHECK (Number >= 0)
);

CREATE TABLE MATCH (
    Match_ID INTEGER NOT NULL,
    Start_Time TIME(0),
    End_Time TIME(0),
    Outcome VARCHAR(20),
    Booked_By VARCHAR(255) NOT NULL,
    Defence_Of VARCHAR(50),
    PRIMARY KEY (Match_ID),
    FOREIGN KEY (Booked_By) REFERENCES EPISODE (Title) ON UPDATE CASCADE,
    FOREIGN KEY (Defence_Of) REFERENCES CHAMPIONSHIP (Name) ON UPDATE CASCADE
);

CREATE TABLE WRESTLER_IN_MATCH (
    Match_ID INTEGER NOT NULL,
    Ring_Name VARCHAR(50) NOT NULL,
    Win BIT(1),
    PRIMARY KEY (Match_ID, Ring_Name),
    FOREIGN KEY (Match_ID) REFERENCES MATCH (Match_ID) ON UPDATE CASCADE,
    FOREIGN KEY (Ring_Name) REFERENCES WRESTLER (Ring_Name) ON UPDATE CASCADE
)