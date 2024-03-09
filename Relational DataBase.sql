CREATE TABLE IF NOT EXISTS Customer(
Customer_Id SERIAL,
Customer_Name VARCHAR(255) not null,
PRIMARY KEY(Customer_ID)
);

CREATE TABLE IF NOT EXISTS Contact(
	Contact_ID SERIAL,
	Customer_ID INT,
	Contact_Name VARCHAR(100) NOT NULL,
	Phone_Number VARCHAR(15),
	EMAIL VARCHAR(150),
PRIMARY KEY(Contact_ID),
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) 
ON DELETE SET NULL
/*如果沒有上面這一條指令，則資料庫不能刪。
	要告訴資料庫尚有關聯的資料表要如何處理
	例如保持NULL*/
/*ON DELETE SET CASCADE  可以刪除整筆資料*/
	);

INSERT INTO Customer(Customer_Name)
VALUES
	('Fenix'),
	('Kerrigan'),
	('Zeratul'),
	('General Duke');
INSERT INTO Contact(Customer_ID,Contact_Name,Phone_number,EMAIL)
VALUES 
	(1,'John DOE','410-570-8899','john123@gmail.com'),
	(2,'Zach DOE','420-570-1122','zach456@gmail.com'),
	(2,'Penny DOE','430-570-3344','penny789@gmail.com'),
	(3,'Leonard DOE','440-570-5566','leonard159@gmail.com'),
	(4,'Amy DOE','450-570-7788','amy753@gmail.com');

DELETE FROM Customer
Where Customer_ID = 1


