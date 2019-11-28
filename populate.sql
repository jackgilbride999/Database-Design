INSERT INTO STAFF VALUES(10000000, 12345670, 'Colby', 'Lopez', '1986-05-28', 3000000, '2025550148', '2625', '56th Court', 'Davenport', 'IA');
INSERT INTO STAFF VALUES(10000001, 12345669, 'Joe', 'Anoai', '1985-05-25', 5000000, '2025550160', '2291', 'Main Street', 'Minneola', 'FL');
INSERT INTO STAFF VALUES(10000002, 12345668, 'Brock', 'Lesnar', '1977-06-12', 6500000, '2025550179', '5141', 'Mallard Lane', 'Alexandria', 'MN');
INSERT INTO STAFF VALUES(10000003, 12345667, 'Fergal', 'Devitt', '1981-07-25', 1000000, '2025550135', '5055', 'Forsyth Commerce Road', 'Orlando', 'FL');
INSERT INTO STAFF VALUES(10000004, 12345666, 'Rebecca', 'Quin', '1987-01-30', 250000, '2025550128', '3300', 'University Park Drive', 'Orlando', 'FL');
INSERT INTO STAFF VALUES(10000005, 12345665, 'Ashley', 'Fliehr', '1986-04-05', 550000, '2025550177', '5055', 'Forsyth Commerce Road', 'Orlando', 'FL');

INSERT INTO WRESTLER VALUES('Seth Rollins', 'M', 185, 98, 'Davenport, Iowa', 10000000);
INSERT INTO WRESTLER VALUES('Roman Regins', 'M', 191, 120, 'Pensacola, Florida', 10000001);
INSERT INTO WRESTLER VALUES('Brock Lesnar', 'M', 191, 130, 'Minneapolis, Minnesota', 10000002);
INSERT INTO WRESTLER VALUES('Finn Balor', 'M', 180, 86, 'Bray, County Wicklow, Ireland', 10000003);
INSERT INTO WRESTLER VALUES('Becky Lynch', 'F', 168, 61, 'Dublin, Ireland', 1000004);
INSERT INTO WRESTLER VALUES('Charlotte Flair', 'F', 178, NULL, 'The Queen City', 1000005);

INSERT INTO SHOW VALUES('Raw', 'USA Network', 3, 14876959, '1993-11-01');
INSERT INTO SHOW VALUES('SmackDown', 'Fox Sports 1', 2, 158408, '1999-04-29');
INSERT INTO SHOW VALUES('NXT', 'USA Network', 2, 15913216, '2012-02-29');

INSERT INTO CHAMPIONSHIP VALUES('WWE Championship', '1963-04-25', 0, 13938487, 'Brock Lesnar', 'Raw');
INSERT INTO CHAMPIONSHIP VALUES('Universal Championship', '2016-07-25', 255, 13938487, 'Roman Reigns', 'SmackDown');
INSERT INTO CHAMPIONSHIP VALUES('NXT Championship', '2014-06-01', 0, 13938487, 'Finn Balor', 'NXT')
INSERT INTO CHAMPIONSHIP VALUES('Raw Women Championship', '2016-08-03', 16777215, 16711680, 'Becky Lynch', 'Raw');

INSERT INTO ARENA VALUES('Madison Square Garden', 18500,  'Pennsylvania Plaza', 'New York', 'NY');
INSERT INTO ARENA VALUES('Allstate Arena', 18200, 'North Mannheim Road', 'Rosemont', 'IL');
INSERT INTO ARENA VALUES('Wells Fargo Center', 18000, 'South Broad Street', 'Philadelphia', 'PA');
INSERT INTO ARENA VALUES('Staples Center', 21000, 'South Figueroa Street', 'Los Angeles', 'CA');
INSERT INTO ARENA VALUES('TD Garden', 18000, 'Legends Way', 'Boston', 'MA');

INSERT INTO EPISODE VALUES('Raw Pilot', 1, '20:00:00', '23:00:00', '1993-11-01', 'Raw', 'Madison Square Garden');
INSERT INTO EPISODE VALUES('SmackDown Pilot', 1, '20:00:00', '22:00:00', '1999-04-29', 'SmackDown', 'Allstate Arena');
INSERT INTO EPISODE VALUES('NXT Pilot', 1, '20:00:00', '22:00:00', '2012-02-29', 'NXT', 'Wells Fargo Center');

INSERT INTO MATCH VALUES(10001, '20:10:00', '20:40:00', 'Pinfall', 'Raw Pilot', 'WWE Championship');
INSERT INTO MATCH VALUES(10002, '21:00:00', '20:20:00', 'Submission', 'Raw Pilot', NULL);
INSERT INTO MATCH VALUES(20001, '20:15:00', '20:30:00', 'Pinfall', 'SmackDown Pilot', NULL);
INSERT INTO MATCH VALUES(20002, '20:50:00', '21:15:00', 'Disqualification', NULL);
INSERT INTO MATCH VALUES(30001, '20:05:00', '20:30:00', 'Submission', NULL);
INSERT INTO MATCH VALUES(30002, '21:00:00', '21:40:00', 'Pinfall', NULL);

INSERT INTO MATCH VALUES(10001, 'Brock Lesnar', '1');
INSERT INTO MATCH VALUES(10001, 'Roman Reigns', '0');
INSERT INTO MATCH VALUES(10002, 'Seth Rollins', '1');
INSERT INTO MATCH VALUES(10002, 'Finn Balor', '0');
INSERT INTO MATCH VALUES(20001, 'Becky Lynch', '1');
INSERT INTO MATCH VALUES(20001, 'Charlotte Flair', '0');
INSERT INTO MATCH VALUES(20002, 'Seth Rollins', '1');
INSERT INTO MATCH VALUES(20002, 'Finn Balor', '1');
INSERT INTO MATCH VALUES(20002, 'Roman Reigns', '0');
INSERT INTO MATCH VALUES(20002, 'Brock Lesnar', '0');
INSERT INTO MATCH VALUES(30001, 'Finn Balor', '1');
INSERT INTO MATCH VALUES(30001, 'Charlotte Flair', '1');
INSERT INTO MATCH VALUES(30001, 'Seth Rollins', '0');
INSERT INTO MATCH VALUES(30001, 'Becky Lynch', '0');
INSERT INTO MATCH VALUES(30002, 'Roman Reigns', '1');
INSERT INTO MATCH VALUES(30002, 'Seth Rollins', '0');