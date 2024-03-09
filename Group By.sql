SELECT customer_id,count(*) as Counts
From payment
GROUP BY customer_id

/*SELECT DISTINCT 可與選擇不重複資料*/

/*應收帳款總計*/
SELECT customer_id, sum(amount) as Account_Receivable
FROM payment
Group By customer_id
Order By Account_Receivable Desc

/*用First Name*/
SELECT first_name, sum(amount) as Account_Receivable
FROM payment Left join customer on payment.customer_id=customer.customer_id
Group By first_name
Order By Account_Receivable Desc

/*用First + Last Name*/
SELECT first_name || ' ' || last_name as full_name,
	sum(amount) as Account_Receivable
FROM payment Left join customer on payment.customer_id=customer.customer_id
Group By full_name
Order By Account_Receivable Desc
/*或是*/
SELECT first_name || ' ' || last_name as full_name,
	sum(amount) as Account_Receivable
FROM payment Left join customer USING (customer_id)
Group By full_name
Order By Account_Receivable Desc

	
SELECT first_name || ' ' || last_name as full_name,
	sum(amount) as Account_Receivable
FROM payment Left join customer USING (customer_id)
Group By full_name
HAVING SUM(amount)>=200
Order By Account_Receivable Desc


