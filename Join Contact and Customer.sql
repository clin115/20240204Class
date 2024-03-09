SELECT Contact_id, Customer_Name, Phone_Number, EMAIL
FROM Contact 
	LEFT JOIN Customer 
	ON Contact.customer_ID = Customer.Customer_ID
	/*WHERE Customer_Name = 'Zeratul'*/

