CREATE TABLE IF NOT EXISTS Taipei_Ubike_Stations(
	Station_ID VARCHAR(10),
	Station_Name VARCHAR(30)NOT NULL,
	District VARCHAR(10)NOT NULL,
	Address VARCHAR(100),
	Lat NUMERIC(15,11),
	Lng NUMERIC(15,11),
	PRIMARY KEY (Station_ID)
);

CREATE TABLE IF NOT EXISTS Ubike_Status(
	DATE TIMESTAMP,
	Station_ID VARCHAR(10),
	Bike_Amount INTEGER,
	Borrow_Avail INTEGER,
	RETURN_Avail INTEGER,
	Activity BOOLEAN,
	PRIMARY KEY(DATE,Station_ID),
	FOREIGN KEY(Station_ID) REFERENCES Taipei_Ubike_Stations(Station_ID)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

DROP TABLE Ubike_Status;
DROP TABLE Taipei_Ubike_Stations;

'如果全部的值都有對應的欄位，可以不用特定指定欄位'
INSERT INTO Taipei_Ubike_Stations
VALUES ('500101001','YouBike2.0_捷運科技大樓站','大安區','復興南路二段235號前',25.02605,121.5436)
ON CONFLICT DO NOTHING;
'或是 ON CONFLICT DO UPDATE 覆蓋資料'


INSERT INTO Ubike_Status
VALUES ('2024-04-27 13:49:32','500101001',28,1,27,true)
ON CONFLICT DO NOTHING;



	


