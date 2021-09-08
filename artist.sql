--insert new artists
INSERT INTO artist(name)
VALUES ('Weezer'),
('DJ Khalid'),
('Los Angeles Azules')

--select 10 artists in reverse 
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

--select 5 in alphabetical order
SELECT * FROM artist
ORDER BY name 
LIMIT 5;

--slsect all name start with 'black'
SELECT * FROM artist
WHERE name LIKE 'Black%';

--select all name with 'black'
SELECT * FROM artist
WHERE name LIKE '%Black%';

