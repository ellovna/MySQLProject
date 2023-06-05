-- 7 statements with aggregate functions and group by and without having--
-- SUM(), MAX(), MIN(), AVG(), COUNT() --

SELECT COUNT(car_id) AS total, brand
FROM car
GROUP BY brand; 

SELECT COUNT(car_id) AS total, year
FROM car
GROUP BY year; 

SELECT location AS accident_location, car_id
FROM car_accident
GROUP BY car_id;

SELECT car_brand, AVG(price) AS average_price
FROM cars_price_list
GROUP BY car_brand;

SELECT SUM(price) AS amount, car_brand
FROM cars_price_list
GROUP BY car_brand;

SELECT car_id, brand, MAX(year)
FROM car
GROUP BY car_id, brand
ORDER BY brand;

SELECT car_brand, MIN(price)
FROM cars_price_list
GROUP BY car_brand;





