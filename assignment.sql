Question 1 Goal: Show the total payment amount for each payment date, sorted descending, limited to the top 5.
SELECT 
    paymentDate, 
    SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

Question 2 Goal: Find the average credit limit for each customer, grouped by name and country.
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY 
    customerName, 
    country;
Question 3 Goal: Find the total price of products ordered, grouped by product code and quantity ordered.
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY 
    productCode, 
    quantityOrdered;

Question 4 Goal: Find the highest payment amount for each check number.

SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
