DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(200),
	major VARCHAR(50),
	score INT
);

INSERT INTO student VALUES(1,'紅','中文',50);
INSERT INTO student VALUES(2,'橙','英文',60);
INSERT INTO student VALUES(3,'黃','俄文',70);
INSERT INTO student VALUES(4,'綠','德文',75);
INSERT INTO student VALUES(5,'藍','法文',80);
INSERT INTO student VALUES(6,'靛','日文',90);
INSERT INTO student VALUES(7,'紫','義大利文',100);

SELECT * FROM student

/*
Select 欄位名
From 表格名
Where 條件
Order by ASC.DESC
Limit 
*/

Select name as Participant,major as Profession,score as Performance from student
where score >=75 and score <=90 /*Filter*/
order by score desc /*降序*/
limit 2 ; /*限制2筆資料*/

/*
where major ='英文' or major = '國文'
等同於
where major in ('英文','國文')
*/

/*
where name = '小文'
where not name = '小文'
where name like '小%' (模糊搜索)
where name like '%紅%' (模糊搜索)
*/







