/*Field Constraint*/
/*
Not Null (不可為空)
PRIMARY KEY
UNIQUE (不可重複)
DEFAULT 
*/

DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	major VARCHAR(50) UNIQUE
);

SELECT * FROM student;

INSERT INTO student(name,major) VALUES ('Jimmy','Zealot')
INSERT INTO student(name,major) VALUES ('Fenix','Dragoon')
/*或是*/
INSERT INTO student(name,major)
VALUES ('Kerrigan','Queen'),('Duran','Ghost')


