DROP TABLE invoices;
CREATE TABLE IF NOT EXISTS invoices(
id SERIAL PRIMARY KEY,
customerId INT,
date DATE,
address VARCHAR(150),
city VARCHAR(150),
state VARCHAR(150),
country VARCHAR(150),
postalcode VARCHAR(150),
total REAL
);

SELECT *
FROM invoices