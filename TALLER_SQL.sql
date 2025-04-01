-- Query 1: firs names of all customers
SELECT 
FIRST_NAME
FROM
CUSTOMER;

-- Query 2: first name; and email of customers
SELECT 
FIRST_NAME,
LAST_NAME,
EMAIL
FROM 
CUSTOMER;

--Query 3: data from all columns of the customer table
SELECT
*
FROM
CUSTOMER;

--Query 4: data return the full name and email of all customers
SELECT 
FIRST_NAME || ' ' || LAST_NAME AS "FULL NAME",
EMAIL
FROM
CUSTOMER;

--Query 5: used order by name, ascending
SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER
ORDER BY LAST_NAME;

--Query 6: used order by name, las_name descending
SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER
ORDER BY FIRST_NAME, LAST_NAME DESC;

-- QUERY 7: Select the first names and the lengths of the first names. 
SELECT 
FIRST_NAME, LENGTH(FIRST_NAME) AS NAME_LENGTH
FROM CUSTOMER
ORDER BY NAME_LENGTH DESC;

--QUERY 8;Use the WHERE clause to find the last name and first name of customers whose first 
SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER 
WHERE FIRST_NAME ='Jamie';

--QUERY 9: Use a WHERE clause with the AND logical operator to find customers whose first name 
SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER 
WHERE FIRST_NAME ='Jamie' AND LAST_NAME = 'Rice';

--QUERY 10:Use a WHERE clause with an OR operator to find customers whose last name 
SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER 
WHERE LAST_NAME ='Rodriguez' OR FIRST_NAME = 'Adam';

--QUERY 11: Use the WHERE clause with the IN operator to find customers whose first names are

SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER 
WHERE FIRST_NAME IN ('Ann','Anne','Annie');

--QUERY 12: . Use the LIKE operator in the WHERE clause to find customers whose first names start
SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER 
WHERE FIRST_NAME LIKE 'Ann%';

--QUERY 13: FIND COSTUMER WHOSE FIRST NAMES START WITH THE LETTER A AND CONTAIN 3 TO 5 CHARACTERS 
SELECT 
FIRST_NAME, LENGTH(FIRST_NAME)  NAME_LENGTH
FROM CUSTOMER
WHERE FIRST_NAME LIKE 'A%'
AND LENGTH(FIRST_NAME)BETWEEN 3 AND 5
ORDER BY NAME_LENGTH;

--QUERY 14:Find customers whose first names start with Bra and whose last names are not Motley. 
SELECT 
LAST_NAME, FIRST_NAME
FROM CUSTOMER 
WHERE FIRST_NAME LIKE 'Bra%'
AND LAST_NAME NOT LIKE 'Motley';

--QUERY 15: Use the AND operator in the WHERE clause to find films with a length greater than 180 
SELECT TITLE, LENGTH,RENTAL_RATE
FROM FILM
WHERE LENGTH > 180 
AND RENTAL_RATE <1;

--QUERY 16: Use the OR operator in the WHERE clause to find films with a rental rate of 0.99 or 2.99. 
SELECT TITLE, RENTAL_RATE
FROM FILM
WHERE RENTAL_RATE = 0.99
OR RENTAL_RATE = 2.99;

--QUERY 17: Use the LIMIT clause to retrieve the first five films sorted by film_id. Retrieve the film_id, 
SELECT FILM_ID, TITLE, RELEASE_YEAR
FROM FILM
ORDER BY FILM_ID
LIMIT 5;

--QUERY 18: . Retrieve 4 films starting from the fourth one, ordered by film_id. Use the LIMIT clause to 
SELECT FILM_ID, TITLE, RELEASE_YEAR
FROM FILM
ORDER BY FILM_ID
LIMIT 4 OFFSET 3;

-- QUERY 19: Use the LIMIT clause to retrieve the top 10 most expensive films by rental rate. 
SELECT FILM_ID, TITLE, RELEASE_YEAR
FROM FILM
ORDER BY RENTAL_RATE DESC
LIMIT 10;

--QUERY 20: Use the FETCH clause to select the first film sorted by title in ascending order. 
database system
SELECT FILM_ID, TITLE
FROM FILM
ORDER BY TITLE ASC
FETCH FIRST 1 ROWS ONLY;

--QUERY 21: Use the FETCH clause to select the first five films sorted by title in ascending order. 
SELECT FILM_ID, TITLE
FROM FILM
ORDER BY TITLE ASC
FETCH FIRST 5 ROWS ONLY;

--QUERY 22: Use the IN operator to retrieve information about the films with IDs 1, 2, and 3. 
SELECT FILM_ID, TITLE
FROM FILM
WHERE FILM_ID IN (1,2,3);

--QUERY 23: Use the IN operator to find the first name and last name of actors whose last names are
SELECT FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE LAST_NAME IN ('Allen', 'Chase', 'Davis')
ORDER BY LAST_NAME ASC;

--QUERY 24: Use the IN operator to find the id, amount, and date of payments whose payment dates.
SELECT
PAYMENT_ID, AMOUNT, PAYMENT_DATE::DATE AS PAYMENT_DATE
FROM payment
WHERE PAYMENT_DATE::DATE IN ('2007-02-15','2007-02-16');

--QUERY 25: Use the BETWEEN operator to retrieve payments with payment_id between 17503 and 17505
SELECT 
PAYMENT_ID, AMOUNT
FROM PAYMENT
WHERE PAYMENT_ID BETWEEN 17503 AND 17505
ORDER BY PAYMENT_ID;

--QUERY 26: . Use the NOT BETWEEN operator to find payments with payment_id not between 17503 and 17505
SELECT 
PAYMENT_ID, AMOUNT
FROM PAYMENT
WHERE PAYMENT_ID NOT BETWEEN 17503 AND 17505
ORDER BY PAYMENT_ID;

--QUERY 27: Use the BETWEEN operator to find payments whose payment dates are between 2007-
02-15 and 2007-02-20
SELECT
PAYMENT_ID, AMOUNT, PAYMENT_DATE 
FROM payment
WHERE PAYMENT_DATE BETWEEN '2007-02-15' AND '2007-02-20'
AND AMOUNT > 10
ORDER BY PAYMENT_DATE

--QUERY 28: Use the LIKE operator to find customers whose first names contain the string 'er'. 
name
SELECT FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE FIRST_NAME LIKE '%er%'
ORDER BY FIRST_NAME;

--QUERY 29:. Use the LIKE operator with a pattern that contains both the percent (%) and underscore 
SELECT FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE FIRST_NAME LIKE '%her%'
ORDER BY FIRST_NAME;

--QUERY 30: Use the NOT LIKE operator to find customers whose first names do not begin with 'Jen'. 
SELECT FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE FIRST_NAME NOT LIKE 'Jen%'
ORDER BY FIRST_NAME;

--QUERY 31: . Use the ILIKE operator to find customers whose first names begin with 'BAR' (caseinsensitive matching). Retrieve the first name and last name of these custom
SELECT FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE FIRST_NAME ILIKE 'BAR%';

--QUERY 32:. Use the IS NULL operator to find addresses from the address table where the address2 
FROM ADDRESS
WHERE ADDRESS2 IS NULL;

--QUERY 33: Use the IS NOT NULL operator to retrieve addresses where the address2 column is not null.
SELECT ADDRESS, ADDRESS2
FROM ADDRESS
WHERE ADDRESS2 IS NOT NULL;







