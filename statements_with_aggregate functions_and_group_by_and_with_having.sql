-- 7 statements with aggregate functions and group by and with having--
-- SUM(), MAX(), MIN(), AVG(), COUNT() --

SELECT COUNT(car_id) AS total, brand
FROM car
GROUP BY brand
HAVING COUNT(car_id) > 2;

SELECT car_brand, AVG(price) AS average_price
FROM cars_price_list
GROUP BY car_brand
HAVING AVG(price) > 20000;

SELECT car_id, brand, MAX(year)
FROM car
GROUP BY car_id, brand
HAVING MAX(year) = 2023;

SELECT car_brand, MIN(price)
FROM cars_price_list
GROUP BY car_brand
HAVING MIN(price) < 60000;

SELECT location AS accident_location, car_id
FROM car_accident
GROUP BY car_id
HAVING car_id <= 7000;

SELECT COUNT(car_id) AS total, year
FROM car
GROUP BY year
HAVING total > 2; 

SELECT COUNT(car_id) AS total, brand
FROM car
GROUP BY brand
HAVING brand = 'Jeep'; 
