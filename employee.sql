--step 5
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

--youngest employee
SELECT * FROM employee 
ORDER BY birth_date DESC
LIMIT 1;


--oldest employee
SELECT * FROM employee 
ORDER BY birth_date ASC
LIMIT 1;

--find everyone reports to nancy edwards
--employee id 2
SELECT * FROM employee
WHERE reports_to = 2;

--how many live in Lethbridge
SELECT COUNT(first_name) FROM employee
WHERE city = 'Lethbridge';

