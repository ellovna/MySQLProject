ALTER TABLE car
ADD brand_name VARCHAR (45);

ALTER TABLE car_accident
DROP COLUMN discription; 

ALTER TABLE car_accident
MODIFY COLUMN car_car_id INT; 

ALTER TABLE car_owner
ADD driver_lisence INT;

ALTER TABLE cars_price_list
MODIFY COLUMN price INT; 