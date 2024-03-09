CREATE TABLE Basket_A(
	A int Primary Key,
	Fruit_A VARCHAR(100) not NULL
);

INSERT INTO Basket_A (A,Fruit_A)
	VALUES 
		(1,'Apple'),
		(2,'Banna'),
		(3,'Pineapple'),
		(4,'Pear');

CREATE TABLE Basket_B(
	B int Primary Key,
	Fruit_B VARCHAR(100) not NULL
);

INSERT INTO Basket_B(B,Fruit_B)
	VALUES 
		(1,'Watermelon'),
		(2,'Tomato'),
		(3,'Orange'),
		(4,'Apple');

Select * from Basket_A;
Select * from Basket_B;

/*Inner Join 交集*/
SELECT a,fruit_a,b,fruit_b
FROM Basket_A INNER JOIN Basket_B on Fruit_A = Fruit_B;

/*Left Join From的部分全部選取，後面的取交集*/
SELECT a,fruit_a,b,fruit_b
FROM Basket_A LEFT JOIN Basket_B on Fruit_A = Fruit_B
WHERE b is null

SELECT a,fruit_a,b,fruit_b
FROM Basket_A right JOIN Basket_B on Fruit_A = Fruit_B
WHERE a is null

/*Full Outer Join 為全集，加上where可以除去兩個表格重複*/
SELECT a,fruit_a,b,fruit_b
FROM Basket_A FULL OUTER JOIN Basket_B on Fruit_A = Fruit_B
where a is null or b is null

