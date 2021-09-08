--orders from USA
SELECT COUNT(billing_country) FROM invoice
WHERE billing_country LIKE 'USA';

--largest total amount
SELECT MAX(total) FROM invoice;

--smallest order amount
SELECT MIN(total) FROM invoice;

--find orders bigger than $5
SELECT * FROM invoice
WHERE total >= 5;

--count how many orders were smaller than 5
SELECT * FROM invoice
WHERE total <= 5;

--how many orders in Ca TX or AZ
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--average total of all orders
SELECT AVG(total) FROM invoice;

--total sum
SELECT SUM(total) FROM invoice;

--update invoice 
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

--delete

ALTER TABLE invoice 
DROP CONSTRAINT invoice_line
WHERE invoice_id = 1;