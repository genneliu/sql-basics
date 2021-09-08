--orders from USA
SELECT COUNT(billing_country) FROM invoice
WHERE billing_country LIKE 'USA';

--largest total amount
SELECT MAX(total) FROM invoice;

--smallest order amount
SELECT MIN(total) FROM invoice;

--find 