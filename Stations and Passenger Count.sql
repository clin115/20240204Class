Create Table if not exists Stations(
	Station_ID int Primary Key,
	Station_Name VARCHAR(20) Not Null,
	English_Name VARCHAR(50),
	Location VARCHAR(50),
	English_Location VARCHAR(100),
	Address VARCHAR(500),
	English_Address VARCHAR(500),
	Phone_Number VARCHAR(30),
	GPS VARCHAR (50),
	YouBike boolean
);

SELECT COUNT(*) as 筆數
FROM Stations;

SELECT * from stations;

CREATE TABLE IF NOT EXISTS Gate_Count(
	id serial,
	YearMonthDay Date not null,
	Station_Number int Default 0,
	Passenger_In_Count int Default 0,
	Passenger_Out_Count int Default 0,
	Primary Key(id),
	Foreign Key(Station_Number) REFERENCES Stations(Station_ID)
	On delete set null
	On update cascade
);

Select * from gate_count

Select * from stations

drop table gate_count



