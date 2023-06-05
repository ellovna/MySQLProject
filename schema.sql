INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (1, 'BMW', 'X5', 2023, 'red', 12, 'John Smith');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (3, 'Nissan', 'Altima', 2020, 'purple', 13, 'Bill Lee');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (4, 'Ford', 'Bronco', 2023, 'silver', 15, 'Charles Galt');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (5, 'Toyota', 'Highlander', 2019, 'white', 13, 'Leo Dan');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (6, 'Nissan', 'Altima', 2020, 'purple', 13, 'Bill Lee');

INSERT INTO car_accident (car_id, accident_date, location, discription, car_car_id)
VALUES (2, 05/02/2022, 'Nashville', 'scratch', 1);

INSERT INTO car_model (car_id, model_name, car_modelcol, cars_price_list_car_id)
VALUES (2, 'X5', 'red', 658);

INSERT INTO car_owner (car_id, owner_name, owner_contact_number, owner_email)
VALUES (1, 'John Smith', 345545388, 'smith@email.com');

INSERT INTO car_specification (car_id, engine_capacity, transmission, car_car_id)
VALUES (1, 47373, 'automatic', 1);

INSERT INTO car_type (car_id, type_name, car_model_car_id, car_specification_car_id)
VALUES (1, 'SUV', 56456, 23123);

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (20, 'Jeep', 'Wrangler', 2023, 'white', 2992, 'Jessica Alba'); 

INSERT INTO car_accident (car_id, accident_date, location, car_car_id)
VALUES (84, 01/22/1999, 'Palm Beach, Florida', 731723);

INSERT INTO car_owner (car_id, owner_name, owner_contact_number, owner_email, driver_lisence)
VALUES (21, 'Jenniffer Kim', 674348349, 'jenniffer@email.com', 74657458); 

INSERT INTO car_specification (car_id, engine_capacity, transmission, car_car_id)
VALUES (4763, 255.6, 'manual', 4763);

INSERT INTO cars_price_list (car_id, car_brand, car_model, year, price)
VALUES (32, 'Tesla', 'Model 3', 2023, 60000);

INSERT INTO car_type (car_id, type_name, car_model_car_id, car_specification_car_id)
VALUES (67, 'Sedan', 345, 48848); 

INSERT INTO electric_car (car_id, car_brand, battery_capacity, car_car_id, car_type_car_id)
VALUES (363, 'Tesla', 48, 363, 327823); 

INSERT INTO insurance_company (car_id, name, contact_number, email, car_owner_car_id, car_owner_owner_name)
VALUES (74378, 'Geico', 43734893, 'bill@email.com', 322344, 'Bill Smith'); 

INSERT INTO service_center (car_id, center_name, center_location, contact_phone, service_record_record_id)
VALUES (475, 'One stop', '203 Street ave, NY, NY', 474747848, 2181818); 

INSERT INTO service_record (record_id, service_date, service_details, car_id)
VALUES (3737, 05/02/2022, 'oil change', 1616);

INSERT INTO car_accident (car_id, accident_date, location, car_car_id)
VALUES (20, 01/22/2022, 'Palm Beach, Florida', 731723);

INSERT INTO car_owner (car_id, owner_name, owner_contact_number, owner_email, driver_lisence)
VALUES (20, 'Jessica Alba', 674348349, 'jessica@email.com', 74657458); 

INSERT INTO car_specification (car_id, engine_capacity, transmission, car_car_id)
VALUES (20, 255.6, 'automatic', 20);

INSERT INTO cars_price_list (car_id, car_brand, car_model, year, price)
VALUES (20, 'Jeep', 'Wrangler', 2023, 55000);

INSERT INTO car_type (car_id, type_name, car_model_car_id, car_specification_car_id)
VALUES (20, 'Off-road SUV', 34545, 44848); 
 
INSERT INTO insurance_company (car_id, name, contact_number, email, car_owner_car_id, car_owner_owner_name)
VALUES (20, 'Liberty', 1993990, 'liberty@email.com', 74657458, 'Jessica Alba'); 

INSERT INTO service_center (car_id, center_name, center_location, contact_phone, service_record_record_id)
VALUES (20, 'CarCenter', '20 Beach str, NY, NY', 4740001, 2181810); 

INSERT INTO service_record (record_id, service_date, service_details, car_id)
VALUES (3322, 05/02/2023, 'engine inspection', 20);


INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (1664, 'BMW', 'X6', 2021, 'pink', 125475, 'Will White');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (33545, 'Nissan', 'Altima', 2000, 'black', 13, 'Johanna Lee');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (4343, 'Ford', 'Bronco', 1999, 'silver', 1398236, 'Rose Hope');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (5323, 'Toyota', 'Rav4', 2023, 'white', 134564, 'Greg McDonald');

INSERT INTO car (car_id, brand, model, year, color, car_owner_car_id, car_owner_owner_name)
VALUES (6324, 'Nissan', 'Altima', 2022, 'blue', 1223, 'Anthony Snow');

INSERT INTO car_accident (car_id, accident_date, location, car_car_id)
VALUES (1664, 11/02/1999, 'Ny, Ny', 1664); 

INSERT INTO car_accident (car_id, accident_date, location, car_car_id)
VALUES (33545, 07/23/2021, 'Washington DC', 33545);

INSERT INTO car_accident (car_id, accident_date, location, car_car_id)
VALUES (4343, 0, 'no accidents', 4343);

INSERT INTO car_accident (car_id, accident_date, location, car_car_id)
VALUES (5323, 01/01/2023, 'Saratoga Springs, Ny', 5323);

INSERT INTO car_accident (car_id, accident_date, location, car_car_id)
VALUES (6324, 12/31/2019, 'Queens, Ny', 6324);

INSERT INTO cars_price_list (car_id, car_brand, car_model, year, price)
VALUES (6324, 'Nissan', 'Altima', 2022, 15000)








