CREATE TABLE IF NOT EXISTS student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20)
);

DROP TABLE student;

CREATE TABLE IF NOT EXISTS artists(
	id SERIAL PRIMARY KEY,
	name VARCHAR
);

SELECT * FROM artists;

CREATE TABLE IF NOT EXISTS city(
	id SERIAL,
	name VARCHAR(100),
	population INT,
	PRIMARY KEY(id)
);

SELECT * FROM city;

