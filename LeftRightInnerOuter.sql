SELECT *
FROM car INNER JOIN car_accident
ON car.car_id = car_accident.car_id;


SELECT *
FROM car LEFT JOIN car_accident
ON car.car_id = car_accident.car_id;

SELECT * FROM car
LEFT JOIN car_accident
ON car_accident.car_id = car.car_id
LEFT JOIN car_owner
ON car_owner.car_id = car.car_id



